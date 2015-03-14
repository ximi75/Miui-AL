.class public Lcom/android/emailcommon/provider/Mailbox;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Mailbox.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_KEY_PROJECTION_ACCOUNT_KEY_COLUMN:I = 0x0

.field public static final CHECK_INTERVAL_NEVER:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_INTERVAL_PING:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_INTERVAL_PUSH:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_INTERVAL_PUSH_HOLD:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0x4

.field public static final CONTENT_DELIMITER_COLUMN:I = 0x6

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_FLAGS_COLUMN:I = 0xc

.field public static final CONTENT_FLAG_VISIBLE_COLUMN:I = 0xb

.field public static final CONTENT_HIERARCHICAL_NAME_COLUMN:I = 0x13

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LAST_FULL_SYNC_COLUMN:I = 0x14

.field public static final CONTENT_LAST_TOUCHED_TIME_COLUMN:I = 0xf

.field public static final CONTENT_PARENT_KEY_COLUMN:I = 0xe

.field public static final CONTENT_PARENT_SERVER_ID_COLUMN:I = 0x3

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_SERVER_ID_COLUMN:I = 0x2

.field public static final CONTENT_SYNC_INTERVAL_COLUMN:I = 0x9

.field public static final CONTENT_SYNC_KEY_COLUMN:I = 0x7

.field public static final CONTENT_SYNC_LOOKBACK_COLUMN:I = 0x8

.field public static final CONTENT_SYNC_STATUS_COLUMN:I = 0xd

.field public static final CONTENT_SYNC_TIME_COLUMN:I = 0xa

.field public static final CONTENT_TOTAL_COUNT_COLUMN:I = 0x12

.field public static final CONTENT_TYPE_COLUMN:I = 0x5

.field public static final CONTENT_UI_LAST_SYNC_RESULT_COLUMN:I = 0x11

.field public static final CONTENT_UI_SYNC_STATUS_COLUMN:I = 0x10

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAFTS_DEFAULT_TOUCH_TIME:I = 0x2

.field public static final FIRST_SYNC_MESSAGE_COUNT:I = 0x19

.field public static final FLAG_ACCEPTS_APPENDED_MAIL:I = 0x20

.field public static final FLAG_ACCEPTS_MOVED_MAIL:I = 0x10

.field public static final FLAG_CANT_PUSH:I = 0x4

.field public static final FLAG_CHILDREN_VISIBLE:I = 0x2

.field public static final FLAG_HAS_CHILDREN:I = 0x1

.field public static final FLAG_HOLDS_MAIL:I = 0x8

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SUPPORTS_SETTINGS:I = 0x40

