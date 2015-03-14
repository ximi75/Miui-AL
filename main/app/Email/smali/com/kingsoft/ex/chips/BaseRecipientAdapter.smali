.class public abstract Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseRecipientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/kingsoft/ex/chips/AccountSpecifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilterResult;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryListQuery;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$PhotoQuery;,
        Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    }
.end annotation


# static fields
.field static final ALLOWANCE_FOR_DUPLICATES:I = 0x5

.field private static final BUFFER_SIZE:I = 0x4000

.field private static final DEBUG:Z = true

.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa

.field private static final MESSAGE_SEARCH_PENDING:I = 0x1

.field private static final MESSAGE_SEARCH_PENDING_DELAY:I = 0x3e8

.field private static final PHOTO_CACHE_SIZE:I = 0x14

.field static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field public static final QUERY_TYPE_EMAIL:I = 0x0

.field public static final QUERY_TYPE_PHONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseRecipientAdapter"

.field public static mContext:Landroid/content/Context;

.field public static runingTask:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentConstraint:Ljava/lang/CharSequence;

.field private final mDelayedMessageHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesUpdatedObserver:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

.field private mEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExistingDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGALHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;

.field private final mHandler:Landroid/os/Handler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLocalContact:Lcom/kingsoft/mail/ui/LocalContact;

.field private mNonAggregatedEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoCacheMap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private mPreferredMaxResultCount:I

.field private final mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

.field private final mQueryType:I

.field private mRemainingDirectoryCount:I

