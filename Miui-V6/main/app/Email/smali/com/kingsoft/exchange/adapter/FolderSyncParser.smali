.class public Lcom/kingsoft/exchange/adapter/FolderSyncParser;
.super Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/FolderSyncParser$1;,
        Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;
    }
.end annotation


# static fields
.field private static final FIXUP_CHILD_ID_COLUMN:I = 0x0

.field private static final FIXUP_CHILD_PROJECTION:[Ljava/lang/String;

.field private static final FIXUP_PARENT_FLAGS_COLUMN:I = 0x1

.field private static final FIXUP_PARENT_ID_COLUMN:I = 0x0

.field private static final FIXUP_PARENT_PROJECTION:[Ljava/lang/String;

.field private static final HAS_CHILDREN_FLAGS:I = 0x3

.field private static final MAILBOX_ID_COLUMNS_ID:I = 0x0

.field private static final MAILBOX_ID_COLUMNS_PARENT_SERVER_ID:I = 0x2

.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_ID_COLUMNS_SERVER_ID:I = 0x1

.field private static final MAILBOX_STATE_INTERVAL:I = 0x1

.field private static final MAILBOX_STATE_LOOKBACK:I = 0x2

.field private static final MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_STATE_SELECTION:Ljava/lang/String; = "accountKey=? AND (syncInterval!=-1 OR syncLookback!=0)"

.field private static final MAILBOX_STATE_SERVER_ID:I = 0x0

.field private static final MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

.field private static final NO_MAILBOX_STRING:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "FolderSyncParser"

.field private static final UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

.field private static final WHERE_ACCOUNT_KEY:Ljava/lang/String; = "accountKey=?"

.field private static final WHERE_DISPLAY_NAME_AND_ACCOUNT:Ljava/lang/String; = "displayName=? and accountKey=?"

.field private static final WHERE_PARENT_SERVER_ID_AND_ACCOUNT:Ljava/lang/String; = "parentServerId=? and accountKey=?"

.field private static final WHERE_SERVER_ID_AND_ACCOUNT:Ljava/lang/String; = "serverId=? and accountKey=?"


# instance fields
.field mAccountId:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAccountIdAsString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBindArguments:[Ljava/lang/String;

.field private final mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

.field private mInitialSync:Z

.field private final mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mParentFixupsNeeded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusOnly:Z

.field private mSyncKeyChanged:Z

.field final mSyncOptionsMap:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    .line 76
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "serverId"

    aput-object v1, v0, v4

    const-string/jumbo v1, "parentServerId"

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 128
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->FIXUP_PARENT_PROJECTION:[Ljava/lang/String;

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->FIXUP_CHILD_PROJECTION:[Ljava/lang/String;

    .line 143
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->NO_MAILBOX_STRING:Ljava/lang/String;

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    .line 173
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    const-string/jumbo v1, "parentKey"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "serverId"

    aput-object v1, v0, v5

    const-string/jumbo v1, "syncInterval"

    aput-object v1, v0, v4

    const-string/jumbo v1, "syncLookback"

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p5, "statusOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 180
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 181
    iget-wide v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 182
    iput-boolean p5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "adapter"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "adapter"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;
    .param p3, "statusOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter;)V

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 192
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 193
    iget-wide v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 194
    iput-boolean p3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    .line 195
    return-void
.end method

.method private addMailboxOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "parentServerId"    # Ljava/lang/String;
    .param p4, "mailboxType"    # I
    .param p5, "fromServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Landroid/content/ContentValues;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 397
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "displayName"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    if-eqz p5, :cond_4

    .line 399
    const-string/jumbo v4, "serverId"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string/jumbo v4, "0"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 402
    sget-object v2, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->NO_MAILBOX_STRING:Ljava/lang/String;

    .line 403
    .local v2, "parentId":Ljava/lang/String;
    const-string/jumbo v4, "parentKey"

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    :goto_0
    const-string/jumbo v4, "parentServerId"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .end local v2    # "parentId":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "accountKey"

    iget-wide v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string/jumbo v4, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    if-eqz p5, :cond_5

    invoke-static {p4}, Lcom/android/emailcommon/provider/Mailbox;->getDefaultSyncStateForType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    .line 419
    .local v3, "shouldSync":Z
    :goto_2
    const-string/jumbo v5, "syncInterval"

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, "flags":I
    const/16 v4, 0x40

    if-gt p4, v4, :cond_0

    .line 424
    or-int/lit8 v1, v1, 0x48

    .line 427
    :cond_0
    const/4 v4, 0x1

    if-eq p4, v4, :cond_1

    const/4 v4, 0x6

    if-eq p4, v4, :cond_1

    const/4 v4, 0x7

    if-eq p4, v4, :cond_1

    if-nez p4, :cond_2

    .line 429
    :cond_1
    or-int/lit8 v1, v1, 0x10

    .line 431
    :cond_2
    const-string/jumbo v4, "flags"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string/jumbo v5, "flagVisible"

    const/16 v4, 0x40

    if-ge p4, v4, :cond_7

    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 436
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, p4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 440
    return-void

    .line 405
    .end local v1    # "flags":I
    .end local v3    # "shouldSync":Z
    :cond_3
    move-object v2, p3

    .line 406
    .restart local v2    # "parentId":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    .end local v2    # "parentId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "serverId"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v4, "parentKey"

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    const-string/jumbo v4, "parentServerId"

    sget-object v5, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->NO_MAILBOX_STRING:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v4, "totalCount"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 418
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 419
    .restart local v3    # "shouldSync":Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 434
    .restart local v1    # "flags":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private addParser()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 450
    .local v2, "serverId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 451
    .local v3, "parentId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 453
    .local v6, "type":I
    :goto_0
    const/16 v0, 0x1cf

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 454
    iget v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 472
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 456
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 457
    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v6

    .line 461
    goto :goto_0

    .line 464
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 465
    goto :goto_0

    .line 468
    :pswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 469
    goto :goto_0

    .line 475
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 476
    sget-object v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_TYPE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 477
    .local v4, "mailboxType":I
    if-eq v4, v7, :cond_2

    .line 478
    const/16 v0, 0x8

    if-ne v6, v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 481
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->addMailboxOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 484
    .end local v4    # "mailboxType":I
    :cond_2
    return-void

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private changesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    :goto_0
    const/16 v0, 0x1ce

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 553
    iget v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1cf

    if-ne v0, v1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->addParser()V

    goto :goto_0

    .line 555
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1d0

    if-ne v0, v1, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->deleteParser()V

    goto :goto_0

    .line 557
    :cond_1
    iget v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1d1

    if-ne v0, v1, :cond_2

    .line 558
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->updateParser()V

    goto :goto_0

    .line 559
    :cond_2
    iget v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1d7

    if-ne v0, v1, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 565
    :cond_4
    return-void
.end method

.method private deleteParser()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    :goto_0
    const/16 v5, 0x1d0

    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 286
    iget v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v5, :pswitch_data_0

    .line 311
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 288
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "serverId":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 292
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    const-string/jumbo v5, "FolderSyncParser"

    const-string/jumbo v6, "Deleting %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 295
    .local v1, "mailboxId":J
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v5, v6, v7, v1, v2}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 300
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "parentId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v1    # "mailboxId":J
    .end local v3    # "parentId":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 314
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v4    # "serverId":Ljava/lang/String;
    :cond_1
    return-void

    .line 286
    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_0
    .end packed-switch
.end method

.method private doParentFixups()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    :cond_0
    return-void

    .line 627
    :cond_1
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .line 628
    .local v6, "bindArguments":[Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v3, v6, v2

    .line 629
    new-instance v11, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 631
    .local v11, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 633
    .local v19, "parentServerId":Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v19, v6, v2

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->FIXUP_PARENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "serverId=? and accountKey=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 636
    .local v15, "parentCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 643
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 645
    .local v17, "parentId":J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 651
    .local v16, "parentFlags":I
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->FIXUP_CHILD_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "parentServerId=? and accountKey=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 658
    .local v8, "childCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 659
    .local v12, "hasChildren":Z
    if-eqz v8, :cond_5

    .line 662
    :try_start_1
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 664
    const-string/jumbo v2, "parentKey"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 665
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 666
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 667
    .local v9, "childId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 670
    const/4 v12, 0x1

    .line 671
    goto :goto_1

    .line 651
    .end local v8    # "childCursor":Landroid/database/Cursor;
    .end local v9    # "childId":J
    .end local v12    # "hasChildren":Z
    .end local v16    # "parentFlags":I
    .end local v17    # "parentId":J
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 673
    .restart local v8    # "childCursor":Landroid/database/Cursor;
    .restart local v12    # "hasChildren":Z
    .restart local v16    # "parentFlags":I
    .restart local v17    # "parentId":J
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_5
    if-eqz v12, :cond_7

    .line 681
    or-int/lit8 v14, v16, 0x3

    .line 685
    .local v14, "newFlags":I
    :goto_2
    move/from16 v0, v16

    if-eq v14, v0, :cond_6

    .line 686
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 687
    const-string/jumbo v2, "flags"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->flushOperations()V

    goto/16 :goto_0

    .line 673
    .end local v14    # "newFlags":I
    :catchall_1
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 683
    :cond_7
    and-int/lit8 v14, v16, -0x4

    .restart local v14    # "newFlags":I
    goto :goto_2
.end method

.method private flushOperations()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 572
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 576
    .local v2, "transactionSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    .local v1, "subOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 579
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 584
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 585
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 586
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    if-ne v2, v8, :cond_2

    .line 589
    const-string/jumbo v3, "FolderSyncParser"

    const-string/jumbo v4, "Single operation transaction too large"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 590
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Single operation transaction too large"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_2
    const-string/jumbo v3, "FolderSyncParser"

    const-string/jumbo v4, "Transaction operation count %d too large, halving..."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 594
    div-int/lit8 v2, v2, 0x2

    .line 595
    if-ge v2, v8, :cond_1

    .line 596
    const/4 v2, 0x1

    goto :goto_1

    .line 598
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    :catch_1
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FolderSyncParser"

    const-string/jumbo v4, "RemoteException in commit"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 600
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "RemoteException in commit"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 602
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v3, "FolderSyncParser"

    const-string/jumbo v4, "OperationApplicationException in commit"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 603
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "OperationApplicationException in commit"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 274
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 275
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "serverId=? and accountKey=?"

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private updateParser()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v5, 0x0

    .line 493
    .local v5, "serverId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 494
    .local v2, "displayName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 495
    .local v4, "parentId":Ljava/lang/String;
    :goto_0
    const/16 v6, 0x1d1

    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 496
    iget v6, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v6, :pswitch_data_0

    .line 507
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 498
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 499
    goto :goto_0

    .line 501
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 502
    goto :goto_0

    .line 504
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 505
    goto :goto_0

    .line 513
    :cond_0
    if-eqz v5, :cond_5

    if-nez v2, :cond_1

    if-eqz v4, :cond_5

    .line 514
    :cond_1
    invoke-direct {p0, v5}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 517
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 518
    const-string/jumbo v6, "FolderSyncParser"

    const-string/jumbo v7, "Updating %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 519
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "parentServerId"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 524
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_1
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "oldParentId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 530
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_2
    if-eqz v2, :cond_3

    .line 534
    const-string/jumbo v6, "displayName"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "oldParentId":Ljava/lang/String;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 544
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 526
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    const-string/jumbo v6, "parentKey"

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 541
    .end local v1    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    return-void
.end method

.method public commit()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    if-eqz v2, :cond_0

    .line 703
    new-instance v15, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 704
    .local v15, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "syncKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/Account;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v15    # "cv":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v2, :cond_2

    .line 711
    sget-object v13, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    .local v13, "arr$":[I
    array-length v0, v13

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget v6, v13, v16

    .line 712
    .local v6, "requiredType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mCreatedFolderTypes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/android/emailcommon/provider/Mailbox;->getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->addMailboxOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 711
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 720
    .end local v6    # "requiredType":I
    .end local v13    # "arr$":[I
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->flushOperations()V

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->doParentFixups()V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Sync Issues"

    aput-object v4, v2, v3

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 729
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v10, "displayName=? and accountKey=?"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 732
    .local v14, "c":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 733
    .local v20, "parentServerId":Ljava/lang/String;
    const-wide/16 v17, 0x0

    .line 735
    .local v17, "id":J
    if-eqz v14, :cond_3

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 736
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 737
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 740
    :cond_3
    if-eqz v14, :cond_4

    .line 741
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 744
    :cond_4
    if-eqz v20, :cond_5

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "parentServerId=? and accountKey=?"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 753
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v2, :cond_6

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->restoreMailboxSyncOptions()V

    .line 756
    :cond_6
    return-void

    .line 740
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_7

    .line 741
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method public parse()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, "res":Z
    const/4 v3, 0x0

    .line 202
    .local v3, "resetFolders":Z
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "0"

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    .line 203
    iget-boolean v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v5, :cond_1

    .line 205
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v9, "accountKey=?"

    new-array v10, v7, [Ljava/lang/String;

    iget-object v11, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    :cond_1
    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/16 v8, 0x1d6

    if-eq v5, v8, :cond_5

    .line 209
    new-instance v5, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;

    invoke-direct {v5, p0}, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;)V

    throw v5

    :cond_2
    move v5, v6

    .line 202
    goto :goto_0

    .line 237
    .local v0, "dupes":I
    .local v4, "status":I
    :cond_3
    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    invoke-static {v4}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 239
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->wipe()V

    .line 241
    const/4 v2, 0x1

    .line 242
    const/4 v3, 0x1

    .line 210
    .end local v0    # "dupes":I
    .end local v4    # "status":I
    :cond_5
    :goto_1
    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_10

    .line 211
    iget v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1cc

    if-ne v5, v8, :cond_a

    .line 212
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 216
    .restart local v4    # "status":I
    const/4 v0, 0x0

    .line 217
    .restart local v0    # "dupes":I
    iget-wide v8, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_6

    .line 218
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent;->ACCOUNT_CHECK_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    invoke-virtual {v5, v8, v9, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 222
    :cond_6
    if-lez v0, :cond_7

    .line 223
    const-string/jumbo v5, "FolderSyncParser"

    const-string/jumbo v8, "Duplicate mailboxes found for account %d: %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v5, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 225
    const/16 v4, 0x9

    .line 227
    :cond_7
    if-eq v4, v7, :cond_5

    .line 230
    invoke-static {v4}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v4}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    .line 233
    :cond_8
    sget-object v5, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FolderSync: Unknown status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v6}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    new-instance v5, Lcom/kingsoft/exchange/CommandStatusException;

    invoke-direct {v5, v4}, Lcom/kingsoft/exchange/CommandStatusException;-><init>(I)V

    throw v5

    .line 246
    :cond_9
    new-instance v5, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;

    const-string/jumbo v6, "Folder status error"

    invoke-direct {v5, p0, v6}, Lcom/kingsoft/exchange/adapter/Parser$EasParserException;-><init>(Lcom/kingsoft/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v5

    .line 249
    .end local v0    # "dupes":I
    .end local v4    # "status":I
    :cond_a
    iget v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1d2

    if-ne v5, v8, :cond_c

    .line 250
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "newKey":Ljava/lang/String;
    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    .line 252
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncKeyChanged:Z

    .line 253
    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v1, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    move v5, v6

    .line 252
    goto :goto_2

    .line 255
    .end local v1    # "newKey":Ljava/lang/String;
    :cond_c
    iget v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1ce

    if-ne v5, v8, :cond_f

    .line 256
    iget-boolean v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-eqz v5, :cond_e

    .line 264
    :cond_d
    :goto_3
    return v2

    .line 257
    :cond_e
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->changesParser()V

    goto/16 :goto_1

    .line 259
    :cond_f
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_1

    .line 261
    :cond_10
    iget-boolean v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-nez v5, :cond_d

    .line 262
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->commit()V

    goto :goto_3
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    return-void
.end method

.method restoreMailboxSyncOptions()V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 368
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 370
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 371
    .local v3, "serverId":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;

    .line 372
    .local v2, "options":Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;
    const-string/jumbo v4, "syncInterval"

    # getter for: Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I
    invoke-static {v2}, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->access$100(Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string/jumbo v4, "syncLookback"

    # getter for: Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I
    invoke-static {v2}, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;->access$200(Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 376
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "serverId=? and accountKey=?"

    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "options":Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;
    .end local v3    # "serverId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    throw v4

    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 382
    return-void
.end method

.method saveMailboxSyncOptions()V
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 346
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 347
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "accountKey=? AND (syncInterval!=-1 OR syncLookback!=0)"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 351
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/kingsoft/exchange/adapter/FolderSyncParser$SyncOptions;-><init>(IILcom/kingsoft/exchange/adapter/FolderSyncParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_1
    return-void
.end method

.method protected wipe()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 784
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->saveMailboxSyncOptions()V

    .line 792
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string/jumbo v2, "0"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 796
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 797
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "syncKey"

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 800
    return-void
.end method