.field public static final INVALID_DROP_TARGETS:[Ljava/lang/Integer;

.field private static final MAILBOX_DISPLAY_NAME_COLUMN:I = 0x0

.field private static final MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_TYPE_TYPE_COLUMN:I = 0x0

.field public static MESSAGE_COUNT_URI:Landroid/net/Uri; = null

.field public static final NO_MAILBOX:J = -0x1L

.field private static final OUTBOX_PLUS_SYNCING_AND_ACCOUNT_SELECTION:Ljava/lang/String; = "(type=4 or syncInterval=1) and accountKey=?"

.field public static final PARENT_KEY_UNINITIALIZED:J = 0x0L

.field public static final PATH_AND_ACCOUNT_SELECTION:Ljava/lang/String; = "serverId=? and accountKey=?"

.field private static final PUSH_MAILBOXES_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "syncKey is not null and syncKey!=\'\' and syncKey!=\'0\' and syncInterval=1 and accountKey=?"

.field public static final QUERY_ALL_DRAFTS:J = -0x5L

.field public static final QUERY_ALL_FAVORITES:J = -0x4L

.field public static final QUERY_ALL_INBOXES:J = -0x2L

.field public static final QUERY_ALL_OUTBOX:J = -0x6L

.field public static final QUERY_ALL_UNREAD:J = -0x3L

.field public static final REQUIRED_FOLDER_TYPES:[I

.field public static final SENT_DEFAULT_TOUCH_TIME:I = 0x1

.field private static final SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

.field private static final SYNCING_AND_TYPE_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "syncInterval=1 and type=? and accountKey=?"

.field public static final SYNC_EXTRA_ACCOUNT_ONLY:Ljava/lang/String; = "__account_only__"

.field public static final SYNC_EXTRA_DELTA_MESSAGE_COUNT:Ljava/lang/String; = "__deltaMessageCount__"

.field public static final SYNC_EXTRA_MAILBOX_COUNT:Ljava/lang/String; = "__mailboxCount__"

.field private static final SYNC_EXTRA_MAILBOX_ID_PATTERN:Ljava/lang/String; = "__mailboxId%d__"

.field public static final SYNC_EXTRA_MAILBOX_TYPE:Ljava/lang/String; = "__mailboxType__"

.field public static final SYNC_EXTRA_NOOP:Ljava/lang/String; = "__noop__"

.field public static final SYNC_EXTRA_PUSH_ONLY:Ljava/lang/String; = "__push_only__"

.field public static final TABLE_NAME:Ljava/lang/String; = "Mailbox"

.field public static final TYPE_ATTACHMENT:I = 0x101

.field public static final TYPE_CALENDAR:I = 0x41

.field public static final TYPE_CONTACTS:I = 0x42

.field public static final TYPE_DRAFTS:I = 0x3

.field public static final TYPE_EAS_ACCOUNT_MAILBOX:I = 0x44
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_JUNK:I = 0x7

.field public static final TYPE_MAIL:I = 0x1

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_NOT_EMAIL:I = 0x40

.field public static final TYPE_NOT_SYNCABLE:I = 0x100

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_PARENT:I = 0x2

.field public static final TYPE_SEARCH:I = 0x8

.field public static final TYPE_SENT:I = 0x5

.field public static final TYPE_STARRED:I = 0x9

.field public static final TYPE_TASKS:I = 0x43

.field public static final TYPE_TRASH:I = 0x6

.field public static final TYPE_UNKNOWN:I = 0x45

.field public static final TYPE_UNREAD:I = 0xa

.field public static final USER_VISIBLE_MAILBOX_SELECTION:Ljava/lang/String; = "type<64 AND flagVisible=1"

.field private static final WHERE_TYPE_AND_ACCOUNT_KEY:Ljava/lang/String; = "type=? and accountKey=?"


# instance fields
.field public mAccountKey:J

.field public mDelimiter:I

.field public mDisplayName:Ljava/lang/String;

.field public mFlagVisible:Z

.field public mFlags:I

.field public mHierarchicalName:Ljava/lang/String;

.field public mLastFullSyncTime:J

.field public mLastTouchedTime:J

.field public mParentKey:J

.field public mParentServerId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field public mSyncStatus:Ljava/lang/String;

.field public mSyncTime:J

.field public mTotalCount:I

.field public mType:I

.field public mUiLastSyncResult:I

.field public mUiSyncStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 207
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v3

    const-string/jumbo v1, "serverId"

    aput-object v1, v0, v7

    const-string/jumbo v1, "parentServerId"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "accountKey"

    aput-object v2, v0, v1

    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string/jumbo v2, "delimiter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "syncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "syncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "syncInterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "syncTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "flagVisible"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "lastTouchedTime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "uiSyncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "uiLastSyncResult"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "totalCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "hierarchicalName"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "lastFullSyncTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 222
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    .line 227
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    .line 235
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

    .line 271
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    .line 348
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    .line 349
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 350
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 354
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 355
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 356
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 357
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 373
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    .line 871
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 373
    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 414
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 415
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 846
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 171
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 847
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 869
    return-void

    .line 860
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSyncBundle(J)Landroid/os/Bundle;
    .locals 3
    .param p0, "mailboxId"    # J

    .prologue
    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "__mailboxCount__"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 115
    return-object v0
.end method

.method public static createSyncBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "mailboxIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "__mailboxCount__"

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v0
.end method

.method public static createSyncBundle([J)Landroid/os/Bundle;
    .locals 5
    .param p0, "mailboxIds"    # [J

    .prologue
    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "__mailboxCount__"

    array-length v3, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 106
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v2

    aget-wide v3, p0, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object v0
.end method

.method public static findMailboxOfType(Landroid/content/Context;JI)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 666
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 667
    .local v4, "bindArguments":[Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "type=? and accountKey=?"

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static formatMailboxIdExtra(I)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 90
    const-string/jumbo v0, "__mailboxId%d__"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountIdForMailbox(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 936
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->ACCOUNT_KEY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAuthority(I)Ljava/lang/String;
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    .line 980
    packed-switch p0, :pswitch_data_0

    .line 986
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 982
    :pswitch_0
    const-string/jumbo v0, "com.android.calendar"

    goto :goto_0

    .line 984
    :pswitch_1
    const-string/jumbo v0, "com.android.contacts"

    goto :goto_0

    .line 980
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDefaultSyncStateForType(I)Z
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    .line 563
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public static getDisplayName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v3, 0x0

    .line 711
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 712
    .local v1, "url":Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_DISPLAY_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 690
    const-string/jumbo v2, "mailboxKey"

    invoke-static {p0, p1, p2, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 692
    .local v0, "mailboxId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 693
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 695
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 542
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    .end local v0    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 545
    .restart local v0    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_0
    return-object v0
.end method

.method public static getMailboxIdsByType(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, "mailboxTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 947
    const-string/jumbo v3, ""

    .line 948
    .local v3, "whereSQL":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 949
    .local v8, "typeSize":I
    new-array v4, v8, [Ljava/lang/String;

    .line 950
    .local v4, "typeArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_3

    .line 952
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 953
    .local v7, "type":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 954
    if-ne v8, v2, :cond_1

    .line 956
    const-string/jumbo v3, "type=?"

    .line 950
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 958
    :cond_1
    if-le v8, v2, :cond_0

    .line 960
    add-int/lit8 v0, v8, -0x1

    if-ge v6, v0, :cond_2

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type=? OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 966
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 970
    .end local v7    # "type":Ljava/lang/Integer;
    :cond_3
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxIdsForSync(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J

    .prologue
    .line 910
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "(type=4 or syncInterval=1) and accountKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string/jumbo v5, "type ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxIdsForSyncByType(Landroid/content/ContentResolver;JI)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 923
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "syncInterval=1 and type=? and accountKey=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMailboxIdsFromBundle(Landroid/os/Bundle;)[J
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 119
    const-string/jumbo v3, "__mailboxCount__"

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 121
    const-string/jumbo v3, "__push_only__"

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Mailboxes specified in a push only sync"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    :cond_0
    const-string/jumbo v3, "__account_only__"

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Mailboxes specified in an account only sync"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    :cond_1
    new-array v2, v0, [J

    .line 128
    .local v2, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 129
    invoke-static {v1}, Lcom/android/emailcommon/provider/Mailbox;->formatMailboxIdExtra(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "i":I
    .end local v2    # "result":[J
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method public static getMailboxMessageCount(Landroid/content/Context;J)I
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->MESSAGE_COUNT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 719
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 721
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 725
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 728
    :goto_0
    return v0

    .line 725
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    .line 728
    goto :goto_0

    .line 725
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getMailboxType(Landroid/content/Context;J)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v3, 0x0

    .line 702
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 703
    .local v1, "url":Landroid/net/Uri;
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->MAILBOX_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMailboxesForPush(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "accountId"    # J

    .prologue
    .line 895
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "syncKey is not null and syncKey!=\'\' and syncKey!=\'0\' and syncInterval=1 and accountKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxType"    # I

    .prologue
    .line 418
    const/4 v0, -0x1

    .line 419
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 445
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal mailbox type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :pswitch_1
    const v0, 0x7f10022b

    .line 447
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 424
    :pswitch_2
    const v0, 0x7f10022d

    .line 425
    goto :goto_0

    .line 427
    :pswitch_3
    const v0, 0x7f10022a

    .line 428
    goto :goto_0

    .line 430
    :pswitch_4
    const v0, 0x7f100230

    .line 431
    goto :goto_0

    .line 433
    :pswitch_5
    const v0, 0x7f10022e

    .line 434
    goto :goto_0

    .line 436
    :pswitch_6
    const v0, 0x7f10022c

    .line 437
    goto :goto_0

    .line 439
    :pswitch_7
    const v0, 0x7f10022f

    .line 440
    goto :goto_0

    .line 442
    :pswitch_8
    const v0, 0x7f100229

    .line 443
    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static initMailbox()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mailboxCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox;->MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 87
    return-void
.end method

.method public static isAccountOnlyExtras(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string/jumbo v2, "__account_only__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 140
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 141
    const-string/jumbo v2, "__mailboxCount__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 143
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Mailboxes specified in an account only sync"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    .end local v0    # "count":I
    :cond_0
    return v1
.end method

.method public static isPushOnlyExtras(Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 150
    const-string/jumbo v2, "__push_only__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 151
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 152
    const-string/jumbo v2, "__mailboxCount__"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, "count":I
    if-eqz v0, :cond_0

    .line 154
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Mailboxes specified in a push only sync"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 157
    .end local v0    # "count":I
    :cond_0
    return v1
.end method

.method public static isRefreshable(Landroid/content/Context;J)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v0, 0x0

    .line 737
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 746
    :goto_0
    :pswitch_0
    return v0

    .line 740
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 746
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSyncableType(I)Z
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    .line 554
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->SYNCABLE_TYPES:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 472
    packed-switch p3, :pswitch_data_0

    .line 488
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad mailbox type for newSystemMailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :pswitch_1
    const/16 v1, 0x18

    .line 475
    .local v1, "flags":I
    const/4 v2, 0x0

    .line 492
    .local v2, "syncInterval":I
    :goto_0
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 493
    .local v0, "box":Lcom/android/emailcommon/provider/Mailbox;
    iput-wide p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 494
    iput p3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 495
    iput v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 496
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 498
    invoke-static {p0, p3}, Lcom/android/emailcommon/provider/Mailbox;->getSystemMailboxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 499
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 500
    iput v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 501
    return-object v0

    .line 479
    .end local v0    # "box":Lcom/android/emailcommon/provider/Mailbox;
    .end local v1    # "flags":I
    .end local v2    # "syncInterval":I
    :pswitch_2
    const/16 v1, 0x8

    .line 480
    .restart local v1    # "flags":I
    const/4 v2, 0x0

    .line 481
    .restart local v2    # "syncInterval":I
    goto :goto_0

    .line 484
    .end local v1    # "flags":I
    .end local v2    # "syncInterval":I
    :pswitch_3
    const/16 v1, 0x8

    .line 485
    .restart local v1    # "flags":I
    const/4 v2, -0x1

    .line 486
    .restart local v2    # "syncInterval":I
    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static restoreMailboxForPath(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "serverId=? and accountKey=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p3, v5, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 519
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    new-instance v1, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v1

    .line 521
    :cond_0
    const/4 v8, 0x0

    .line 522
    .local v8, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    const-class v1, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v7, v1}, Lcom/android/emailcommon/provider/Mailbox;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    move-object v8, v0

    .line 524
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Multiple mailboxes named \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v8

    .line 528
    :cond_2
    :try_start_1
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Could not find mailbox at \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "type"    # I

    .prologue
    .line 676
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 677
    .local v0, "mailboxId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 678
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 680
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 457
    const-class v1, Lcom/android/emailcommon/provider/Mailbox;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method public static resyncMailbox(Landroid/content/ContentResolver;Landroid/accounts/Account;J)V
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "mailboxId"    # J

    .prologue
    .line 994
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "serverId"

    aput-object v3, v2, v0

    const-string/jumbo v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1002
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1004
    :cond_0
    if-eqz v6, :cond_1

    .line 1006
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1009
    :cond_1
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Mailbox %d not found"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1047
    :goto_0
    return-void

    .line 1013
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1014
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1015
    .local v11, "type":I
    const/16 v0, 0x40

    if-lt v11, v0, :cond_3

    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Mailbox %d is not an Email mailbox"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    .end local v11    # "type":I
    :catch_0
    move-exception v7

    .line 1041
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to wipe mailbox %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1019
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v11    # "type":I
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1020
    .local v10, "serverId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1021
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Mailbox %d has no server id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1042
    .end local v10    # "serverId":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_1
    move-exception v7

    .line 1043
    .local v7, "e":Landroid/content/OperationApplicationException;
    :try_start_3
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to wipe mailbox %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1045
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1024
    .end local v7    # "e":Landroid/content/OperationApplicationException;
    .restart local v10    # "serverId":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_4
    :try_start_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v9, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "mailboxKey=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncKey"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p0, v0, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1035
    invoke-static {p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v8

    .line 1036
    .local v8, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "ignore_settings"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1037
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->AUTHORITY:Ljava/lang/String;

    invoke-static {p1, v0, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1038
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestSync resyncMailbox %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1045
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v10    # "serverId":Ljava/lang/String;
    .end local v11    # "type":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public canHaveMessagesMoved()Z
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 760
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 758
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public getHashes()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 768
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 770
    .local v0, "hash":[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 772
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 774
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 776
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 778
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 780
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 782
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 784
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 786
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 788
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 790
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 792
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 794
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 796
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 798
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 800
    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 802
    const/16 v1, 0x10

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 804
    const/16 v1, 0x11

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 806
    const/16 v1, 0x12

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 808
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 810
    return-object v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v0}, Lcom/android/emailcommon/provider/Mailbox;->isSyncableType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 577
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 578
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 579
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 580
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 581
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 582
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 583
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 584
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 585
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    .line 586
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 587
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 588
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 589
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    .line 590
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 591
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 592
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 593
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    .line 594
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    .line 595
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    .line 596
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 597
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    .line 598
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 599
    return-void

    :cond_0
    move v0, v1

    .line 590
    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 603
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 604
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string/jumbo v1, "serverId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string/jumbo v1, "parentServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v1, "parentKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    const-string/jumbo v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string/jumbo v1, "delimiter"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const-string/jumbo v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string/jumbo v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string/jumbo v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const-string/jumbo v1, "syncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 615
    const-string/jumbo v1, "flagVisible"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 616
    const-string/jumbo v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string/jumbo v1, "syncStatus"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string/jumbo v1, "lastTouchedTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    const-string/jumbo v1, "uiSyncStatus"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string/jumbo v1, "uiLastSyncResult"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string/jumbo v1, "totalCount"

    iget v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string/jumbo v1, "hierarchicalName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string/jumbo v1, "lastFullSyncTime"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 624
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Mailbox "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastFullSyncTime(Landroid/content/Context;J)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "syncTime"    # J

    .prologue
    .line 647
    iget-wide v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 648
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 649
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "lastFullSyncTime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 650
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 651
    iput-wide p2, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    .line 653
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public updateMessageCount(Landroid/content/Context;I)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "count"    # I

    .prologue
    .line 633
    iget v1, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    if-eq p2, v1, :cond_0

    .line 634
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "totalCount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    invoke-virtual {p0, p1, v0}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 637
    iput p2, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    .line 639
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 823
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 824
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 827
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 828
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 829
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mDelimiter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 832
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 835
    iget-boolean v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 838
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 839
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiSyncStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mUiLastSyncResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    iget v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mTotalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    iget-object v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mHierarchicalName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Mailbox;->mLastFullSyncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 844
    return-void

    .line 835
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