.field private mTempEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    sput v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->runingTask:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "queryMode"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 787
    const/16 v0, 0xa

    invoke-direct {p0, p2, v0, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 788
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 0
    .param p1, "queryMode"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "preferredMaxResultCount"    # I

    .prologue
    .line 792
    invoke-direct {p0, p2, p3, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 793
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 777
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 778
    new-instance v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;

    invoke-direct {v0, p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mGALHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$GALHandler;

    .line 780
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I

    .prologue
    .line 783
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 784
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I
    .param p3, "queryMode"    # I

    .prologue
    .line 796
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 702
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    .line 703
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mHandler:Landroid/os/Handler;

    .line 767
    new-instance v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    .line 797
    sput-object p1, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    .line 798
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 799
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 801
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    .line 802
    iput p3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mQueryType:I

    .line 803
    if-nez p3, :cond_0

    .line 804
    sget-object v0, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    .line 811
    :goto_0
    return-void

    .line 805
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 806
    sget-object v0, Lcom/kingsoft/ex/chips/Queries;->PHONE:Lcom/kingsoft/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    goto :goto_0

    .line 808
    :cond_1
    sget-object v0, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->cacheCurrentEntries()V

    return-void
.end method

.method static synthetic access$1000(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/support/v4/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/LinkedHashMap;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/Set;

    .prologue
    .line 86
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$702(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->clearTempEntries()V

    return-void
.end method

.method static synthetic access$900(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p1, "x1"    # Ljava/util/LinkedHashMap;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;

    return-object p1
.end method

.method private cacheCurrentEntries()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    .line 1033
    return-void
.end method

.method private clearTempEntries()V
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    .line 1037
    return-void
.end method

.method private constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    .local p2, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    const/4 v7, 0x0

    .line 987
    .local v7, "validEntryCount":I
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 989
    .local v5, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 990
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 991
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 992
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/ex/chips/RecipientEntry;

    .line 993
    .local v1, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    invoke-direct {p0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 995
    add-int/lit8 v7, v7, 0x1

    .line 991
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 997
    .end local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_1
    iget v8, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v7, v8, :cond_0

    .line 1001
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .end local v3    # "i":I
    .end local v5    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    .end local v6    # "size":I
    :cond_2
    iget v8, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-gt v7, v8, :cond_3

    .line 1002
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/ex/chips/RecipientEntry;

    .line 1003
    .restart local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    iget v8, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    if-le v7, v8, :cond_4

    .line 1013
    .end local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_3
    return-object v0

    .line 1006
    .restart local v1    # "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-direct {p0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->tryFetchPhoto(Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 1009
    add-int/lit8 v7, v7, 0x1

    .line 1010
    goto :goto_1
.end method

.method private doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I
    .param p3, "directoryId"    # Ljava/lang/Long;

    .prologue
    .line 1169
    const/4 v0, 0x0

    return-object v0
.end method

.method private fetchPhotoAsync(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .locals 3
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p2, "photoThumbnailUri"    # Landroid/net/Uri;

    .prologue
    .line 1066
    new-instance v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Landroid/net/Uri;Lcom/kingsoft/ex/chips/RecipientEntry;)V

    .line 1119
    .local v0, "photoLoadTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[B>;"
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1120
    return-void
.end method

.method private static putOneEntry(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    .locals 14
    .param p0, "entry"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;
    .param p1, "isAggregatedEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;",
            "Z",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p2, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    .local p3, "nonAggregatedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .local p4, "existingDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 951
    if-nez p1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v4, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v6, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v8, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v10, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v11, 0x1

    iget-boolean v12, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->isGalContact:Z

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 957
    :cond_1
    iget-wide v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 959
    iget-wide v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 961
    .local v13, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v4, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v6, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v8, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v10, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v11, 0x1

    iget-boolean v12, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->isGalContact:Z

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 967
    .end local v13    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .restart local v13    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    iget-object v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayNameSource:I

    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    iget v4, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    iget-object v5, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v6, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    iget-wide v8, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    iget-object v10, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v11, 0x1

    iget-boolean v12, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->isGalContact:Z

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    iget-wide v1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "directoryCursor"    # Landroid/database/Cursor;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 855
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 856
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v7, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    const/4 v8, 0x0

    .line 858
    .local v8, "preferredDirectory":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 859
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 864
    .local v2, "id":J
    const-wide/16 v11, 0x1

    cmp-long v11, v2, v11

    if-eqz v11, :cond_0

    .line 868
    new-instance v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    invoke-direct {v6}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;-><init>()V

    .line 869
    .local v6, "params":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    const/4 v11, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "packageName":Ljava/lang/String;
    const/4 v11, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 873
    .local v9, "resourceId":I
    iput-wide v2, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    .line 874
    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->displayName:Ljava/lang/String;

    .line 876
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    .line 878
    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    .line 880
    if-eqz v5, :cond_1

    if-eqz v9, :cond_1

    .line 882
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 884
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    .line 885
    iget-object v11, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryType:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 886
    const-string/jumbo v11, "BaseRecipientAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot resolve directory name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .end local v10    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v12, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v6, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->accountType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 901
    move-object v8, v6

    goto/16 :goto_0

    .line 889
    :catch_0
    move-exception v1

    .line 890
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "BaseRecipientAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot resolve directory name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 903
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 907
    .end local v2    # "id":J
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "params":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    .end local v9    # "resourceId":I
    :cond_3
    if-eqz v8, :cond_4

    .line 908
    const/4 v11, 0x1

    invoke-interface {v7, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 911
    :cond_4
    return-object v7
.end method

.method private tryFetchPhoto(Lcom/kingsoft/ex/chips/RecipientEntry;)V
    .locals 5
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 1044
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    .line 1045
    .local v1, "photoThumbnailUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1046
    iget-object v2, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1047
    .local v0, "photoBytes":[B
    if-eqz v0, :cond_1

    .line 1048
    invoke-virtual {p1, v0}, Lcom/kingsoft/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 1058
    .end local v0    # "photoBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 1052
    .restart local v0    # "photoBytes":[B
    :cond_1
    const-string/jumbo v2, "BaseRecipientAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No photo cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Fetch one asynchronously"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1055
    invoke-direct {p0, p1, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->fetchPhotoAsync(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private updateEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p1, "newEntries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    .line 1027
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntriesUpdatedObserver:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    invoke-interface {v0, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;->onChanged(Ljava/util/List;)V

    .line 1028
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 1029
    return-void
.end method


# virtual methods
.method protected fetchPhoto(Lcom/kingsoft/ex/chips/RecipientEntry;Landroid/net/Uri;)V
    .locals 8
    .param p1, "entry"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p2, "photoThumbnailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1124
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1125
    .local v6, "photoBytes":[B
    if-eqz v6, :cond_1

    .line 1126
    invoke-virtual {p1, v6}, Lcom/kingsoft/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1131
    .local v7, "photoCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1133
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1134
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1135
    invoke-virtual {p1, v6}, Lcom/kingsoft/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 1136
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mPhotoCacheMap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p2, v6}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 814
    sget-object v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 1183
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 1223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1226
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1228
    .local v5, "rect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1230
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1231
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 1234
    .local v2, "halfWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 1236
    .local v1, "halfHeight":I
    int-to-float v6, v2

    int-to-float v7, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1239
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1241
    invoke-virtual {v0, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1243
    return-object v3
.end method

.method protected getDefaultPhotoResource()I
    .locals 1

    .prologue
    .line 1347
    const v0, 0x7f02018b

    return v0
.end method

.method protected getDestinationId()I
    .locals 1

    .prologue
    .line 1364
    const v0, 0x1020014

    return v0
.end method

.method protected getDestinationTypeId()I
    .locals 1

    .prologue
    .line 1372
    const v0, 0x1020015

    return v0
.end method

.method protected getDisplayNameId()I
    .locals 1

    .prologue
    .line 1355
    const v0, 0x1020016

    return v0
.end method

.method protected getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mTempEntries:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntries:Ljava/util/List;

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 836
    new-instance v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Lcom/kingsoft/ex/chips/BaseRecipientAdapter$1;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1193
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 1338
    const v0, 0x7f040043

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getEntryType()I

    move-result v0

    return v0
.end method

.method public getMatchingRecipients(Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPhotoId()I
    .locals 1

    .prologue
    .line 1380
    const v0, 0x1020006

    return v0
.end method

.method public getQueryType()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mQueryType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/ex/chips/RecipientEntry;

    .line 1250
    .local v11, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 1251
    .local v9, "displayName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v5

    .line 1263
    .local v5, "destination":Ljava/lang/String;
    move-object/from16 v13, p2

    .line 1267
    .local v13, "itemView":Landroid/view/View;
    if-nez v13, :cond_2

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getItemLayout()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 1269
    new-instance v16, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Landroid/view/View;)V

    .line 1270
    .local v16, "viewCache":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1274
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getDisplayNameId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1276
    .local v10, "displayNameView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getDestinationId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1278
    .local v8, "destinationView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getDestinationTypeId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1280
    .local v7, "destinationTypeView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getPhotoId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 1281
    .local v12, "imageView":Landroid/widget/ImageView;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1282
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1288
    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1290
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1291
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    :goto_2
    if-eqz v7, :cond_0

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    move-object/from16 v17, v0

    sget-object v18, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestinationType()I

    move-result v19

    invoke-virtual {v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestinationLabel()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Lcom/kingsoft/ex/chips/Queries$Query;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1301
    .local v6, "destinationType":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    .end local v6    # "destinationType":Ljava/lang/CharSequence;
    :cond_0
    if-eqz v12, :cond_1

    .line 1307
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1308
    invoke-virtual {v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v15

    .line 1309
    .local v15, "photoBytes":[B
    if-eqz v15, :cond_5

    .line 1310
    const/16 v17, 0x0

    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1312
    .local v14, "photo":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1313
    .local v4, "croppedPhotoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1326
    .end local v4    # "croppedPhotoBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "photo":Landroid/graphics/Bitmap;
    .end local v15    # "photoBytes":[B
    :cond_1
    :goto_3
    return-object v13

    .line 1272
    .end local v7    # "destinationTypeView":Landroid/widget/TextView;
    .end local v8    # "destinationView":Landroid/widget/TextView;
    .end local v10    # "displayNameView":Landroid/widget/TextView;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    .end local v16    # "viewCache":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;

    .restart local v16    # "viewCache":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$ViewCache;
    goto/16 :goto_0

    .line 1284
    .restart local v7    # "destinationTypeView":Landroid/widget/TextView;
    .restart local v8    # "destinationView":Landroid/widget/TextView;
    .restart local v10    # "displayNameView":Landroid/widget/TextView;
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    :cond_3
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f110022

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 1293
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1315
    .restart local v15    # "photoBytes":[B
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getDefaultPhotoResource()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1316
    iget-object v0, v11, Lcom/kingsoft/ex/chips/RecipientEntry;->mybitmapBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1317
    iget-object v0, v11, Lcom/kingsoft/ex/chips/RecipientEntry;->mybitmapBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/kingsoft/ex/chips/RecipientEntry;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public registerUpdateObserver(Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mEntriesUpdatedObserver:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;

    .line 1022
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mAccount:Landroid/accounts/Account;

    .line 828
    return-void
.end method

.method protected startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 920
    .local p2, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 923
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 924
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 925
    .local v2, "params":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    iput-object p1, v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->constraint:Ljava/lang/CharSequence;

    .line 926
    iget-object v3, v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    if-nez v3, :cond_0

    .line 927
    new-instance v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-direct {v3, p0, v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;-><init>(Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V

    iput-object v3, v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    .line 929
    :cond_0
    iget-object v3, v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->setLimit(I)V

    .line 930
    iget-object v3, v2, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->filter:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;

    invoke-virtual {v3, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryFilter;->filter(Ljava/lang/CharSequence;)V

    .line 923
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v2    # "params":Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;
    :cond_1
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I

    .line 937
    iget-object v3, p0, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 938
    return-void
.end method
