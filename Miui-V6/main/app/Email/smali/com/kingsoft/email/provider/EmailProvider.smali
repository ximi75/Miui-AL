.class public Lcom/kingsoft/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;,
        Lcom/kingsoft/email/provider/EmailProvider$CloseDetectingCursor;,
        Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;,
        Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;,
        Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;,
        Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;,
        Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;,
        Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
    }
.end annotation


# static fields
.field private static final ACCOUNT:I = 0x0

.field public static ACCOUNT_BACKUP_URI:Landroid/net/Uri; = null

.field private static final ACCOUNT_BASE:I = 0x0

.field private static final ACCOUNT_CHECK:I = 0x4

.field private static final ACCOUNT_COLOR:Ljava/lang/String;

.field private static final ACCOUNT_COLORS:[I

.field private static final ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_ID:I = 0x1

.field private static final ACCOUNT_INTEGRITY_SQL:Ljava/lang/String; = "select count(*) from (select count(*) as dupes from Mailbox where accountKey=? group by serverId) where dupes > 1"

.field private static final ACCOUNT_PICK_SENT_FOLDER:I = 0x6

.field private static final ACCOUNT_PICK_TRASH_FOLDER:I = 0x5

.field private static final ACCOUNT_RESET_NEW_COUNT:I = 0x2

.field private static final ACCOUNT_RESET_NEW_COUNT_ID:I = 0x3

.field private static final ACTION_NOTIFY_MESSAGE_LIST_DATASET_CHANGED:Ljava/lang/String; = "com.android.email.MESSAGE_LIST_DATASET_CHANGED"

.field private static final ATTACHMENT:I = 0x3000

.field private static final ATTACHMENTS_CACHED_FILE_ACCESS:I = 0x3003

.field private static final ATTACHMENTS_MESSAGE_ID:I = 0x3002

.field private static final ATTACHMENT_BASE:I = 0x3000

.field private static final ATTACHMENT_ID:I = 0x3001

.field private static final BACKUP_DATABASE_NAME:Ljava/lang/String; = "EmailProviderBackup.db"

.field private static final BASE_EXTERAL_URI2:Landroid/net/Uri;

.field private static final BASE_EXTERNAL_URI:Landroid/net/Uri;

.field private static final BASE_SHIFT:I = 0xc

.field private static final BODY:I = 0xa000

.field private static final BODY_BASE:I = 0xa000

.field private static final BODY_DATABASE_NAME:Ljava/lang/String; = "EmailProviderBody.db"

.field private static final BODY_ID:I = 0xa001

.field public static final COMBINED_ACCOUNT_ID:J = 0x10000000L

.field private static final COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

.field private static CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues; = null

.field private static final CONVERSATION_COLOR:Ljava/lang/String;

.field private static final CONVERSATION_FLAGS:Ljava/lang/String; = "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END + CASE WHEN (flags&524288) !=0 THEN 8 ELSE 0 END + CASE WHEN (flags&262144) !=0 THEN 4 ELSE 0 END"

.field private static final CONVERSATION_MESSAGE_SIZE_STRING:Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "EmailProvider.db"

.field private static final DELETED_MESSAGE:I = 0x6000

.field private static final DELETED_MESSAGE_BASE:I = 0x6000

.field private static final DELETED_MESSAGE_ID:I = 0x6001

.field private static final DELETED_MESSAGE_INSERT:Ljava/lang/String; = "insert or replace into Message_Deletes select * from (select * from Message_Updates where  _id = %s union all select * from Message where _id = %s ) limit 1"

.field private static final DELETE_BODY:Ljava/lang/String; = "delete from Body where messageKey="

.field private static final DELETE_ORPHAN_BODIES:Ljava/lang/String; = "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

.field public static EMAIL_APP_MIME_TYPE:Ljava/lang/String; = null

.field private static final EMAIL_ATTACHMENT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email-attachment"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email-message"

.field private static final EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

.field private static final FOLDER_CAPABILITIES:Ljava/lang/String; = "CASE WHEN (flags&16) !=0 THEN 8 ELSE 0 END"

.field private static final FOLDER_ICON:Ljava/lang/String; = "CASE type WHEN 0 THEN 2130837916 WHEN 3 THEN 2130837915 WHEN 4 THEN 2130837917 WHEN 5 THEN 2130837918 WHEN 6 THEN 2130837920 WHEN 9 THEN 2130837919 ELSE -1 END"

.field private static FOLDER_STATUS_URI:Landroid/net/Uri; = null

.field private static final FOLDER_TYPE:Ljava/lang/String;

.field private static final GET_ACCOUNT_DETAILS:Ljava/lang/String; = "SELECT h.protocol, a.emailAddress, a.syncKey FROM Account AS a INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE a._id=?"

.field private static final GET_MESSAGE_DETAILS:Ljava/lang/String; = "SELECT h.protocol, m.mailboxKey, a._id FROM Message AS m INNER JOIN Account AS a ON m.accountKey=a._id INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE m._id=?"

.field private static final HOSTAUTH:I = 0x4000

.field private static final HOSTAUTH_BASE:I = 0x4000

.field private static final HOSTAUTH_ID:I = 0x4001

.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

.field private static final INDEX_ACCOUNT_KEY:I = 0x2

.field private static final INDEX_EMAIL_ADDRESS:I = 0x1

.field private static final INDEX_MAILBOX_KEY:I = 0x1

.field private static final INDEX_PROTOCOL:I = 0x0

.field private static final INDEX_SYNC_KEY:I = 0x2

.field private static INTEGRITY_CHECK_URI:Landroid/net/Uri; = null

.field private static final IS_UIPROVIDER:Ljava/lang/String; = "is_uiprovider"

.field public static final LEGACY_AUTHORITY:Ljava/lang/String; = "ui.email.android.com"

.field private static final MAILBOX:I = 0x1000

.field private static final MAILBOXES_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "accountKey=?"

.field private static final MAILBOX_BASE:I = 0x1000

.field private static final MAILBOX_ID:I = 0x1001

.field private static final MAILBOX_MESSAGE_COUNT:I = 0x1004

.field private static final MAILBOX_MOST_RECENT_MESSAGE:I = 0x1003

.field private static final MAILBOX_NOTIFICATION:I = 0x1002

.field private static final MAILBOX_ORDER_BY:Ljava/lang/String; = "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"

.field private static final MESSAGE:I = 0x2000

.field private static final MESSAGE_BASE:I = 0x2000

.field private static final MESSAGE_CHANGE_LOG_TABLE_INSERT_PREFIX:Ljava/lang/String; = "insert into %s (messageKey,messageServerId,accountKey,status,"

.field private static final MESSAGE_CHANGE_LOG_TABLE_VALUES_PREFIX:Ljava/lang/String;

.field private static final MESSAGE_DRAFT_TYPE:Ljava/lang/String; = "CASE WHEN (flags&1048576) !=0 THEN 1 WHEN (flags&2097152) !=0 THEN 3 WHEN (flags&1) !=0 THEN 2 WHEN (flags&2) !=0 THEN 4 ELSE 0 END"

.field private static final MESSAGE_FLAGS:Ljava/lang/String; = "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END + CASE WHEN (flags&64) !=0 THEN 32 WHEN (flags&128) !=0 THEN 64 WHEN (flags&256) !=0 THEN 128 ELSE 0 END"

.field private static final MESSAGE_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "accountKey=?"

.field private static final MESSAGE_ID:I = 0x2001

.field private static final MESSAGE_KEYS_ACCOUNT_KEY_COLUMN:I = 0x1

.field private static final MESSAGE_KEYS_MAILBOX_KEY_COLUMN:I = 0x0

.field private static final MESSAGE_KEYS_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_MEARGE_SELELCT_ALL:Ljava/lang/String; = "select a._id _id from Message a ,(select * from Message where _id in (%s)) b where a.rawSubject = b.rawSubject and a.mailboxKey=%s and (length(a.rawSubject) >0 or a._id in (%s))"

.field private static final MESSAGE_MEARGE_SELELCT_ALL2:Ljava/lang/String; = "select a._id _id from Message a where _id in (%s)"

.field private static final MESSAGE_MOVE:I = 0x2004

.field private static final MESSAGE_MOVE_INSERT:Ljava/lang/String;

.field private static final MESSAGE_MOVE_INSERT2:Ljava/lang/String;

.field private static final MESSAGE_SELECTION:I = 0x2003

.field private static final MESSAGE_STATE_CHANGE:I = 0x2005

.field private static final MESSAGE_STATE_CHANGE_INSERT:Ljava/lang/String;

.field private static final MESSAGE_STATE_CHANGE_INSERT2:Ljava/lang/String;

.field private static final MESSAGE_URI_PARAMETER_MAILBOX_ID:Ljava/lang/String; = "mailboxId"

.field private static final NOTIFICATION_OP_DELETE:Ljava/lang/String; = "delete"

.field private static final NOTIFICATION_OP_INSERT:Ljava/lang/String; = "insert"

.field private static final NOTIFICATION_OP_UPDATE:Ljava/lang/String; = "update"

.field private static final NOTIFY_FOLDER_LOOP_MESSAGE_ID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NOT_A_DRAFT_STRING:Ljava/lang/String;

.field private static final ORPHANS_ID:I = 0x0

.field private static final ORPHANS_MAILBOX_KEY:I = 0x1

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String;

.field public static final PICKER_HEADER_ID:Ljava/lang/String; = "picker_header_id"

.field public static final PICKER_MAILBOX_TYPE:Ljava/lang/String; = "picker_mailbox_type"

.field public static final PICKER_UI_ACCOUNT:Ljava/lang/String; = "picker_ui_account"

.field private static final POLICY:I = 0x7000

.field private static final POLICY_BASE:I = 0x7000

.field private static final POLICY_ID:I = 0x7001

.field private static final QICKRESPONSE_FOR_ACCOUNT_SELECTION:Ljava/lang/String; = "accountKey=?"

.field private static QUERY_UIREFRESH:Ljava/lang/String; = null

.field private static final QUICK_RESPONSE:I = 0x8000

.field private static final QUICK_RESPONSE_ACCOUNT_ID:I = 0x8002

.field private static final QUICK_RESPONSE_BASE:I = 0x8000

.field private static final QUICK_RESPONSE_ID:I = 0x8001

.field private static final SEARCH_MAILBOX_SERVER_ID:Ljava/lang/String; = "__search_mailbox__"

.field public static final SEARCH_MORE_INCREMENT:I = 0xa

.field private static final SYNCED_MESSAGE_ID:I = 0x2002

.field public static final SYNC_DELAY_MILLIS:J = 0x7530L

.field private static final SYNC_STATUS_CALLBACK_METHOD:Ljava/lang/String; = "sync_status"

.field private static final TABLE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TOTAL_COUNT:Ljava/lang/String; = "CASE WHEN totalCount<0 OR type=3 OR type=4 OR type=6 THEN messageCount ELSE totalCount END"

.field private static UIPROVIDER_ACCOUNT_NOTIFIER:Landroid/net/Uri; = null

.field public static UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_ATTACHMENTS_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_ATTACHMENT_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_CHAT_VIEW_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_MESSAGE_NOTIFIER:Landroid/net/Uri; = null

.field private static UIPROVIDER_RECENT_FOLDERS_NOTIFIER:Landroid/net/Uri; = null

.field private static final UI_ACCOUNT:I = 0x9007

.field private static final UI_ACCOUNT_DATA:I = 0x900c

.field private static final UI_ACCTS:I = 0x9008

.field private static final UI_ALL_FOLDERS:I = 0x9012

.field private static final UI_ATTACHMENT:I = 0x900a

.field private static final UI_ATTACHMENTS:I = 0x9009

.field private static final UI_BASE:I = 0x9000

.field private static final UI_CHAT_MESSAGES:I = 0x9013

.field private static final UI_CONVERSATION:I = 0x900e

.field private static final UI_DEFAULT_RECENT_FOLDERS:I = 0x9010

.field private static final UI_FOLDER:I = 0x9006

.field private static final UI_FOLDERS:I = 0x9000

.field private static final UI_FOLDER_LOAD_MORE:I = 0x900d

.field private static final UI_FOLDER_REFRESH:I = 0x9005

.field private static final UI_FULL_FOLDERS:I = 0x9011

.field private static final UI_MESSAGE:I = 0x9003

.field private static final UI_MESSAGES:I = 0x9002

.field private static final UI_RECENT_FOLDERS:I = 0x900f

.field private static final UI_SEARCH:I = 0x900b

.field private static final UI_SUBFOLDERS:I = 0x9001

.field private static final UI_UNDO:I = 0x9004

.field private static final UPDATED_MESSAGE:I = 0x5000

.field private static final UPDATED_MESSAGE_BASE:I = 0x5000

.field private static final UPDATED_MESSAGE_DELETE:Ljava/lang/String; = "delete from Message_Updates where _id="

.field private static final UPDATED_MESSAGE_ID:I = 0x5001

.field private static final UPDATED_MESSAGE_INSERT:Ljava/lang/String; = "insert or ignore into Message_Updates select * from Message where _id="

.field private static final UPDATED_MESSAGE_INSERT2:Ljava/lang/String; = "insert or ignore into Message_Updates select * from Message where _id in("

.field public static final VISIBLE_LIMIT_INCREMENT:I = 0xa

.field private static final WHERE_ID:Ljava/lang/String; = "_id=?"

.field private static mContext:Landroid/content/Context;

.field private static mIsNotifying:Z

.field private static mNeedNotify:Ljava/lang/Boolean;

.field private static mNotifyThreadPool:Ljava/util/concurrent/ExecutorService;

.field private static mNotifyingMailbox:J

.field private static sAccountListMap:Lcom/kingsoft/common/content/ProjectionMap;

.field private static sAttachmentMap:Lcom/kingsoft/common/content/ProjectionMap;

.field private static final sDatabaseLock:Ljava/lang/Object;

.field private static sFolderListMap:Lcom/kingsoft/common/content/ProjectionMap;

.field private static sMessageListMap:Lcom/kingsoft/common/content/ProjectionMap;

.field private static sMessageUseMergeListMap:Lcom/kingsoft/common/content/ProjectionMap;

.field private static sMessageViewMap:Lcom/kingsoft/common/content/ProjectionMap;

.field private static sQuickResponseMap:Lcom/kingsoft/common/content/ProjectionMap;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final DEFAULT_ATTACHMENT_SERVICE:Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mAttachmentService:Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;

.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mCheckSendResultHandler:Landroid/os/Handler;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDelayedSyncHandler:Landroid/os/Handler;

.field private final mDelayedSyncRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailComponent:Landroid/content/ComponentName;

.field private mFolderNotifierHandler:Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLastSequence:I

.field private final mLastSequenceOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedWidgetIds:[I

.field private mSearchParams:Lcom/android/emailcommon/service/SearchParams;

.field private final mWidgetNotifyMailboxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    .line 215
    const-string/jumbo v1, "uirefresh"

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->QUERY_UIREFRESH:Ljava/lang/String;

    .line 218
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v1, v5

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    .line 305
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->mNotifyThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 306
    sput-boolean v4, Lcom/kingsoft/email/provider/EmailProvider;->mIsNotifying:Z

    .line 307
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;

    .line 308
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/kingsoft/email/provider/EmailProvider;->mNotifyingMailbox:J

    .line 312
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 313
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v1, "Account"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    const-string/jumbo v1, "Mailbox"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    const-string/jumbo v1, "Message"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    const/4 v1, 0x3

    const-string/jumbo v2, "Attachment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    const/4 v1, 0x4

    const-string/jumbo v2, "HostAuth"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    const-string/jumbo v1, "Message_Updates"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    const/4 v1, 0x6

    const-string/jumbo v2, "Message_Deletes"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    const/4 v1, 0x7

    const-string/jumbo v2, "Policy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    const-string/jumbo v1, "QuickResponse"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    const/16 v1, 0xa

    const-string/jumbo v2, "Body"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider;->TABLE_NAMES:Landroid/util/SparseArray;

    .line 329
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 338
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sDatabaseLock:Ljava/lang/Object;

    .line 374
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

    .line 2023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ") values (%s, (select syncServerId from Message where _id=%s),(select accountKey from Message where _id=%s),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/MessageMove;->STATUS_NONE_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_CHANGE_LOG_TABLE_VALUES_PREFIX:Ljava/lang/String;

    .line 2047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert into %s (messageKey,messageServerId,accountKey,status,srcFolderKey,dstFolderKey,srcFolderServerId,dstFolderServerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_CHANGE_LOG_TABLE_VALUES_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where _id=%s),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%d,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "serverId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where _id=(select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where _id=%s)),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "serverId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where _id=%d))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_MOVE_INSERT:Ljava/lang/String;

    .line 2076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert into %s (messageKey,messageServerId,accountKey,status,srcFolderKey,dstFolderKey,srcFolderServerId,dstFolderServerId) select a._id as messageKey,a.syncServerId as messageServerId,a.accountKey as accountKey,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/MessageMove;->STATUS_NONE_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",a."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "srcFolderKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",%d as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dstFolderKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",c."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "serverId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "srcFolderServerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",b."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "serverId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dstFolderServerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " a,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " b,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where a."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in (%s) and b."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=%d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and a."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=c."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_MOVE_INSERT2:Ljava/lang/String;

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert into %s (messageKey,messageServerId,accountKey,status,oldFlagRead,newFlagRead,oldFlagFavorite,newFlagFavorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_CHANGE_LOG_TABLE_VALUES_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagRead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where _id=%s),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%d,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagFavorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where _id=%s),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_STATE_CHANGE_INSERT:Ljava/lang/String;

    .line 2152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert into %s (messageKey,messageServerId,accountKey,status,oldFlagRead,newFlagRead,oldFlagFavorite,newFlagFavorite) select _id as messageKey,syncServerId as messageServerId,accountKey as accountKey,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/MessageMove;->STATUS_NONE_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagRead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "oldFlagRead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",%d as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "newFlagRead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagFavorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "oldFlagFavorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",%d as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "newFlagFavorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in (%s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_STATE_CHANGE_INSERT2:Ljava/lang/String;

    .line 3270
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->NOT_A_DRAFT_STRING:Ljava/lang/String;

    .line 3286
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    .line 3290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@CASE (accountKey - 1) % "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 0 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 1 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 2 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 3 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 4 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 5 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 6 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 7 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 8 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->CONVERSATION_COLOR:Ljava/lang/String;

    .line 3299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@CASE (_id - 1) % "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 0 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 1 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 2 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 3 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 4 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 5 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 6 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 7 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHEN 8 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLORS:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLOR:Ljava/lang/String;

    .line 3309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SUM(CASE flagLoaded WHEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "messageSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ELSE 0 END)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->CONVERSATION_MESSAGE_SIZE_STRING:Ljava/lang/String;

    .line 3542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CASE type WHEN 0 THEN 2 WHEN 3 THEN 4 WHEN 4 THEN 8 WHEN 5 THEN 16 WHEN 6 THEN 32 WHEN 7 THEN 64 WHEN 9 THEN 128 WHEN 10 THEN 2048 WHEN 8 THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderTypeFromMailboxType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ELSE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->FOLDER_TYPE:Ljava/lang/String;

    .line 3889
    const-string/jumbo v1, "<(?i)img\\s+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 4494
    const-string/jumbo v1, "content://ui.email.android.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->BASE_EXTERNAL_URI:Landroid/net/Uri;

    .line 4497
    const-string/jumbo v1, "content://ui.email2.android.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->BASE_EXTERAL_URI2:Landroid/net/Uri;

    .line 5287
    const-wide/32 v1, 0x10000000

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    .line 7644
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "mailboxKey"

    aput-object v2, v1, v4

    const-string/jumbo v2, "accountKey"

    aput-object v2, v1, v5

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_KEYS_PROJECTION:[Ljava/lang/String;

    .line 8585
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "emailAddress"

    aput-object v2, v1, v4

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

    return-void

    .line 3286
    :array_0
    .array-data 4
        -0x8e5159
        -0x9de6e7
        -0xe7b9d1
        -0x4071ae
        -0xffe087
        -0x57503e
        -0x949b3c
        -0x8c7ca7
        -0x62af5c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequence:I

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncRequests:Ljava/util/Set;

    .line 3197
    new-instance v0, Lcom/kingsoft/email/provider/EmailProvider$2;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/provider/EmailProvider$2;-><init>(Lcom/kingsoft/email/provider/EmailProvider;)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->DEFAULT_ATTACHMENT_SERVICE:Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;

    .line 3204
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->DEFAULT_ATTACHMENT_SERVICE:Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;

    iput-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mAttachmentService:Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;

    .line 8636
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mSavedWidgetIds:[I

    .line 8637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mWidgetNotifyMailboxes:Ljava/util/ArrayList;

    .line 8765
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 183
    sput-boolean p0, Lcom/kingsoft/email/provider/EmailProvider;->mIsNotifying:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kingsoft/email/provider/EmailProvider;JJZ)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Z

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJZ)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 183
    sput-object p0, Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kingsoft/email/provider/EmailProvider;)Lcom/android/emailcommon/service/SearchParams;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kingsoft/email/provider/EmailProvider;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/provider/EmailProvider;JJI)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 183
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolderWithFolderType(JJI)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingsoft/email/provider/EmailProvider;J)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;
    .param p1, "x1"    # J

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIAccount(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/kingsoft/email/provider/EmailProvider;J)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;
    .param p1, "x1"    # J

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->getMailboxAllMessageCount(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 183
    invoke-static {p0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxAccountId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->QUERY_UIREFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kingsoft/email/provider/EmailProvider;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/provider/EmailProvider;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private addCombinedAccountRow(Landroid/database/MatrixCursor;)V
    .locals 16
    .param p1, "mc"    # Landroid/database/MatrixCursor;

    .prologue
    .line 4863
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v13

    invoke-virtual {v13}, Lcom/kingsoft/email/Preferences;->getLastUsedAccountId()J

    move-result-wide v8

    .line 4865
    .local v8, "lastUsedAccountId":J
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v8, v9}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;J)J

    move-result-wide v6

    .line 4867
    .local v6, "id":J
    const-wide/16 v13, -0x1

    cmp-long v13, v6, v13

    if-nez v13, :cond_0

    .line 5003
    :goto_0
    return-void

    .line 4871
    :cond_0
    new-instance v2, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 4872
    .local v2, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 4873
    .local v4, "columnNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v13, v4

    if-ge v5, v13, :cond_1

    .line 4874
    aget-object v13, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 4873
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4876
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 4878
    .local v3, "colPosMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v10

    .line 4880
    .local v10, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    array-length v13, v4

    new-array v12, v13, [Ljava/lang/Object;

    .line 4881
    .local v12, "values":[Ljava/lang/Object;
    const-string/jumbo v13, "_id"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 4882
    const-string/jumbo v13, "_id"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4884
    :cond_2
    const-string/jumbo v13, "capabilities"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 4885
    const-string/jumbo v13, "capabilities"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const v14, 0x84000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4888
    :cond_3
    const-string/jumbo v13, "folderListUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4889
    const-string/jumbo v13, "folderListUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "uifolders"

    sget-object v15, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4892
    :cond_4
    const-string/jumbo v13, "name"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 4893
    const-string/jumbo v13, "name"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f100220

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4897
    :cond_5
    const-string/jumbo v13, "accountManagerName"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4899
    const-string/jumbo v13, "accountManagerName"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f100220

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4904
    :cond_6
    const-string/jumbo v13, "type"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 4905
    const-string/jumbo v13, "type"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "unknown"

    aput-object v14, v12, v13

    .line 4907
    :cond_7
    const-string/jumbo v13, "undoUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 4908
    const-string/jumbo v13, "undoUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "\'content://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/uiundo\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4911
    :cond_8
    const-string/jumbo v13, "accountUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 4912
    const-string/jumbo v13, "accountUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "uiaccount"

    sget-object v15, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4915
    :cond_9
    const-string/jumbo v13, "mimeType"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 4916
    const-string/jumbo v13, "mimeType"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v14, Lcom/kingsoft/email/provider/EmailProvider;->EMAIL_APP_MIME_TYPE:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 4918
    :cond_a
    const-string/jumbo v13, "accountSettingsIntentUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4920
    const-string/jumbo v13, "accountSettingsIntentUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "settings"

    sget-object v15, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/kingsoft/email/provider/EmailProvider;->getExternalUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4923
    :cond_b
    const-string/jumbo v13, "composeUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 4924
    const-string/jumbo v13, "composeUri"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "compose"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kingsoft/email/provider/EmailProvider;->getExternalUriStringEmail2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4929
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v11

    .line 4930
    .local v11, "prefs":Lcom/kingsoft/email/Preferences;
    const-string/jumbo v13, "auto_advance"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 4932
    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getAutoAdvanceDirection()I

    move-result v1

    .line 4933
    .local v1, "autoAdvance":I
    const-string/jumbo v13, "auto_advance"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v1}, Lcom/kingsoft/email/provider/EmailProvider;->autoAdvanceToUiValue(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4936
    .end local v1    # "autoAdvance":I
    :cond_d
    const-string/jumbo v13, "message_text_size"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 4938
    const-string/jumbo v13, "message_text_size"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4942
    :cond_e
    const-string/jumbo v13, "snap_headers"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 4944
    const-string/jumbo v13, "snap_headers"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4949
    :cond_f
    const-string/jumbo v13, "reply_behavior"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 4951
    const-string/jumbo v13, "reply_behavior"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->getDefaultReplyAll()Z

    move-result v13

    if-eqz v13, :cond_19

    const/4 v13, 0x1

    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v14

    .line 4956
    :cond_10
    const-string/jumbo v13, "conversation_list_icon"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 4958
    const-string/jumbo v13, "conversation_list_icon"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v10}, Lcom/kingsoft/email/provider/EmailProvider;->getConversationListIcon(Lcom/kingsoft/mail/preferences/MailPrefs;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4961
    :cond_11
    const-string/jumbo v13, "conversation_list_attachment_previews"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 4963
    const-string/jumbo v13, "conversation_list_attachment_previews"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4966
    :cond_12
    const-string/jumbo v13, "confirm_delete"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 4968
    const-string/jumbo v13, "confirm_delete"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getConfirmDelete()Z

    move-result v13

    if-eqz v13, :cond_1a

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    .line 4972
    :cond_13
    const-string/jumbo v13, "confirm_archive"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 4974
    const-string/jumbo v13, "confirm_archive"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4977
    :cond_14
    const-string/jumbo v13, "confirm_send"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 4979
    const-string/jumbo v13, "confirm_send"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getConfirmSend()Z

    move-result v13

    if-eqz v13, :cond_1b

    const/4 v13, 0x1

    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    .line 4983
    :cond_15
    const-string/jumbo v13, "default_inbox"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 4985
    const-string/jumbo v13, "default_inbox"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "uifolder"

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/kingsoft/email/provider/EmailProvider;->combinedMailboxId(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4989
    :cond_16
    const-string/jumbo v13, "move_to_inbox"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 4991
    const-string/jumbo v13, "move_to_inbox"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "uifolder"

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/kingsoft/email/provider/EmailProvider;->combinedMailboxId(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4996
    :cond_17
    const-string/jumbo v13, "swipe"

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 4998
    const-string/jumbo v13, "swipe"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/kingsoft/mail/preferences/MailPrefs;->getConversationListSwipeActionInteger(Z)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 5002
    :cond_18
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4951
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 4968
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 4979
    :cond_1b
    const/4 v13, 0x0

    goto :goto_4
.end method

.method private addToMessageMove(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "dstFolderKey"    # J

    .prologue
    .line 2108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_MOVE_INSERT:Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "MessageMove"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    const/4 v3, 0x7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2111
    return-void
.end method

.method private addToMessageMoves(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageIds"    # Ljava/lang/String;
    .param p3, "dstFolderKey"    # J

    .prologue
    .line 2115
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_MOVE_INSERT2:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "MessageMove"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2117
    return-void
.end method

.method private addToMessageStateChange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "newFlagRead"    # I
    .param p4, "newFlagFavorite"    # I

    .prologue
    .line 2147
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_STATE_CHANGE_INSERT:Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "MessageStateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    const/4 v3, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2150
    return-void
.end method

.method private addToMessageStateChanges(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageIds"    # Ljava/lang/String;
    .param p3, "newFlagRead"    # I
    .param p4, "newFlagFavorite"    # I

    .prologue
    .line 2176
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->MESSAGE_STATE_CHANGE_INSERT2:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "MessageStateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2178
    return-void
.end method

.method private addToSequence(Landroid/net/Uri;Landroid/content/ContentProviderOperation;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "op"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 7512
    const-string/jumbo v2, "seq"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7514
    .local v1, "sequenceString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 7515
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7516
    .local v0, "sequence":I
    iget v2, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequence:I

    if-le v0, v2, :cond_0

    .line 7518
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7519
    iput v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequence:I

    .line 7522
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7524
    .end local v0    # "sequence":I
    :cond_1
    return-void
.end method

.method private static appendConversationInfoColumns(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2c

    .line 4033
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "fromList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "toList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ccList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bccList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4038
    return-void
.end method

.method private static autoAdvanceToUiValue(I)I
    .locals 1
    .param p0, "autoAdvance"    # I

    .prologue
    .line 4784
    packed-switch p0, :pswitch_data_0

    .line 4791
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 4786
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4788
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4784
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 1968
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1969
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "backupAccounts..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1971
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1973
    .local v0, "backupDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p1, v0}, Lcom/kingsoft/email/provider/EmailProvider;->copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 1974
    .local v1, "numBackedUp":I
    if-gez v1, :cond_3

    .line 1975
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Account backup failed!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1981
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1983
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return v1

    .line 1976
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1977
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Backed up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " accounts..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1981
    .end local v1    # "numBackedUp":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 1983
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v2
.end method

.method private static combinedMailboxId(I)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I

    .prologue
    .line 4835
    const-wide/high16 v0, 0x1000000000000000L

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 4822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertToEmailProviderUri(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "newBaseUri"    # Landroid/net/Uri;
    .param p2, "asProvider"    # Z

    .prologue
    .line 7483
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 7485
    .local v3, "idString":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 7486
    .local v1, "id":J
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 7487
    .local v4, "ourUri":Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 7488
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "is_uiprovider"

    const-string/jumbo v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 7493
    .end local v1    # "id":J
    .end local v4    # "ourUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v4

    .line 7492
    :catch_0
    move-exception v0

    .line 7493
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static convertUiAttachmentToAttachment(Lcom/kingsoft/mail/providers/Attachment;Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 4
    .param p0, "uiAtt"    # Lcom/kingsoft/mail/providers/Attachment;
    .param p1, "cachedFile"    # Ljava/lang/String;
    .param p2, "accountKey"    # J

    .prologue
    .line 6806
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 6808
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setContentUri(Ljava/lang/String;)V

    .line 6810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/attachment/cachedFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 6815
    .local v1, "cachedFileBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v2, "filePath"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6817
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->setCachedFileUri(Ljava/lang/String;)V

    .line 6819
    .end local v1    # "cachedFileBuilder":Landroid/net/Uri$Builder;
    :cond_0
    iput-wide p2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 6820
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 6821
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 6822
    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 6823
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 6824
    iget v2, p0, Lcom/kingsoft/mail/providers/Attachment;->size:I

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 6825
    return-object v0
.end method

.method private convertUiMessageValues(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 23
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 7420
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 7421
    .local v13, "ourValues":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7422
    .local v3, "columnName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 7423
    .local v16, "val":Ljava/lang/Object;
    const-string/jumbo v17, "starred"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 7424
    const-string/jumbo v17, "flagFavorite"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v13, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->putIntegerLongOrBoolean(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7426
    :cond_1
    const-string/jumbo v17, "read"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 7427
    const-string/jumbo v17, "flagRead"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v13, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->putIntegerLongOrBoolean(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7429
    :cond_2
    const-string/jumbo v17, "seen"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 7430
    const-string/jumbo v17, "flagSeen"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v13, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->putIntegerLongOrBoolean(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7432
    :cond_3
    const-string/jumbo v17, "mailboxKey"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 7433
    const-string/jumbo v17, "mailboxKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v13, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->putIntegerLongOrBoolean(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7435
    :cond_4
    const-string/jumbo v17, "folders_updated"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 7439
    const-string/jumbo v17, "rawFolders"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 7442
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kingsoft/mail/providers/FolderList;->fromBlob([B)Lcom/kingsoft/mail/providers/FolderList;

    move-result-object v6

    .line 7444
    .local v6, "flist":Lcom/kingsoft/mail/providers/FolderList;
    iget-object v0, v6, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 7445
    sget-object v17, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "Incorrect number of folders for this message: Message is %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 7450
    :cond_5
    iget-object v0, v6, Lcom/kingsoft/mail/providers/FolderList;->folders:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/mail/providers/Folder;

    .line 7451
    .local v5, "f":Lcom/kingsoft/mail/providers/Folder;
    iget-object v0, v5, Lcom/kingsoft/mail/providers/Folder;->folderUri:Lcom/kingsoft/mail/utils/FolderUri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/kingsoft/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    .line 7452
    .local v15, "uri":Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 7454
    .local v12, "mailboxId":Ljava/lang/Long;
    const-string/jumbo v17, "mailboxKey"

    move-object/from16 v0, v17

    invoke-static {v13, v0, v12}, Lcom/kingsoft/email/provider/EmailProvider;->putIntegerLongOrBoolean(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7457
    .end local v5    # "f":Lcom/kingsoft/mail/providers/Folder;
    .end local v6    # "flist":Lcom/kingsoft/mail/providers/FolderList;
    .end local v12    # "mailboxId":Ljava/lang/Long;
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v17, "alwaysShowImages"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 7459
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v7

    .line 7460
    .local v7, "fromList":[Lcom/kingsoft/emailcommon/mail/Address;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v11

    .line 7461
    .local v11, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    move-object v2, v7

    .local v2, "arr$":[Lcom/kingsoft/emailcommon/mail/Address;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v14, v2, v9

    .line 7462
    .local v14, "sender":Lcom/kingsoft/emailcommon/mail/Address;
    invoke-virtual {v14}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 7463
    .local v4, "email":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->setDisplayImagesFromSender(Ljava/lang/String;Ljava/util/List;)V

    .line 7461
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 7465
    .end local v2    # "arr$":[Lcom/kingsoft/emailcommon/mail/Address;
    .end local v4    # "email":Ljava/lang/String;
    .end local v7    # "fromList":[Lcom/kingsoft/emailcommon/mail/Address;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    .end local v14    # "sender":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_7
    const-string/jumbo v17, "viewed"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "suppress_undo"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 7469
    const-string/jumbo v17, "conversationInfo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto/16 :goto_0

    .line 7478
    .end local v3    # "columnName":Ljava/lang/String;
    .end local v16    # "val":Ljava/lang/Object;
    :cond_8
    return-object v13
.end method

.method private static copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .param p0, "fromDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "toDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1864
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1865
    :cond_0
    const/4 v10, -0x1

    .line 1954
    :goto_0
    return v10

    .line 1870
    :cond_1
    const/4 v10, 0x0

    .line 1871
    .local v10, "copyCount":I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1873
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1876
    :try_start_1
    const-string/jumbo v0, "Account"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1877
    const-string/jumbo v0, "HostAuth"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1880
    const-string/jumbo v1, "Account"

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .line 1883
    .local v9, "c":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 1884
    const/4 v0, 0x0

    .line 1946
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1952
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v10, v0

    goto :goto_0

    .line 1885
    :cond_2
    :try_start_3
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromDatabase accounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1889
    :cond_3
    :goto_1
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1890
    new-instance v8, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 1891
    .local v8, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v8, v9}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 1900
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1901
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 1902
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 1905
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    .line 1910
    .local v12, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v12, :cond_3

    .line 1912
    const-string/jumbo v0, "HostAuth"

    const/4 v1, 0x0

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 1917
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 1918
    iget-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v12

    .line 1925
    if-eqz v12, :cond_3

    .line 1927
    const-string/jumbo v0, "HostAuth"

    const/4 v1, 0x0

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 1934
    :cond_4
    const-string/jumbo v0, "Account"

    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1936
    add-int/lit8 v10, v10, 0x1

    .line 1937
    goto :goto_1

    .line 1940
    .end local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v12    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_5
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1944
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1946
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1952
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1940
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1946
    .end local v9    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1948
    :catch_0
    move-exception v11

    .line 1949
    .local v11, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_9
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exception while copying account tables"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1950
    const/4 v10, -0x1

    .line 1952
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v11    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private createMailbox(JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 4
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 6832
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6833
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 6837
    .local v0, "box":Lcom/android/emailcommon/provider/Mailbox;
    packed-switch p3, :pswitch_data_0

    .line 6845
    :goto_0
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 6846
    return-object v0

    .line 6839
    :pswitch_1
    const-wide/16 v2, 0x2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    goto :goto_0

    .line 6842
    :pswitch_2
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    goto :goto_0

    .line 6837
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private defaultRecentFolders(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 13
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 5353
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5354
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v8, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5356
    new-array v6, v11, [Landroid/net/Uri;

    .line 5395
    :cond_0
    :goto_0
    return-object v6

    .line 5359
    :cond_1
    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v8, "_id"

    aput-object v8, v5, v11

    const-string/jumbo v8, "type"

    aput-object v8, v5, v10

    .line 5363
    .local v5, "idAndType":[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5364
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Mailbox"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "accountKey"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " IN ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5370
    sget-object v8, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "defaultRecentFolders: Query is %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5371
    const/4 v0, 0x0

    .line 5372
    .local v0, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 5374
    .local v6, "recentFolders":[Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5375
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_3

    .line 5376
    :cond_2
    const/4 v8, 0x0

    new-array v6, v8, [Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5391
    .end local v6    # "recentFolders":[Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 5392
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5378
    .restart local v6    # "recentFolders":[Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    new-array v6, v8, [Landroid/net/Uri;

    .line 5379
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5380
    const/4 v4, 0x0

    .line 5382
    .local v4, "i":I
    :cond_4
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5383
    .local v2, "folderId":J
    const-string/jumbo v8, "uifolder"

    invoke-static {v8, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v6, v4

    .line 5384
    sget-object v8, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Default recent folder: %d, with uri %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aget-object v12, v6, v4

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5386
    add-int/lit8 v4, v4, 0x1

    .line 5387
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_4

    .line 5391
    .end local v2    # "folderId":J
    .end local v4    # "i":I
    :cond_5
    if-eqz v0, :cond_0

    .line 5392
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5391
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_6

    .line 5392
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v8
.end method

.method private static deleteAccountData(Landroid/content/Context;J)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 8593
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id =?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 8597
    .local v9, "emailAddress":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 8598
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Could not find email address for account %d"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8606
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAttByAccount(Landroid/content/Context;J)V

    .line 8610
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 8611
    .local v10, "resolver":Landroid/content/ContentResolver;
    new-array v7, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 8612
    .local v7, "accountIdArgs":[Ljava/lang/String;
    sget-object v0, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "accountKey=?"

    invoke-virtual {v10, v0, v1, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8614
    sget-object v0, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "accountKey=?"

    invoke-virtual {v10, v0, v1, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8617
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 8618
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "syncKey"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 8619
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "_id =?"

    invoke-virtual {v10, v0, v8, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8623
    if-eqz v9, :cond_1

    .line 8624
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v11

    .line 8626
    .local v11, "service":Lcom/android/emailcommon/service/IEmailService;
    if-eqz v11, :cond_1

    .line 8628
    :try_start_0
    invoke-interface {v11, v9}, Lcom/android/emailcommon/service/IEmailService;->deleteAccountPIMData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8634
    .end local v11    # "service":Lcom/android/emailcommon/service/IEmailService;
    :cond_1
    :goto_0
    return-void

    .line 8629
    .restart local v11    # "service":Lcom/android/emailcommon/service/IEmailService;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 20
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 624
    if-eqz p0, :cond_1

    .line 627
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 632
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 682
    :cond_0
    if-eqz v11, :cond_1

    .line 683
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 687
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 634
    .restart local v11    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v13, "foundMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v19, "notFoundMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v12, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 638
    .local v6, "bindArray":[Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 642
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 645
    .local v15, "mailboxId":J
    const-string/jumbo v2, "Message_Deletes"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x2

    cmp-long v2, v15, v2

    if-eqz v2, :cond_3

    .line 651
    :cond_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 652
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 682
    .end local v6    # "bindArray":[Ljava/lang/String;
    .end local v12    # "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v13    # "foundMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15    # "mailboxId":J
    .end local v19    # "notFoundMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_5

    .line 683
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 655
    .restart local v6    # "bindArray":[Ljava/lang/String;
    .restart local v12    # "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v13    # "foundMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v15    # "mailboxId":J
    .restart local v19    # "notFoundMailboxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 656
    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 657
    const-string/jumbo v3, "Mailbox"

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 663
    .local v10, "boxCursor":Landroid/database/Cursor;
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 664
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 672
    :goto_2
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 668
    :cond_7
    :try_start_5
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 672
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 677
    .end local v10    # "boxCursor":Landroid/database/Cursor;
    .end local v15    # "mailboxId":J
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 678
    .local v17, "messageId":J
    const/4 v2, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 679
    const-string/jumbo v2, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 682
    .end local v17    # "messageId":J
    :cond_9
    if-eqz v11, :cond_1

    .line 683
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "foreignColumn"    # Ljava/lang/String;
    .param p4, "foreignTable"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not in (select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 463
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 464
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " orphaned row(s) in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 466
    :cond_0
    return-void
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 397
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 398
    .local v0, "match":I
    if-gez v0, :cond_0

    .line 399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_0
    sget-boolean v1, Lcom/kingsoft/emailcommon/Logging;->LOGD:Z

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", match is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 403
    :cond_1
    return v0
.end method

.method private fixParentKeys(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 479
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Fixing parent keys"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 495
    const-string/jumbo v0, "update Mailbox set parentKey=(select _id from Mailbox as b where Mailbox.parentServerId=b.serverId and Mailbox.parentServerId not null and Mailbox.accountKey=b.accountKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v0, "update Mailbox set parentKey=-1 where parentKey=0 or parentKey is null"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private folderProjectionFromUiProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 6044
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 6046
    .local v0, "columns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "unreadSenders"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6047
    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION_WITH_UNREAD_SENDERS:[Ljava/lang/String;

    .line 6049
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private genQueryAccount([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "uiProjection"    # [Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 4607
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 4608
    .local v18, "values":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4609
    .local v3, "accountId":J
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4611
    .local v6, "context":Landroid/content/Context;
    const/4 v9, 0x0

    .line 4615
    .local v9, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v12

    .line 4617
    .local v12, "projectionColumns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v19, "capabilities"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 4619
    const-string/jumbo v19, "capabilities"

    invoke-static {v6, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->getCapabilities(Landroid/content/Context;J)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4622
    :cond_0
    const-string/jumbo v19, "accountSettingsIntentUri"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 4624
    const-string/jumbo v19, "accountSettingsIntentUri"

    const-string/jumbo v20, "settings"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getExternalUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4627
    :cond_1
    const-string/jumbo v19, "composeUri"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 4628
    const-string/jumbo v19, "composeUri"

    const-string/jumbo v20, "compose"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getExternalUriStringEmail2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4631
    :cond_2
    const-string/jumbo v19, "mimeType"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 4632
    const-string/jumbo v19, "mimeType"

    sget-object v20, Lcom/kingsoft/email/provider/EmailProvider;->EMAIL_APP_MIME_TYPE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4634
    :cond_3
    const-string/jumbo v19, "color"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 4635
    const-string/jumbo v19, "color"

    sget-object v20, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_COLOR:Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4638
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v11

    .line 4639
    .local v11, "prefs":Lcom/kingsoft/email/Preferences;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v10

    .line 4640
    .local v10, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    const-string/jumbo v19, "confirm_delete"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 4642
    const-string/jumbo v20, "confirm_delete"

    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getConfirmDelete()Z

    move-result v19

    if-eqz v19, :cond_18

    const-string/jumbo v19, "1"

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    :cond_5
    const-string/jumbo v19, "confirm_send"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 4648
    const-string/jumbo v20, "confirm_send"

    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getConfirmSend()Z

    move-result v19

    if-eqz v19, :cond_19

    const-string/jumbo v19, "1"

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    :cond_6
    const-string/jumbo v19, "swipe"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 4653
    const-string/jumbo v19, "swipe"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getConversationListSwipeActionInteger(Z)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4656
    :cond_7
    const-string/jumbo v19, "conversation_list_icon"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 4658
    const-string/jumbo v19, "conversation_list_icon"

    invoke-static {v10}, Lcom/kingsoft/email/provider/EmailProvider;->getConversationListIcon(Lcom/kingsoft/mail/preferences/MailPrefs;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4662
    :cond_8
    const-string/jumbo v19, "conversation_list_attachment_previews"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 4664
    const-string/jumbo v19, "conversation_list_attachment_previews"

    const-string/jumbo v20, "0"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4668
    :cond_9
    const-string/jumbo v19, "auto_advance"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 4670
    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getAutoAdvanceDirection()I

    move-result v5

    .line 4671
    .local v5, "autoAdvance":I
    const-string/jumbo v19, "auto_advance"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->autoAdvanceToUiValue(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4674
    .end local v5    # "autoAdvance":I
    :cond_a
    const-string/jumbo v19, "message_text_size"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 4676
    invoke-virtual {v11}, Lcom/kingsoft/email/Preferences;->getTextZoom()I

    move-result v14

    .line 4677
    .local v14, "textZoom":I
    const-string/jumbo v19, "message_text_size"

    invoke-static {v14}, Lcom/kingsoft/email/provider/EmailProvider;->textZoomToUiValue(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4683
    .end local v14    # "textZoom":I
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v6, v3, v4, v0}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v7

    .line 4685
    .local v7, "inboxMailboxId":J
    const-string/jumbo v19, "default_inbox"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-wide/16 v19, -0x1

    cmp-long v19, v7, v19

    if-eqz v19, :cond_c

    .line 4688
    const-string/jumbo v19, "default_inbox"

    const-string/jumbo v20, "uifolder"

    move-object/from16 v0, v20

    invoke-static {v0, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->uiUriString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4691
    :cond_c
    const-string/jumbo v19, "default_inbox_name"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const-wide/16 v19, -0x1

    cmp-long v19, v7, v19

    if-eqz v19, :cond_d

    .line 4694
    const-string/jumbo v19, "default_inbox_name"

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4698
    :cond_d
    const-string/jumbo v19, "syncStatus"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 4699
    const-wide/16 v19, -0x1

    cmp-long v19, v7, v19

    if-eqz v19, :cond_1a

    .line 4700
    const-string/jumbo v19, "syncStatus"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4707
    :cond_e
    :goto_2
    const-string/jumbo v19, "priority_inbox_arrows_enabled"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 4711
    const-string/jumbo v19, "priority_inbox_arrows_enabled"

    const-string/jumbo v20, "0"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    :cond_f
    const-string/jumbo v19, "setup_intent_uri"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 4719
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-static {v6, v3, v4, v0}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v15

    .line 4721
    .local v15, "trashId":J
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-nez v19, :cond_10

    .line 4722
    invoke-static {v6, v3, v4}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoForAccount(Landroid/content/Context;J)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v9

    .line 4724
    if-eqz v9, :cond_10

    iget-boolean v0, v9, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->requiresSetup:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 4725
    const-string/jumbo v19, "setup_intent_uri"

    const-string/jumbo v20, "setup"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getExternalUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4731
    .end local v15    # "trashId":J
    :cond_10
    const-string/jumbo v19, "type"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 4733
    if-nez v9, :cond_11

    .line 4734
    invoke-static {v6, v3, v4}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoForAccount(Landroid/content/Context;J)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v9

    .line 4737
    :cond_11
    if-eqz v9, :cond_1b

    .line 4738
    iget-object v0, v9, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4743
    .local v17, "type":Ljava/lang/String;
    :goto_3
    const-string/jumbo v19, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    .end local v17    # "type":Ljava/lang/String;
    :cond_12
    const-string/jumbo v19, "move_to_inbox"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const-wide/16 v19, -0x1

    cmp-long v19, v7, v19

    if-eqz v19, :cond_13

    .line 4748
    const-string/jumbo v19, "move_to_inbox"

    const-string/jumbo v20, "uifolder"

    move-object/from16 v0, v20

    invoke-static {v0, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->uiUriString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4751
    :cond_13
    const-string/jumbo v19, "syncAuthority"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 4753
    const-string/jumbo v19, "syncAuthority"

    sget-object v20, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4756
    :cond_14
    const-string/jumbo v19, "quickResponseUri"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 4758
    const-string/jumbo v19, "quickResponseUri"

    const-string/jumbo v20, "quickresponse/account"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    :cond_15
    const-string/jumbo v19, "reply_behavior"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 4763
    const-string/jumbo v20, "reply_behavior"

    invoke-virtual {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->getDefaultReplyAll()Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x1

    :goto_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4769
    :cond_16
    const-string/jumbo v19, "protocol"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 4771
    const-string/jumbo v19, "protocol"

    invoke-static {v6, v3, v4}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/email/provider/EmailProvider;->getAccountListMap(Landroid/content/Context;)Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4778
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v19, " FROM Account WHERE _id=?"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4780
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 4642
    .end local v7    # "inboxMailboxId":J
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_18
    const-string/jumbo v19, "0"

    goto/16 :goto_0

    .line 4648
    :cond_19
    const-string/jumbo v19, "0"

    goto/16 :goto_1

    .line 4703
    .restart local v7    # "inboxMailboxId":J
    :cond_1a
    const-string/jumbo v19, "syncStatus"

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 4740
    :cond_1b
    const-string/jumbo v17, "unknown"

    .restart local v17    # "type":Ljava/lang/String;
    goto/16 :goto_3

    .line 4763
    .end local v17    # "type":Ljava/lang/String;
    :cond_1c
    const/16 v19, 0x0

    goto :goto_4
.end method

.method private static genQueryAccountAllMailboxes([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 4342
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4344
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ", case when hierarchicalName is null then displayName else hierarchicalName end as h_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4348
    const-string/jumbo v1, " FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 ORDER BY h_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static genQueryAccountMailboxes([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 4321
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4322
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4328
    const-string/jumbo v1, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genQueryAttachment([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "uiProjection"    # [Ljava/lang/String;
    .param p2, "idString"    # Ljava/lang/String;

    .prologue
    .line 5258
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5259
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 5261
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 5262
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "contentUri"

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5264
    const-string/jumbo v4, "supportsDownloadAgain"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5265
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getAttachmentMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v4

    invoke-static {v4, p1, v3}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5266
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " FROM "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Attachment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " =? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static genQueryAttachments([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "uiProjection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "contentTypeQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 5219
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 5220
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "supportsDownloadAgain"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5221
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getAttachmentMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v5

    invoke-static {v5, p0, v4}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5222
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, " FROM "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Attachment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "messageKey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " =? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5231
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 5234
    .local v3, "size":I
    const-string/jumbo v5, "AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 5236
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5237
    .local v0, "contentType":Ljava/lang/String;
    const-string/jumbo v5, "mimeType"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " LIKE \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5240
    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_0

    .line 5241
    const-string/jumbo v5, " OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5244
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5246
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static genQueryChatMessagesFromAccount([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uiProjection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 8896
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getMessageViewMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8897
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, " FROM Message LEFT JOIN Body ON messageKey=Message._id WHERE Message.accountKey=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8902
    if-eqz p1, :cond_0

    .line 8903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8905
    :cond_0
    const-string/jumbo v2, "ORDER BY timeStamp DESC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8906
    const-string/jumbo v2, "LIMIT 1500"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8908
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8909
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private static genQueryConversation([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 4306
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kingsoft/email/provider/EmailProvider;->getMessageListMap(Z)Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4307
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " FROM Message WHERE _id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genQueryMailbox([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "uiProjection"    # [Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 4434
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 4435
    .local v8, "mailboxId":J
    new-instance v13, Landroid/content/ContentValues;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 4436
    .local v13, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v14, v14, Lcom/android/emailcommon/service/SearchParams;->mSearchMailboxId:J

    cmp-long v14, v8, v14

    if-nez v14, :cond_1

    .line 4439
    const-string/jumbo v14, "loadMoreUri"

    const-string/jumbo v15, "uiloadmore"

    invoke-static {v15, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->uiUriString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4441
    const-string/jumbo v14, "capabilities"

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4487
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v0, v13}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4488
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v14, " FROM Mailbox WHERE _id=?"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 4444
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4445
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3, v8, v9}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 4448
    .local v7, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v7, :cond_0

    .line 4449
    iget-wide v14, v7, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v3, v14, v15}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 4451
    .local v10, "protocol":Ljava/lang/String;
    invoke-static {v3, v10}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v5

    .line 4454
    .local v5, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-eqz v5, :cond_2

    iget-boolean v14, v5, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLoadMore:Z

    if-eqz v14, :cond_2

    .line 4457
    const-string/jumbo v14, "loadMoreUri"

    const-string/jumbo v15, "uiloadmore"

    invoke-static {v15, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->uiUriString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    :cond_2
    const-string/jumbo v14, "capabilities"

    iget v15, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderCapabilities(Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;IJ)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4467
    const/4 v12, 0x0

    .line 4468
    .local v12, "shouldEncodePersistentId":Z
    if-nez p1, :cond_4

    .line 4469
    const/4 v12, 0x1

    .line 4479
    :cond_3
    :goto_1
    if-eqz v12, :cond_0

    .line 4480
    const-string/jumbo v14, "persistentId"

    iget-object v15, v7, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0xb

    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4471
    :cond_4
    move-object/from16 v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v2, v1, v4

    .line 4472
    .local v2, "column":Ljava/lang/String;
    const-string/jumbo v14, "persistentId"

    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 4474
    const/4 v12, 0x1

    .line 4475
    goto :goto_1

    .line 4471
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static genQueryMailboxMessages([Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 5
    .param p0, "uiProjection"    # [Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "unseenOnly"    # Z
    .param p3, "useFold"    # Z

    .prologue
    .line 4054
    const-string/jumbo v2, ""

    .line 4055
    .local v2, "unseenOnlyStr":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 4056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND flagSeen = 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND flagRead = 0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4060
    :cond_0
    if-nez p3, :cond_1

    .line 4061
    const-string/jumbo p1, " 1=1 "

    .line 4065
    :cond_1
    if-nez p1, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/kingsoft/email/provider/EmailProvider;->getMessageListMap(Z)Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4066
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/kingsoft/email/provider/EmailProvider;->appendConversationInfoColumns(Ljava/lang/StringBuilder;)V

    .line 4068
    if-eqz p1, :cond_4

    .line 4070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " , messageSize as messageSize ,1 as mergeCount FROM Message WHERE mailboxKey=?  AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4078
    invoke-static {v2}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4079
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4127
    .end local v2    # "unseenOnlyStr":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v3, "ORDER BY timeStamp DESC "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    const-string/jumbo v3, "LIMIT 1500"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4133
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 4065
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "unseenOnlyStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 4085
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " , messageSize_ as messageSize , mergeSenders , mergeCount FROM (select _id as mid,count(*) as mergeCount,min(flagRead)  as flagRead_ ,max(flagFavorite)  as flagFavorite_ ,max(timeStamp), GROUP_CONCAT(fromList) as mergeSenders,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->CONVERSATION_MESSAGE_SIZE_STRING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "messageSize_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " order by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "timeStamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " desc,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " desc ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mailboxKey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v2, ""

    .end local v2    # "unseenOnlyStr":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " GROUP BY case when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "rawSubject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = \'\' then "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " else "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "rawSubject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") t1 left join "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "= t1.mid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private static genQueryRecentMailboxes([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 4365
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4366
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " FROM Mailbox WHERE accountKey=? AND type < 64 AND type != 8 AND parentKey < 0 AND lastTouchedTime > 0 ORDER BY lastTouchedTime DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static genQuerySubfolders([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 5280
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5281
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " FROM Mailbox WHERE parentKey =? ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5283
    const-string/jumbo v1, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genQueryViewMessage([Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;
    .locals 29
    .param p1, "uiProjection"    # [Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 3915
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 3916
    .local v10, "context":Landroid/content/Context;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 3917
    .local v16, "messageId":J
    move-wide/from16 v0, v16

    invoke-static {v10, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v18

    .line 3918
    .local v18, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 3919
    .local v24, "values":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 3920
    .local v5, "attachmentJson":Ljava/lang/String;
    if-eqz v18, :cond_8

    .line 3921
    move-wide/from16 v0, v16

    invoke-static {v10, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v9

    .line 3922
    .local v9, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    if-eqz v9, :cond_0

    .line 3923
    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 3924
    sget-object v25, Lcom/kingsoft/email/provider/EmailProvider;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3925
    const-string/jumbo v25, "bodyEmbedsExternalResources"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3931
    :cond_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v12

    .line 3932
    .local v12, "fromList":[Lcom/kingsoft/emailcommon/mail/Address;
    const/4 v8, 0x0

    .line 3933
    .local v8, "autoShowImages":I
    invoke-static {v10}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v15

    .line 3934
    .local v15, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    move-object v3, v12

    .local v3, "arr$":[Lcom/kingsoft/emailcommon/mail/Address;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v20, v3, v13

    .line 3935
    .local v20, "sender":Lcom/kingsoft/emailcommon/mail/Address;
    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 3936
    .local v11, "email":Ljava/lang/String;
    invoke-virtual {v15, v11}, Lcom/kingsoft/mail/preferences/MailPrefs;->getDisplayImagesFromSender(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 3937
    const/4 v8, 0x1

    .line 3941
    .end local v11    # "email":Ljava/lang/String;
    .end local v20    # "sender":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_1
    const-string/jumbo v25, "alwaysShowImages"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3944
    move-wide/from16 v0, v16

    invoke-static {v10, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v7

    .line 3946
    .local v7, "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v7, :cond_5

    array-length v0, v7

    move/from16 v25, v0

    if-lez v25, :cond_5

    .line 3947
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 3948
    .local v23, "uiAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    move-object v3, v7

    .local v3, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v14, v3

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_4

    aget-object v4, v3, v13

    .line 3973
    .local v4, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v22, Lcom/kingsoft/mail/providers/Attachment;

    invoke-direct/range {v22 .. v22}, Lcom/kingsoft/mail/providers/Attachment;-><init>()V

    .line 3974
    .local v22, "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Attachment;->setName(Ljava/lang/String;)Z

    .line 3975
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    .line 3976
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/providers/Attachment;->setContentType(Ljava/lang/String;)V

    .line 3977
    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/kingsoft/mail/providers/Attachment;->size:I

    .line 3978
    const-string/jumbo v25, "uiattachment"

    iget-wide v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    move-wide/from16 v26, v0

    invoke-static/range {v25 .. v27}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    .line 3979
    iget v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/kingsoft/mail/providers/Attachment;->flags:I

    .line 3981
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/kingsoft/mail/providers/Attachment;->contentId:Ljava/lang/String;

    .line 3983
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3948
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3934
    .end local v4    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v7    # "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v22    # "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    .end local v23    # "uiAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    .local v3, "arr$":[Lcom/kingsoft/emailcommon/mail/Address;
    .restart local v11    # "email":Ljava/lang/String;
    .restart local v20    # "sender":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 3975
    .end local v11    # "email":Ljava/lang/String;
    .end local v20    # "sender":Lcom/kingsoft/emailcommon/mail/Address;
    .local v3, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v4    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v7    # "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v22    # "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    .restart local v23    # "uiAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_3
    const/16 v25, 0x0

    goto :goto_2

    .line 3985
    .end local v4    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v22    # "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    :cond_4
    const-string/jumbo v25, "attachments"

    const-string/jumbo v26, "@?"

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    invoke-static/range {v23 .. v23}, Lcom/kingsoft/mail/providers/Attachment;->toJSONArray(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 3991
    .end local v3    # "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v23    # "uiAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_5
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 3992
    const-string/jumbo v26, "appendRefMessageContent"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    move/from16 v25, v0

    const/high16 v27, 0x1000000

    and-int v25, v25, v27

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    :goto_3
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3996
    const-string/jumbo v25, "quotedTextStartPos"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    move/from16 v26, v0

    const v27, 0xffffff

    and-int v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3999
    :cond_6
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_7

    .line 4000
    const-string/jumbo v25, "eventIntentUri"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "content://ui.email2.android.com/event/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4008
    :cond_7
    const-string/jumbo v25, "uiattachments"

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v26

    const-string/jumbo v27, "MessageLoaded"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v25, v0

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    const-string/jumbo v25, "true"

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 4014
    .local v6, "attachmentListUri":Landroid/net/Uri;
    const-string/jumbo v25, "attachmentListUri"

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    .end local v6    # "attachmentListUri":Landroid/net/Uri;
    .end local v7    # "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v8    # "autoShowImages":I
    .end local v9    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v12    # "fromList":[Lcom/kingsoft/emailcommon/mail/Address;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_8
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getMessageViewMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 4018
    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v25, " FROM Message LEFT JOIN Body ON messageKey=Message._id WHERE Message._id=?"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 4023
    .local v21, "sql":Ljava/lang/String;
    new-instance v25, Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v25

    .line 3992
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "sql":Ljava/lang/String;
    .restart local v7    # "atts":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v8    # "autoShowImages":I
    .restart local v9    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .restart local v12    # "fromList":[Lcom/kingsoft/emailcommon/mail/Address;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 4008
    :cond_a
    const-string/jumbo v25, "false"

    goto :goto_4
.end method

.method private static genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "map"    # Lcom/kingsoft/common/content/ProjectionMap;
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 3796
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;
    .locals 11
    .param p0, "map"    # Lcom/kingsoft/common/content/ProjectionMap;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3801
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "SELECT "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3802
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 3803
    .local v2, "first":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 3804
    .local v1, "column":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3805
    const/4 v2, 0x0

    .line 3811
    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3812
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3813
    .local v8, "value":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 3814
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NULL AS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3836
    .end local v8    # "value":Ljava/lang/String;
    .local v7, "val":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3803
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3807
    .end local v7    # "val":Ljava/lang/String;
    :cond_0
    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3815
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3816
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " AS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "val":Ljava/lang/String;
    goto :goto_2

    .line 3818
    .end local v7    # "val":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' AS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "val":Ljava/lang/String;
    goto :goto_2

    .line 3823
    .end local v7    # "val":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/kingsoft/common/content/ProjectionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3826
    .local v5, "mapVal":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 3827
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NULL AS "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "val":Ljava/lang/String;
    goto :goto_2

    .line 3833
    .end local v7    # "val":Ljava/lang/String;
    :cond_4
    move-object v7, v5

    .restart local v7    # "val":Ljava/lang/String;
    goto :goto_2

    .line 3838
    .end local v1    # "column":Ljava/lang/String;
    .end local v5    # "mapVal":Ljava/lang/String;
    .end local v7    # "val":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method private static getAccountListMap(Landroid/content/Context;)Lcom/kingsoft/common/content/ProjectionMap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3654
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->sAccountListMap:Lcom/kingsoft/common/content/ProjectionMap;

    if-nez v3, :cond_1

    .line 3655
    invoke-static {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v2

    .line 3657
    .local v2, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-static {}, Lcom/kingsoft/common/content/ProjectionMap;->builder()Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "_id"

    const-string/jumbo v5, "_id"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "folderListUri"

    const-string/jumbo v5, "uifolders"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "fullFolderListUri"

    const-string/jumbo v5, "uifullfolders"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "allFolderListUri"

    const-string/jumbo v5, "uiallfolders"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "displayName"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "accountManagerName"

    const-string/jumbo v5, "emailAddress"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "senderName"

    const-string/jumbo v5, "senderName"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "undoUri"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\'content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/uiundo\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "accountUri"

    const-string/jumbo v5, "uiaccount"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "searchUri"

    const-string/jumbo v5, "uisearch"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "providerVersion"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "syncStatus"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "recentFolderListUri"

    const-string/jumbo v5, "uirecentfolders"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "defaultRecentFolderListUri"

    const-string/jumbo v5, "uidefaultrecentfolders"

    invoke-static {v5}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "signature"

    const-string/jumbo v5, "signature"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "snap_headers"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "confirm_archive"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "conversation_view_mode"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v3

    const-string/jumbo v4, "veiled_address_pattern"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    .line 3695
    .local v0, "builder":Lcom/kingsoft/common/content/ProjectionMap$Builder;
    const v3, 0x7f100199

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3697
    .local v1, "feedbackUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3701
    const-string/jumbo v3, "sendFeedbackIntentUri"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    .line 3705
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->build()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v3

    sput-object v3, Lcom/kingsoft/email/provider/EmailProvider;->sAccountListMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3707
    .end local v0    # "builder":Lcom/kingsoft/common/content/ProjectionMap$Builder;
    .end local v1    # "feedbackUri":Ljava/lang/String;
    .end local v2    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_1
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->sAccountListMap:Lcom/kingsoft/common/content/ProjectionMap;

    return-object v3
.end method

.method private getAccountManagerAccount(J)Landroid/accounts/Account;
    .locals 4
    .param p1, "accountId"    # J

    .prologue
    .line 8160
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8161
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 8163
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 8164
    const/4 v2, 0x0

    .line 8165
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getAccountManagerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    goto :goto_0
.end method

.method private static getAccountManagerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;

    .prologue
    .line 8184
    invoke-static {p0, p2}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 8186
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getAttachmentMap()Lcom/kingsoft/common/content/ProjectionMap;
    .locals 3

    .prologue
    .line 3749
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sAttachmentMap:Lcom/kingsoft/common/content/ProjectionMap;

    if-nez v0, :cond_0

    .line 3750
    invoke-static {}, Lcom/kingsoft/common/content/ProjectionMap;->builder()Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "_display_name"

    const-string/jumbo v2, "fileName"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "_size"

    const-string/jumbo v2, "size"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "uri"

    const-string/jumbo v2, "uiattachment"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "contentType"

    const-string/jumbo v2, "mimeType"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "state"

    const-string/jumbo v2, "uiState"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "destination"

    const-string/jumbo v2, "uiDestination"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "downloadedSize"

    const-string/jumbo v2, "uiDownloadedSize"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "contentUri"

    const-string/jumbo v2, "contentUri"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "flags"

    const-string/jumbo v2, "flags"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "contentId"

    const-string/jumbo v2, "contentId"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "downloadFailureReason"

    const-string/jumbo v2, "downloadFailureReason"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->build()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sAttachmentMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3778
    :cond_0
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sAttachmentMap:Lcom/kingsoft/common/content/ProjectionMap;

    return-object v0
.end method

.method private static getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1958
    new-instance v0, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;

    const-string/jumbo v1, "EmailProviderBackup.db"

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1960
    .local v0, "helper":Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;
    invoke-virtual {v0}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method private static getBaseNotificationUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "match"    # I

    .prologue
    .line 3081
    const/4 v0, 0x0

    .line 3082
    .local v0, "baseUri":Landroid/net/Uri;
    sparse-switch p0, :sswitch_data_0

    .line 3094
    :goto_0
    return-object v0

    .line 3087
    :sswitch_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    .line 3088
    goto :goto_0

    .line 3091
    :sswitch_1
    sget-object v0, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    goto :goto_0

    .line 3082
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_0
        0x9013 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getBits(I)Ljava/lang/String;
    .locals 4
    .param p0, "bitField"    # I

    .prologue
    .line 4512
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4513
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 4514
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    .line 4515
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4513
    :cond_0
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4518
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCapabilities(Landroid/content/Context;J)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 4522
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 4524
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 4525
    sget-object v8, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Account %d not found during getCapabilities"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v7

    .line 4593
    :cond_0
    :goto_0
    return v1

    .line 4532
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 4534
    .local v5, "protocol":Ljava/lang/String;
    const v8, 0x7f100303

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const v8, 0x7f100304

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4539
    :cond_2
    const v1, 0x104041

    .line 4576
    .local v1, "capabilities":I
    :goto_1
    sget-object v8, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "getCapabilities() for %d (protocol %s): 0x%x %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    aput-object v5, v10, v12

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x3

    invoke-static {v1}, Lcom/kingsoft/email/provider/EmailProvider;->getBits(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4581
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 4582
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x7f0a000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4583
    const/high16 v7, 0x10000

    or-int/2addr v1, v7

    .line 4586
    :cond_3
    const/high16 v7, 0x800000

    or-int/2addr v1, v7

    .line 4588
    const v7, 0x7f0a000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4589
    const v7, 0x8000

    or-int/2addr v1, v7

    goto :goto_0

    .line 4543
    .end local v1    # "capabilities":I
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_4
    const v8, 0x7f100305

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4545
    const v1, 0x104800

    .restart local v1    # "capabilities":I
    goto :goto_1

    .line 4548
    .end local v1    # "capabilities":I
    :cond_5
    const v8, 0x7f100302

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4550
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 4551
    .local v2, "easVersion":Ljava/lang/String;
    const-wide/high16 v3, 0x4004000000000000L

    .line 4552
    .local v3, "easVersionDouble":D
    if-eqz v2, :cond_6

    .line 4554
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 4559
    :cond_6
    :goto_2
    const-wide/high16 v8, 0x4028000000000000L

    cmpl-double v8, v3, v8

    if-ltz v8, :cond_7

    .line 4560
    const v1, 0x104461

    .restart local v1    # "capabilities":I
    goto :goto_1

    .line 4567
    .end local v1    # "capabilities":I
    :cond_7
    const v1, 0x104401

    .restart local v1    # "capabilities":I
    goto :goto_1

    .line 4573
    .end local v1    # "capabilities":I
    .end local v2    # "easVersion":Ljava/lang/String;
    .end local v3    # "easVersionDouble":D
    :cond_8
    sget-object v8, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unknown protocol for account %d"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v8, v9, v10}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v7

    .line 4574
    goto/16 :goto_0

    .line 4555
    .restart local v2    # "easVersion":Ljava/lang/String;
    .restart local v3    # "easVersionDouble":D
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static final getChatCursor(JJLcom/kingsoft/mail/providers/Folder;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p0, "accountId"    # J
    .param p2, "boxId"    # J
    .param p4, "folder"    # Lcom/kingsoft/mail/providers/Folder;
    .param p5, "rawSubject"    # Ljava/lang/String;

    .prologue
    .line 2337
    invoke-static/range {p5 .. p5}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2338
    const-string/jumbo v1, "\'"

    const-string/jumbo v10, "\'\'"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 2340
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rawSubject = \'"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, "\'"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " And "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, "accountKey"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2342
    .local v4, "condition":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    const/4 v10, 0x5

    invoke-static {v1, p0, p1, v10}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v8

    .line 2344
    .local v8, "sendboxId":J
    invoke-virtual/range {p4 .. p4}, Lcom/kingsoft/mail/providers/Folder;->isStarredFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " And flagFavorite= 1"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2358
    :goto_0
    const-string/jumbo v1, "chatmessages"

    invoke-static {v1, p0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 2359
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/kingsoft/mail/chat/ChatMessage;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 2360
    .local v3, "projection":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2361
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v6, "timeStamp DESC"

    .line 2362
    .local v6, "sortOrder":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2363
    .local v7, "cursor":Landroid/database/Cursor;
    return-object v7

    .line 2346
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/kingsoft/mail/providers/Folder;->isUnreadFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v10, 0x6

    invoke-static {p0, p1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getSqlStrFromMailBox(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v10, 0x5

    invoke-static {p0, p1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getSqlStrFromMailBox(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " And flagRead= 0"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2351
    :cond_2
    move-object/from16 v0, p4

    iget v1, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    int-to-long v10, v1

    cmp-long v1, v10, p2

    if-eqz v1, :cond_3

    cmp-long v1, p2, v8

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget v10, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    int-to-long v10, v10

    invoke-static {v1, v10, v11}, Lcom/kingsoft/mail/chat/ChatViewUtils;->isBelongToInbox(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " And (mailboxKey= "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    iget v10, v0, Lcom/kingsoft/mail/providers/Folder;->id:I

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, "mailboxKey"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2356
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, " And mailboxKey= "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static getConversationListIcon(Lcom/kingsoft/mail/preferences/MailPrefs;)I
    .locals 1
    .param p0, "mailPrefs"    # Lcom/kingsoft/mail/preferences/MailPrefs;

    .prologue
    .line 5006
    invoke-virtual {p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowSenderImages()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 520
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->sDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 522
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 523
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v4

    .line 560
    :goto_0
    return-object v3

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->checkDatabases()V

    .line 531
    new-instance v2, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;

    const-string/jumbo v3, "EmailProvider.db"

    invoke-direct {v2, p1, v3}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 533
    .local v2, "helper":Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;
    invoke-virtual {v2}, Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 534
    new-instance v1, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;

    const-string/jumbo v3, "EmailProviderBody.db"

    invoke-direct {v1, p1, v3}, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    .local v1, "bodyHelper":Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;
    invoke-virtual {v1}, Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 537
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 538
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "bodyFileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "attach \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" as BodyDatabase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 544
    .end local v0    # "bodyFileName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v3}, Lcom/kingsoft/email/provider/EmailProvider;->restoreIfNeeded(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 546
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "Message_Updates"

    invoke-static {v3, v5}, Lcom/kingsoft/email/provider/EmailProvider;->deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "Message_Deletes"

    invoke-static {v3, v5}, Lcom/kingsoft/email/provider/EmailProvider;->deleteMessageOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "Mailbox"

    const-string/jumbo v6, "accountKey"

    const-string/jumbo v7, "_id"

    const-string/jumbo v8, "Account"

    invoke-static {v3, v5, v6, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "Message"

    const-string/jumbo v6, "accountKey"

    const-string/jumbo v7, "_id"

    const-string/jumbo v8, "Account"

    invoke-static {v3, v5, v6, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "Policy"

    const-string/jumbo v6, "_id"

    const-string/jumbo v7, "policyKey"

    const-string/jumbo v8, "Account"

    invoke-static {v3, v5, v6, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->deleteUnlinked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3}, Lcom/kingsoft/email/provider/EmailProvider;->fixParentKeys(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 559
    invoke-direct {p0}, Lcom/kingsoft/email/provider/EmailProvider;->initUiProvider()V

    .line 560
    iget-object v3, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v4

    goto/16 :goto_0

    .line 561
    .end local v1    # "bodyHelper":Lcom/kingsoft/email/provider/DBHelper$BodyDatabaseHelper;
    .end local v2    # "helper":Lcom/kingsoft/email/provider/DBHelper$DatabaseHelper;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getExternalUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "segment"    # Ljava/lang/String;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 4501
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->BASE_EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExternalUriStringEmail2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "segment"    # Ljava/lang/String;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 4507
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->BASE_EXTERAL_URI2:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v3, 0x0

    .line 5702
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5703
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "uifolder"

    invoke-static {v1, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5707
    .local v6, "fc":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 5708
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Null folder cursor for mailboxId %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v1, v2, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5720
    :goto_0
    return-object v3

    .line 5712
    :cond_0
    const/4 v7, 0x0

    .line 5714
    .local v7, "uiFolder":Lcom/kingsoft/mail/providers/Folder;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5715
    new-instance v7, Lcom/kingsoft/mail/providers/Folder;

    .end local v7    # "uiFolder":Lcom/kingsoft/mail/providers/Folder;
    invoke-direct {v7, v6}, Lcom/kingsoft/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5718
    .restart local v7    # "uiFolder":Lcom/kingsoft/mail/providers/Folder;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 5720
    goto :goto_0

    .line 5718
    .end local v7    # "uiFolder":Lcom/kingsoft/mail/providers/Folder;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getFolderCapabilities(Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;IJ)I
    .locals 4
    .param p1, "info"    # Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    .param p2, "type"    # I
    .param p3, "mailboxId"    # J

    .prologue
    const/4 v3, 0x6

    .line 4380
    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    .line 4381
    const/16 v0, 0x20

    .line 4422
    :cond_0
    :goto_0
    return v0

    .line 4385
    :cond_1
    const/4 v0, 0x0

    .line 4386
    .local v0, "caps":I
    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    .line 4387
    const/16 v0, 0x20

    .line 4389
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v1, p1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLookback:Z

    if-eqz v1, :cond_3

    .line 4391
    or-int/lit16 v0, v0, 0x200

    .line 4394
    :cond_3
    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    if-eq p2, v3, :cond_4

    const/4 v1, 0x7

    if-eq p2, v1, :cond_4

    if-nez p2, :cond_6

    .line 4397
    :cond_4
    or-int/lit8 v0, v0, 0x8

    .line 4398
    if-eqz p1, :cond_5

    const-string/jumbo v1, "pop3"

    iget-object v2, p1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_6

    .line 4399
    :cond_5
    or-int/lit16 v0, v0, 0x4000

    .line 4404
    :cond_6
    if-ne p2, v3, :cond_7

    .line 4405
    const/16 v0, 0x4828

    .line 4410
    :cond_7
    invoke-static {p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->isVirtualMailbox(J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4411
    or-int/lit16 v0, v0, 0x1000

    .line 4417
    :cond_8
    if-eqz p1, :cond_9

    iget-boolean v1, p1, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerMoveTo:Z

    if-nez v1, :cond_0

    .line 4418
    :cond_9
    const v1, -0x14009

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private getFolderDisplayName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folderType"    # I
    .param p2, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 5967
    sparse-switch p1, :sswitch_data_0

    .line 5995
    .end local p2    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 5969
    .restart local p2    # "defaultName":Ljava/lang/String;
    :sswitch_0
    const v0, 0x7f100222

    .line 5995
    .local v0, "resId":I
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 5972
    .end local v0    # "resId":I
    :sswitch_1
    const v0, 0x7f100224

    .line 5973
    .restart local v0    # "resId":I
    goto :goto_1

    .line 5975
    .end local v0    # "resId":I
    :sswitch_2
    const v0, 0x7f100221

    .line 5976
    .restart local v0    # "resId":I
    goto :goto_1

    .line 5978
    .end local v0    # "resId":I
    :sswitch_3
    const v0, 0x7f100227

    .line 5979
    .restart local v0    # "resId":I
    goto :goto_1

    .line 5981
    .end local v0    # "resId":I
    :sswitch_4
    const v0, 0x7f100225

    .line 5982
    .restart local v0    # "resId":I
    goto :goto_1

    .line 5984
    .end local v0    # "resId":I
    :sswitch_5
    const v0, 0x7f100223

    .line 5985
    .restart local v0    # "resId":I
    goto :goto_1

    .line 5987
    .end local v0    # "resId":I
    :sswitch_6
    const v0, 0x7f100226

    .line 5988
    .restart local v0    # "resId":I
    goto :goto_1

    .line 5990
    .end local v0    # "resId":I
    :sswitch_7
    const v0, 0x7f100228

    .line 5991
    .restart local v0    # "resId":I
    goto :goto_1

    .line 5967
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method private getFolderListCursor(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "inputCursor"    # Landroid/database/Cursor;
    .param p2, "accountId"    # J
    .param p4, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 5943
    new-instance v2, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    invoke-direct {v2, p4}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;)V

    .line 5944
    .local v2, "mc":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 5946
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->remapFolderCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;J[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5948
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 5951
    :cond_0
    return-object v2

    .line 5948
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getFolderListMap()Lcom/kingsoft/common/content/ProjectionMap;
    .locals 5

    .prologue
    .line 3582
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sFolderListMap:Lcom/kingsoft/common/content/ProjectionMap;

    if-nez v0, :cond_0

    .line 3583
    invoke-static {}, Lcom/kingsoft/common/content/ProjectionMap;->builder()Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "persistentId"

    const-string/jumbo v2, "serverId"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "folderUri"

    const-string/jumbo v2, "uifolder"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "name"

    const-string/jumbo v2, "displayName"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "flags"

    const-string/jumbo v2, "flags"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "hasChildren"

    const-string/jumbo v2, "flags&1"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "capabilities"

    const-string/jumbo v2, "CASE WHEN (flags&16) !=0 THEN 8 ELSE 0 END"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncWindow"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationListUri"

    const-string/jumbo v2, "uimessages"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "childFoldersListUri"

    const-string/jumbo v2, "uisubfolders"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "unreadCount"

    const-string/jumbo v2, "unreadCount"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "totalCount"

    const-string/jumbo v2, "CASE WHEN totalCount<0 OR type=3 OR type=4 OR type=6 THEN messageCount ELSE totalCount END"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "refreshUri"

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->QUERY_UIREFRESH:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncStatus"

    const-string/jumbo v2, "uiSyncStatus"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "lastSyncTime"

    const-string/jumbo v2, "syncTime"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "lastSyncResult"

    const-string/jumbo v2, "uiLastSyncResult"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->FOLDER_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "iconResId"

    const-string/jumbo v2, "CASE type WHEN 0 THEN 2130837916 WHEN 3 THEN 2130837915 WHEN 4 THEN 2130837917 WHEN 5 THEN 2130837918 WHEN 6 THEN 2130837920 WHEN 9 THEN 2130837919 ELSE -1 END"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "loadMoreUri"

    const-string/jumbo v2, "uiloadmore"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "hierarchicalDesc"

    const-string/jumbo v2, "hierarchicalName"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "parentUri"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "case when parentKey=-1 then NULL else "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "uifolder"

    const-string/jumbo v4, "parentKey"

    invoke-static {v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "unreadSenders"

    const-string/jumbo v2, "(SELECT group_concat(fromList) FROM (SELECT fromList FROM Message WHERE mailboxKey=Mailbox._id AND flagRead=0 GROUP BY fromList ORDER BY timeStamp DESC))"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->build()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sFolderListMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3644
    :cond_0
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sFolderListMap:Lcom/kingsoft/common/content/ProjectionMap;

    return-object v0
.end method

.method private static getFolderTypeFromMailboxType(I)I
    .locals 1
    .param p0, "mailboxType"    # I

    .prologue
    .line 6007
    packed-switch p0, :pswitch_data_0

    .line 6028
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 6009
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 6011
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 6013
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 6015
    :pswitch_4
    const/16 v0, 0x20

    goto :goto_0

    .line 6017
    :pswitch_5
    const/16 v0, 0x10

    goto :goto_0

    .line 6019
    :pswitch_6
    const/16 v0, 0x40

    goto :goto_0

    .line 6021
    :pswitch_7
    const/16 v0, 0x80

    goto :goto_0

    .line 6023
    :pswitch_8
    const/16 v0, 0x800

    goto :goto_0

    .line 6026
    :pswitch_9
    const/16 v0, 0x1001

    goto :goto_0

    .line 6007
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
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getMailbox(Landroid/net/Uri;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 8146
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 8147
    .local v0, "id":J
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    return-object v2
.end method

.method private getMailboxAllMessageCount(J)I
    .locals 8
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v5, 0x0

    .line 3246
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3247
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 3248
    .local v3, "mailboxIdStr":Ljava/lang/String;
    const-string/jumbo v4, "select count(*) from (select _id from Message_Updates where mailboxKey = ? union select _id from Message_Deletes where mailboxKey = ? union select _id from Message where mailboxKey = ?)"

    .line 3253
    .local v4, "sql":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v5

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3255
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3256
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3260
    if-eqz v0, :cond_0

    .line 3261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v5

    .line 3257
    :catch_0
    move-exception v2

    .line 3260
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 3261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3260
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 3261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v5
.end method

.method private getMailboxByAccountIdAndType(JI)Lcom/android/emailcommon/provider/Mailbox;
    .locals 2
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 6862
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 6864
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 6865
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/email/provider/EmailProvider;->createMailbox(JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 6867
    :cond_0
    return-object v0
.end method

.method private getMailboxMessageCount(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3239
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3240
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 3241
    .local v1, "mailboxId":Ljava/lang/String;
    const-string/jumbo v2, "select count(*) from Message where mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public static final getMergedItemCursorsByMessageId(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 11
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 2315
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    .line 2316
    .local v8, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    const-string/jumbo v6, "rawSubject = \'%s\' And accountKey=\'%s\' And mailboxKey=\'%s\' "

    .line 2320
    .local v6, "condition":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 2321
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2322
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    const-string/jumbo v1, "\'"

    const-string/jumbo v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    .line 2324
    :cond_0
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uimessages"

    iget-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mRawSubject:Ljava/lang/String;

    aput-object v9, v3, v5

    const/4 v5, 0x1

    iget-wide v9, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v5

    const/4 v5, 0x2

    iget-wide v9, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2332
    :goto_0
    return-object v7

    :cond_1
    move-object v7, v4

    goto :goto_0
.end method

.method private getMessageFromLastSegment(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7498
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 7499
    .local v0, "messageId":J
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    return-object v2
.end method

.method private static getMessageListMap(Z)Lcom/kingsoft/common/content/ProjectionMap;
    .locals 5
    .param p0, "useMerge"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3319
    if-nez p0, :cond_1

    .line 3320
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageListMap:Lcom/kingsoft/common/content/ProjectionMap;

    if-nez v0, :cond_0

    .line 3321
    invoke-static {}, Lcom/kingsoft/common/content/ProjectionMap;->builder()Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationUri"

    const-string/jumbo v2, "uimessage"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "messageListUri"

    const-string/jumbo v2, "uimessage"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "subject"

    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "snippet"

    const-string/jumbo v2, "substr(snippet,1,150)"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationInfo"

    invoke-virtual {v0, v1, v4}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "dateReceivedMs"

    const-string/jumbo v2, "timeStamp"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "hasAttachments"

    const-string/jumbo v2, "flagAttachment"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "numMessages"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "numDrafts"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "sendingState"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "priority"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "read"

    const-string/jumbo v2, "flagRead"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "seen"

    const-string/jumbo v2, "flagSeen"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "starred"

    const-string/jumbo v2, "flagFavorite"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationFlags"

    const-string/jumbo v2, "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END + CASE WHEN (flags&524288) !=0 THEN 8 ELSE 0 END + CASE WHEN (flags&262144) !=0 THEN 4 ELSE 0 END"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "accountUri"

    const-string/jumbo v2, "uiaccount"

    const-string/jumbo v3, "accountKey"

    invoke-static {v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "senderInfo"

    const-string/jumbo v2, "fromList"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "mailboxKey"

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "flagLoaded"

    const-string/jumbo v2, "flagLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncServerId"

    const-string/jumbo v2, "syncServerId"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->build()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageListMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3365
    :cond_0
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageListMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3415
    :goto_0
    return-object v0

    .line 3367
    :cond_1
    if-eqz p0, :cond_3

    .line 3368
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageUseMergeListMap:Lcom/kingsoft/common/content/ProjectionMap;

    if-nez v0, :cond_2

    .line 3369
    invoke-static {}, Lcom/kingsoft/common/content/ProjectionMap;->builder()Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationUri"

    const-string/jumbo v2, "uimessage"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "messageListUri"

    const-string/jumbo v2, "uimessage"

    invoke-static {v2}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "subject"

    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "snippet"

    const-string/jumbo v2, "substr(snippet,1,150)"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationInfo"

    invoke-virtual {v0, v1, v4}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "dateReceivedMs"

    const-string/jumbo v2, "timeStamp"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "hasAttachments"

    const-string/jumbo v2, "flagAttachment"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "numMessages"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "numDrafts"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "sendingState"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "priority"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "read"

    const-string/jumbo v2, "flagRead_"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "seen"

    const-string/jumbo v2, "flagSeen"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "starred"

    const-string/jumbo v2, "flagFavorite_"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationFlags"

    const-string/jumbo v2, "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END + CASE WHEN (flags&524288) !=0 THEN 8 ELSE 0 END + CASE WHEN (flags&262144) !=0 THEN 4 ELSE 0 END"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "accountUri"

    const-string/jumbo v2, "uiaccount"

    const-string/jumbo v3, "accountKey"

    invoke-static {v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "senderInfo"

    const-string/jumbo v2, "fromList"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "mailboxKey"

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "flagLoaded"

    const-string/jumbo v2, "flagLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "syncServerId"

    const-string/jumbo v2, "syncServerId"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->build()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageUseMergeListMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3413
    :cond_2
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageUseMergeListMap:Lcom/kingsoft/common/content/ProjectionMap;

    goto/16 :goto_0

    .line 3415
    :cond_3
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageListMap:Lcom/kingsoft/common/content/ProjectionMap;

    goto/16 :goto_0
.end method

.method private static getMessageViewMap()Lcom/kingsoft/common/content/ProjectionMap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3451
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageViewMap:Lcom/kingsoft/common/content/ProjectionMap;

    if-nez v0, :cond_0

    .line 3452
    invoke-static {}, Lcom/kingsoft/common/content/ProjectionMap;->builder()Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "Message._id"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "serverMessageId"

    const-string/jumbo v2, "syncServerId"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "messageUri"

    const-string/jumbo v2, "uimessage"

    const-string/jumbo v3, "Message"

    invoke-static {v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithFQId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "conversationId"

    const-string/jumbo v2, "uimessage"

    const-string/jumbo v3, "Message"

    invoke-static {v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithFQId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "subject"

    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "snippet"

    const-string/jumbo v2, "snippet"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "fromAddress"

    const-string/jumbo v2, "fromList"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "toAddresses"

    const-string/jumbo v2, "toList"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "ccAddresses"

    const-string/jumbo v2, "ccList"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "bccAddresses"

    const-string/jumbo v2, "bccList"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "replyToAddress"

    const-string/jumbo v2, "replyToList"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "dateReceivedMs"

    const-string/jumbo v2, "timeStamp"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "bodyHtml"

    const-string/jumbo v2, "substr(htmlContent, 1, 300000)"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "bodyText"

    const-string/jumbo v2, "textContent"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "refMessageId"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "draftType"

    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->NOT_A_DRAFT_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "appendRefMessageContent"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "hasAttachments"

    const-string/jumbo v2, "flagAttachment"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "attachmentListUri"

    const-string/jumbo v2, "uiattachments"

    const-string/jumbo v3, "Message"

    invoke-static {v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithFQId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "messageFlags"

    const-string/jumbo v2, "CASE WHEN (flags&4) !=0 THEN 16 ELSE 0 END + CASE WHEN (flags&64) !=0 THEN 32 WHEN (flags&128) !=0 THEN 64 WHEN (flags&256) !=0 THEN 128 ELSE 0 END"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "draftType"

    const-string/jumbo v2, "CASE WHEN (flags&1048576) !=0 THEN 1 WHEN (flags&2097152) !=0 THEN 3 WHEN (flags&1) !=0 THEN 2 WHEN (flags&2) !=0 THEN 4 ELSE 0 END"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "messageAccountUri"

    const-string/jumbo v2, "uiaccount"

    const-string/jumbo v3, "accountKey"

    invoke-static {v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "starred"

    const-string/jumbo v2, "flagFavorite"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "read"

    const-string/jumbo v2, "flagRead"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "seen"

    const-string/jumbo v2, "flagSeen"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "spamWarningString"

    invoke-virtual {v0, v1, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "spamWarningLevel"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "spamWarningLinkType"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "viaDomain"

    invoke-virtual {v0, v1, v5}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "flagCalcBody"

    const-string/jumbo v2, "flagCalcBody"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "quoteIndex"

    const-string/jumbo v2, "quoteIndex"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "shortBody"

    const-string/jumbo v2, "substr(shortBody, 1, 1000)"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "flagLoaded"

    const-string/jumbo v2, "flagLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "mailboxKey"

    const-string/jumbo v2, "mailboxKey"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "turncated"

    const-string/jumbo v2, "turncated"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "messageSize"

    const-string/jumbo v2, "messageSize"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->build()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageViewMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3525
    :cond_0
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sMessageViewMap:Lcom/kingsoft/common/content/ProjectionMap;

    return-object v0
.end method

.method private getQueryParamMergeCount(Landroid/net/Uri;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "mergeCount":I
    const-string/jumbo v3, "mergeCount"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "mergeCountStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 708
    :goto_0
    return v1

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getQuickResponseMap()Lcom/kingsoft/common/content/ProjectionMap;
    .locals 5

    .prologue
    .line 3713
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sQuickResponseMap:Lcom/kingsoft/common/content/ProjectionMap;

    if-nez v0, :cond_0

    .line 3714
    invoke-static {}, Lcom/kingsoft/common/content/ProjectionMap;->builder()Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "quickResponse"

    const-string/jumbo v2, "quickResponse"

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "uri"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "quickresponse"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/common/content/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/common/content/ProjectionMap$Builder;->build()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sQuickResponseMap:Lcom/kingsoft/common/content/ProjectionMap;

    .line 3724
    :cond_0
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->sQuickResponseMap:Lcom/kingsoft/common/content/ProjectionMap;

    return-object v0
.end method

.method private getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 8401
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8402
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1, p2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 8404
    .local v1, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v1, :cond_0

    .line 8405
    new-instance v1, Lcom/android/emailcommon/provider/Mailbox;

    .end local v1    # "m":Lcom/android/emailcommon/provider/Mailbox;
    invoke-direct {v1}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 8406
    .restart local v1    # "m":Lcom/android/emailcommon/provider/Mailbox;
    iput-wide p1, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 8407
    const-string/jumbo v2, "__search_mailbox__"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 8408
    iput-boolean v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 8409
    const-string/jumbo v2, "__search_mailbox__"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 8410
    iput v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 8411
    iput v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 8412
    iput v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    .line 8413
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mParentKey:J

    .line 8414
    invoke-virtual {v1, v0}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 8416
    :cond_0
    return-object v1
.end method

.method private static getSqlStrFromMailBox(JI)Ljava/lang/String;
    .locals 5
    .param p0, "accountId"    # J
    .param p2, "type"    # I

    .prologue
    .line 2368
    const-string/jumbo v2, ""

    .line 2369
    .local v2, "condition":Ljava/lang/String;
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, p0, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 2370
    .local v0, "boxId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 2371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " And mailboxKey <> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2373
    :cond_0
    return-object v2
.end method

.method private getUiFolderCursorRowFromMailboxCursorRow(Landroid/database/MatrixCursor;ILandroid/database/Cursor;II)Landroid/database/Cursor;
    .locals 4
    .param p1, "mc"    # Landroid/database/MatrixCursor;
    .param p2, "projectionLength"    # I
    .param p3, "mailboxCursor"    # Landroid/database/Cursor;
    .param p4, "nameColumn"    # I
    .param p5, "typeColumn"    # I

    .prologue
    .line 5810
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 5811
    .local v0, "builder":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 5816
    if-ne p4, v1, :cond_0

    .line 5820
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5821
    .local v2, "type":I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderDisplayName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5811
    .end local v2    # "type":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5824
    :cond_0
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 5827
    :cond_1
    return-object p1
.end method

.method private static getVirtualMailboxAccountId(J)J
    .locals 2
    .param p0, "mailboxId"    # J

    .prologue
    .line 4851
    const/16 v0, 0x20

    shr-long v0, p0, v0

    return-wide v0
.end method

.method private static getVirtualMailboxAccountIdString(J)Ljava/lang/String;
    .locals 2
    .param p0, "mailboxId"    # J

    .prologue
    .line 4855
    const/16 v0, 0x20

    shr-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVirtualMailboxCursor(J)Landroid/database/Cursor;
    .locals 4
    .param p1, "mailboxId"    # J

    .prologue
    .line 5012
    new-instance v0, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    sget-object v1, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;I)V

    .line 5014
    .local v0, "mc":Landroid/database/MatrixCursor;
    invoke-static {p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxAccountId(J)J

    move-result-wide v1

    invoke-static {p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxType(J)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxRow(JI)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 5016
    return-object v0
.end method

.method public static getVirtualMailboxId(JI)J
    .locals 4
    .param p0, "accountId"    # J
    .param p2, "type"    # I

    .prologue
    .line 4839
    const/16 v0, 0x20

    shl-long v0, p0, v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getVirtualMailboxMessagesCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;JZLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "uiProjection"    # [Ljava/lang/String;
    .param p2, "mailboxId"    # J
    .param p4, "unseenOnly"    # Z
    .param p5, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4153
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4154
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "color"

    sget-object v9, Lcom/kingsoft/email/provider/EmailProvider;->CONVERSATION_COLOR:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    invoke-static {p2, p3}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxType(J)I

    move-result v5

    .line 4157
    .local v5, "virtualMailboxId":I
    invoke-static {p2, p3}, Lcom/kingsoft/email/provider/EmailProvider;->isCombinedMailbox(J)Z

    move-result v0

    .line 4160
    .local v0, "isCombinedAccount":Z
    const-string/jumbo v3, ""

    .line 4166
    .local v3, "sqlStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4172
    if-eqz p4, :cond_0

    .line 4173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "flagSeen = 0 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "flagRead = 0 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4176
    :cond_0
    const/4 v2, 0x0

    .line 4187
    .local v2, "selectionArgs":[Ljava/lang/String;
    :goto_0
    invoke-static {p2, p3}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxType(J)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 4224
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No virtual mailbox for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4178
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    .line 4179
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No virtual mailbox for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4184
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "accountKey = ? AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4185
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxAccountIdString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 4194
    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0 OR type=1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4227
    :goto_1
    if-nez p5, :cond_3

    :goto_2
    invoke-static {v6}, Lcom/kingsoft/email/provider/EmailProvider;->getMessageListMap(Z)Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v6

    invoke-static {v6, p1, v4}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4228
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/kingsoft/email/provider/EmailProvider;->appendConversationInfoColumns(Ljava/lang/StringBuilder;)V

    .line 4230
    if-eqz p5, :cond_4

    .line 4232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " , messageSize as messageSize ,0 as mergeCount FROM Message WHERE flagLoaded IN (2,1) AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    :goto_3
    const-string/jumbo v6, " ORDER BY timeStamp DESC"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    .line 4202
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :sswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "flagFavorite=1 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0 OR type=1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4208
    goto :goto_1

    .line 4216
    :sswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0 OR type=1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4222
    goto :goto_1

    :cond_3
    move v6, v7

    .line 4227
    goto :goto_2

    .line 4261
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " , messageSize_ as messageSize , mergeSenders , mergeCount FROM (select _id as mid,count(*) as mergeCount,min(flagRead)  as flagRead_ ,max(flagFavorite)  as flagFavorite_ ,MAX(timeStamp),GROUP_CONCAT(fromList) as mergeSenders, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->CONVERSATION_MESSAGE_SIZE_STRING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "messageSize_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (select * from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " order by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "timeStamp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " desc,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " desc ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " 1==1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, " "

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " GROUP BY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "accountKey"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , case when "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "rawSubject"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = \'\' then "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " else "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "rawSubject"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " end "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") t1 left join "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "= t1.mid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 4187
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private getVirtualMailboxRow(JI)[Ljava/lang/Object;
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 5021
    invoke-static/range {p1 .. p3}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v2

    .line 5022
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 5023
    .local v4, "idString":Ljava/lang/String;
    sget-object v9, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    array-length v9, v9

    new-array v7, v9, [Ljava/lang/Object;

    .line 5024
    .local v7, "values":[Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5025
    const/4 v9, 0x2

    const-string/jumbo v10, "uifolder"

    invoke-static {v10, v4}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5027
    const/4 v9, 0x3

    invoke-static/range {p3 .. p3}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderTypeFromMailboxType(I)I

    move-result v10

    const-string/jumbo v11, ""

    invoke-direct {p0, v10, v11}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderDisplayName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5030
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5031
    const/4 v9, 0x5

    const/16 v10, 0x1020

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5033
    const/4 v9, 0x7

    const-string/jumbo v10, "uimessages"

    invoke-static {v10, v4}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5035
    const/16 v9, 0xc

    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->QUERY_UIREFRESH:Ljava/lang/String;

    invoke-static {v10, v4}, Lcom/kingsoft/email/provider/EmailProvider;->combinedUriString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5039
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 5040
    .local v0, "accountIdString":Ljava/lang/String;
    sparse-switch p3, :sswitch_data_0

    .line 5126
    :goto_0
    return-object v7

    .line 5042
    :sswitch_0
    const-wide/32 v9, 0x10000000

    cmp-long v9, p1, v9

    if-nez v9, :cond_0

    .line 5056
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v11, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0 OR type=1) AND flagRead=0"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 5064
    .local v6, "unreadCount":I
    const/16 v9, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5065
    const/16 v9, 0xf

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5068
    .end local v6    # "unreadCount":I
    :cond_0
    const/16 v9, 0x10

    const v10, 0x7f02019c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    goto :goto_0

    .line 5074
    :sswitch_1
    const-wide/32 v9, 0x10000000

    cmp-long v9, p1, v9

    if-nez v9, :cond_1

    .line 5075
    const-string/jumbo v1, ""

    .line 5076
    .local v1, "accountKeyClause":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5081
    .local v8, "whereArgs":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "flagRead"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "=0 AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mailboxKey"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " IN (SELECT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_id"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " FROM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "Mailbox"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " OR "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v8}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 5089
    .restart local v6    # "unreadCount":I
    const/16 v9, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5091
    const/16 v9, 0x10

    const v10, 0x7f0201a2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5092
    const/16 v9, 0xf

    const/16 v10, 0x800

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    goto/16 :goto_0

    .line 5078
    .end local v1    # "accountKeyClause":Ljava/lang/String;
    .end local v6    # "unreadCount":I
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "accountKey= ? AND "

    .line 5079
    .restart local v1    # "accountKeyClause":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 5099
    .end local v1    # "accountKeyClause":Ljava/lang/String;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :sswitch_2
    const-wide/32 v9, 0x10000000

    cmp-long v9, p1, v9

    if-nez v9, :cond_2

    .line 5100
    const-string/jumbo v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0 OR type=1) AND "

    .line 5105
    .restart local v1    # "accountKeyClause":Ljava/lang/String;
    const/4 v8, 0x0

    .line 5115
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "flagFavorite"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "=1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v8}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5118
    .local v5, "starredCount":I
    const/16 v9, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5120
    const/16 v9, 0x10

    const v10, 0x7f02019f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    .line 5121
    const/16 v9, 0xf

    const/16 v10, 0x80

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    goto/16 :goto_0

    .line 5107
    .end local v1    # "accountKeyClause":Ljava/lang/String;
    .end local v5    # "starredCount":I
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "accountKey= ? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type=0 OR type=1) AND "

    .line 5113
    .restart local v1    # "accountKeyClause":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    .restart local v8    # "whereArgs":[Ljava/lang/String;
    goto :goto_2

    .line 5040
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static getVirtualMailboxType(J)I
    .locals 2
    .param p0, "mailboxId"    # J

    .prologue
    .line 4859
    const-wide/16 v0, 0xf

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private handleMessageUpdateNotifications(Landroid/net/Uri;Ljava/lang/String;JJLandroid/content/ContentValues;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "oldMailboxId"    # J
    .param p5, "accountId"    # J
    .param p7, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 7666
    const-string/jumbo v1, "is_uiprovider"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7667
    invoke-direct {p0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIConversation(Landroid/net/Uri;)V

    .line 7670
    :cond_0
    const-string/jumbo v1, "notifyUI"

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v10

    .line 7671
    .local v10, "notifyUI":Z
    if-eqz v10, :cond_3

    .line 7673
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/kingsoft/email/provider/EmailProvider;->isNeedNotifyUIForMessage(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7674
    const-string/jumbo v1, "flagRead"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "flagFavorite"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7676
    :cond_1
    invoke-direct {p0, p2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIMessage(Ljava/lang/String;)V

    .line 7678
    :cond_2
    const-wide/16 v2, -0x1

    .line 7679
    .local v2, "newMailboxId":J
    const-string/jumbo v1, "mailboxKey"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7681
    const-string/jumbo v1, "mailboxKey"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 7687
    :goto_0
    const/4 v8, 0x1

    move-object v1, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJJZLandroid/content/ContentValues;)V

    .line 7690
    .end local v2    # "newMailboxId":J
    :cond_3
    return-void

    .line 7685
    .restart local v2    # "newMailboxId":J
    :cond_4
    move-wide v2, p3

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1332
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    monitor-enter v2

    .line 1336
    :try_start_0
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1337
    monitor-exit v2

    .line 1532
    :goto_0
    return-void

    .line 1339
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/integrityCheck"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/accountBackup"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    .line 1343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/status"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->FOLDER_STATUS_URI:Landroid/net/Uri;

    .line 1345
    const v1, 0x7f1000d5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->EMAIL_APP_MIME_TYPE:Ljava/lang/String;

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".uinotifications"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, "uiNotificationAuthority":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uimessages"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/chatmessages"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CHAT_VIEW_NOTIFIER:Landroid/net/Uri;

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uifolder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uifolders"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uiaccount"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ACCOUNT_NOTIFIER:Landroid/net/Uri;

    .line 1365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uiattachment"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ATTACHMENT_NOTIFIER:Landroid/net/Uri;

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uiattachments"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ATTACHMENTS_NOTIFIER:Landroid/net/Uri;

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uiaccts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uimessage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_MESSAGE_NOTIFIER:Landroid/net/Uri;

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/uirecentfolders"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_RECENT_FOLDERS_NOTIFIER:Landroid/net/Uri;

    .line 1377
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "account"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1380
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "account/#"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1381
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "accountCheck/#"

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1387
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "resetNewMessageCount"

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1389
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "resetNewMessageCount/#"

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1393
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "mailbox"

    const/16 v5, 0x1000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1398
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "mailbox/*"

    const/16 v5, 0x1001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1399
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "mailboxNotification/#"

    const/16 v5, 0x1002

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1401
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "mailboxMostRecentMessage/#"

    const/16 v5, 0x1003

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1403
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "mailboxCount/#"

    const/16 v5, 0x1004

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1407
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "message"

    const/16 v5, 0x2000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1411
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "message/#"

    const/16 v5, 0x2001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1414
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "attachment"

    const/16 v5, 0x3000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1417
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "attachment/#"

    const/16 v5, 0x3001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1421
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "attachment/message/#"

    const/16 v5, 0x3002

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1423
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "attachment/cachedFile"

    const/16 v5, 0x3003

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1427
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "body"

    const v5, 0xa000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1429
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "body/#"

    const v5, 0xa001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1432
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "hostauth"

    const/16 v5, 0x4000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1434
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "hostauth/*"

    const/16 v5, 0x4001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1442
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "syncedMessage/#"

    const/16 v5, 0x2002

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1444
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "messageBySelection"

    const/16 v5, 0x2003

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1447
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "messageMove"

    const/16 v5, 0x2004

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1449
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "messageChange"

    const/16 v5, 0x2005

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1458
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "deletedMessage"

    const/16 v5, 0x6000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1461
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "deletedMessage/#"

    const/16 v5, 0x6001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1465
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "updatedMessage"

    const/16 v5, 0x5000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1468
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "updatedMessage/#"

    const/16 v5, 0x5001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1471
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sput-object v1, Lcom/kingsoft/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 1472
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    const-string/jumbo v3, "newMessageCount"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "policy"

    const/16 v5, 0x7000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1476
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "policy/#"

    const/16 v5, 0x7001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1479
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "quickresponse"

    const v5, 0x8000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1482
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "quickresponse/#"

    const v5, 0x8001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1485
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "quickresponse/account/#"

    const v5, 0x8002

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1488
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uifolders/#"

    const v5, 0x9000

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1490
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uifullfolders/#"

    const v5, 0x9011

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1492
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiallfolders/#"

    const v5, 0x9012

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1494
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uisubfolders/#"

    const v5, 0x9001

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1496
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "chatmessages/#"

    const v5, 0x9013

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1498
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uimessages/#"

    const v5, 0x9002

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1500
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uimessage/#"

    const v5, 0x9003

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1502
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiundo"

    const v5, 0x9004

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1503
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingsoft/email/provider/EmailProvider;->QUERY_UIREFRESH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x9005

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1508
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uifolder/*"

    const v5, 0x9006

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1509
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiaccount/#"

    const v5, 0x9007

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1511
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiaccts"

    const v5, 0x9008

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1512
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiattachments/#"

    const v5, 0x9009

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1514
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiattachment/#"

    const v5, 0x900a

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1516
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uisearch/#"

    const v5, 0x900b

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1517
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiaccountdata/#"

    const v5, 0x900c

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1519
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiloadmore/#"

    const v5, 0x900d

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1521
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uiconversation/#"

    const v5, 0x900e

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1523
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uirecentfolders/#"

    const v5, 0x900f

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1525
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "uidefaultrecentfolders/#"

    const v5, 0x9010

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1527
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "pickTrashFolder/#"

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1529
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v4, "pickSentFolder/#"

    const/4 v5, 0x6

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1531
    monitor-exit v2

    goto/16 :goto_0

    .end local v0    # "uiNotificationAuthority":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initUiProvider()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "update Mailbox set uiSyncStatus=0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public static isCombinedMailbox(J)Z
    .locals 4
    .param p0, "mailboxId"    # J

    .prologue
    .line 4847
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x10000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedNotifyUIForMailboxList(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 7720
    const-string/jumbo v0, "displayName"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "parentKey"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7722
    :cond_0
    const/4 v0, 0x1

    .line 7724
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedNotifyUIForMessage(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 7700
    const-string/jumbo v0, "flagRead"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mailboxKey"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "flagFavorite"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "snippet"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "flagAttachment"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "flagLoaded"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7706
    :cond_0
    const/4 v0, 0x1

    .line 7708
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualMailbox(J)Z
    .locals 2
    .param p0, "mailboxId"    # J

    .prologue
    .line 4843
    const-wide v0, 0x100000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markAllSeen(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailboxId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 7408
    invoke-direct {p0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7409
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "Message"

    .line 7410
    .local v1, "table":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 7411
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "flagSeen"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7412
    const-string/jumbo v4, "mailboxKey = ?"

    .line 7413
    .local v4, "whereClause":Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    .line 7415
    .local v3, "whereArgs":[Ljava/lang/String;
    const-string/jumbo v5, "Message"

    const-string/jumbo v6, "mailboxKey = ?"

    invoke-virtual {v0, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method private notificationQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3207
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3208
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 3210
    .local v0, "accountId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3211
    .local v4, "sqlBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3212
    const-string/jumbo v5, "mailboxKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3213
    const-string/jumbo v5, "SUM(CASE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "flagRead"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " WHEN 0 THEN 1 ELSE 0 END), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3215
    const-string/jumbo v5, "SUM(CASE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "flagSeen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " WHEN 0 THEN 1 ELSE 0 END)\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3217
    const-string/jumbo v5, "FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3218
    const-string/jumbo v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3219
    const-string/jumbo v5, "WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3220
    const-string/jumbo v5, "accountKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = ?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3221
    const-string/jumbo v5, "GROUP BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3222
    const-string/jumbo v5, "mailboxKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3226
    .local v3, "sql":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    .line 3228
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private notifyUI(Landroid/net/Uri;J)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # J

    .prologue
    .line 8142
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 8143
    return-void
.end method

.method private notifyUI(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 8136
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 8138
    .local v0, "notifyUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 8139
    return-void

    .end local v0    # "notifyUri":Landroid/net/Uri;
    :cond_0
    move-object v0, p1

    .line 8136
    goto :goto_0
.end method

.method private notifyUIAccount(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 7928
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ACCOUNT_NOTIFIER:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 7931
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 7932
    return-void
.end method

.method private notifyUIConversation(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7871
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 7872
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 7874
    .local v1, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v1, :cond_0

    .line 7875
    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-direct {p0, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIConversationMailbox(J)V

    .line 7877
    :cond_0
    return-void
.end method

.method private notifyUIConversationMailbox(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 7886
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 7887
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 7888
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 7889
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No mailbox for notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7898
    :goto_0
    return-void

    .line 7893
    :cond_0
    iget v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v1, :cond_1

    .line 7894
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-static {v4}, Lcom/kingsoft/email/provider/EmailProvider;->combinedMailboxId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 7897
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyWidgets(J)V

    goto :goto_0
.end method

.method private notifyUIFolder(JJJZLandroid/content/ContentValues;)V
    .locals 7
    .param p1, "newFolderId"    # J
    .param p3, "oldFolderId"    # J
    .param p5, "accountId"    # J
    .param p7, "needNotifyConversation"    # Z
    .param p8, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 8096
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p5

    move-object v5, p8

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIForMessage(JJLandroid/content/ContentValues;Z)V

    .line 8098
    cmp-long v0, p3, p1

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 8100
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v0, p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8101
    if-eqz p7, :cond_0

    .line 8103
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v0, p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8106
    :cond_0
    return-void
.end method

.method private notifyUIFolder(JJZ)V
    .locals 14
    .param p1, "folderId"    # J
    .param p3, "accountId"    # J
    .param p5, "needNotifyConversation"    # Z

    .prologue
    .line 7951
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    move-wide v0, p1

    invoke-direct {p0, v10, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7952
    const-wide/16 v10, -0x1

    cmp-long v10, p3, v10

    if-eqz v10, :cond_0

    .line 7953
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-direct {p0, v10, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7955
    :cond_0
    const/16 v10, 0xa

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v8

    .line 7957
    .local v8, "unreadVirtualMaiboxID":J
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7960
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    const-wide/32 v11, 0x10000000

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v11

    invoke-direct {p0, v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7962
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    const-wide/32 v11, 0x10000000

    invoke-direct {p0, v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7964
    const-wide/32 v10, 0x10000000

    const/16 v12, 0xa

    invoke-static {v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v4

    .line 7966
    .local v4, "combinedUnreadVirtualID":J
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7968
    if-eqz p5, :cond_1

    .line 7970
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    move-wide v0, p1

    invoke-direct {p0, v10, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7971
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7972
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7973
    const/16 v10, 0x9

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v6

    .line 7975
    .local v6, "starredVirtualMaiboxID":J
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v6, v7}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7976
    const-wide/32 v10, 0x10000000

    const/16 v12, 0x9

    invoke-static {v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v2

    .line 7978
    .local v2, "combinedStarredVirtualID":J
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7980
    .end local v2    # "combinedStarredVirtualID":J
    .end local v6    # "starredVirtualMaiboxID":J
    :cond_1
    return-void
.end method

.method private notifyUIFolderForOnlyConversationList(JJ)V
    .locals 14
    .param p1, "folderId"    # J
    .param p3, "accountId"    # J

    .prologue
    .line 8033
    const/16 v10, 0xa

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v8

    .line 8035
    .local v8, "unreadVirtualMaiboxID":J
    const/16 v10, 0x9

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v6

    .line 8037
    .local v6, "starredVirtualMaiboxID":J
    const-wide/32 v10, 0x10000000

    const/16 v12, 0xa

    invoke-static {v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v4

    .line 8039
    .local v4, "combinedUnreadVirtualID":J
    const-wide/32 v10, 0x10000000

    const/16 v12, 0x9

    invoke-static {v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v2

    .line 8041
    .local v2, "combinedStarredVirtualID":J
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    move-wide v0, p1

    invoke-direct {p0, v10, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8042
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8043
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v6, v7}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8044
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    const-wide/32 v11, 0x10000000

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v11

    invoke-direct {p0, v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8045
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8046
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8047
    return-void
.end method

.method private notifyUIFolderForStarred(JJZ)V
    .locals 14
    .param p1, "folderId"    # J
    .param p3, "accountId"    # J
    .param p5, "needNotifyConversation"    # Z

    .prologue
    .line 7998
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-direct {p0, v10, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7999
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    const-wide/32 v11, 0x10000000

    invoke-direct {p0, v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8000
    const/16 v10, 0xa

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v8

    .line 8002
    .local v8, "unreadVirtualMaiboxID":J
    const/16 v10, 0x9

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v10}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v6

    .line 8004
    .local v6, "starredVirtualMaiboxID":J
    const-wide/32 v10, 0x10000000

    const/16 v12, 0xa

    invoke-static {v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v4

    .line 8006
    .local v4, "combinedUnreadVirtualID":J
    const-wide/32 v10, 0x10000000

    const/16 v12, 0x9

    invoke-static {v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v2

    .line 8008
    .local v2, "combinedStarredVirtualID":J
    if-eqz p5, :cond_0

    .line 8010
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    move-wide v0, p1

    invoke-direct {p0, v10, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8011
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8012
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v6, v7}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8013
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    const-wide/32 v11, 0x10000000

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v11

    invoke-direct {p0, v10, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8014
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8015
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v10, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8018
    :cond_0
    return-void
.end method

.method private notifyUIFolderWithFolderType(JJI)V
    .locals 10
    .param p1, "folderId"    # J
    .param p3, "accountId"    # J
    .param p5, "folderType"    # I

    .prologue
    const/16 v9, 0xa

    const-wide/32 v7, 0x10000000

    .line 8110
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v4, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8111
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v4, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8112
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-eqz v4, :cond_0

    .line 8113
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v4, p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8118
    :cond_0
    if-nez p5, :cond_1

    .line 8120
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v7, v8, v5}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8122
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v4, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8124
    :cond_1
    if-eqz p5, :cond_2

    const/4 v4, 0x1

    if-ne p5, v4, :cond_3

    .line 8126
    :cond_2
    invoke-static {p3, p4, v9}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v2

    .line 8128
    .local v2, "unreadVirtualMaiboxID":J
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v4, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8129
    invoke-static {v7, v8, v9}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v0

    .line 8131
    .local v0, "combinedUnreadVirtualID":J
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v4, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 8133
    .end local v0    # "combinedUnreadVirtualID":J
    .end local v2    # "unreadVirtualMaiboxID":J
    :cond_3
    return-void
.end method

.method private notifyUIForMessage(JJLandroid/content/ContentValues;Z)V
    .locals 6
    .param p1, "folderId"    # J
    .param p3, "accountId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;
    .param p6, "needNotifyConversation"    # Z

    .prologue
    .line 8066
    const-string/jumbo v0, "flagRead"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "read"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "rawFolders"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mailboxKey"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    .line 8070
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJZ)V

    .line 8085
    :cond_1
    :goto_0
    return-void

    .line 8072
    :cond_2
    const-string/jumbo v0, "flagFavorite"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "starred"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p6

    .line 8074
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolderForStarred(JJZ)V

    goto :goto_0

    .line 8076
    :cond_4
    const-string/jumbo v0, "snippet"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "snippet"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "flagAttachment"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "hasAttachments"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "flagLoaded"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8081
    :cond_5
    if-eqz p6, :cond_1

    .line 8082
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolderForOnlyConversationList(JJ)V

    goto :goto_0
.end method

.method private notifyUIMessage(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 7907
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_MESSAGE_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7908
    return-void
.end method

.method private notifyUIMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 7917
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_MESSAGE_NOTIFIER:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 7918
    return-void
.end method

.method private notifyWidgets(J)V
    .locals 19
    .param p1, "mailboxId"    # J

    .prologue
    .line 8642
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 8644
    .local v10, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v2, :cond_0

    .line 8645
    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 8646
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {v10}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mEmailComponent:Landroid/content/ComponentName;

    .line 8651
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailProvider;->mEmailComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v16

    .line 8652
    .local v16, "widgetIds":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSavedWidgetIds:[I

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8653
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/provider/EmailProvider;->mSavedWidgetIds:[I

    .line 8654
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/kingsoft/mail/widget/BaseWidgetProvider;->getWidgetInfo(Landroid/content/Context;[I)[[Ljava/lang/String;

    move-result-object v18

    .line 8657
    .local v18, "widgetInfos":[[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mWidgetNotifyMailboxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8658
    move-object/from16 v8, v18

    .local v8, "arr$":[[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v15, :cond_5

    aget-object v17, v8, v11

    .line 8660
    .local v17, "widgetInfo":[Ljava/lang/String;
    if-eqz v17, :cond_1

    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v17, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8658
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 8662
    :cond_2
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 8664
    .local v12, "id":J
    invoke-static {v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->isCombinedMailbox(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mWidgetNotifyMailboxes:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mWidgetNotifyMailboxes:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8690
    .end local v12    # "id":J
    :catch_0
    move-exception v2

    goto :goto_1

    .line 8670
    .restart local v12    # "id":J
    :cond_3
    invoke-static {v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxType(J)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 8673
    :pswitch_0
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "type=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 8680
    .local v9, "c":Landroid/database/Cursor;
    :goto_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mWidgetNotifyMailboxes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 8685
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 8697
    .end local v8    # "arr$":[[Ljava/lang/String;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "i$":I
    .end local v12    # "id":J
    .end local v15    # "len$":I
    .end local v17    # "widgetInfo":[Ljava/lang/String;
    .end local v18    # "widgetInfos":[[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mWidgetNotifyMailboxes:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8698
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8699
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "folderUri"

    const-string/jumbo v3, "uifolder"

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8701
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->EMAIL_APP_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 8702
    invoke-virtual {v10, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8704
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_6
    return-void

    .line 8670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private pickFolder(Landroid/net/Uri;II)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .param p3, "headerId"    # I

    .prologue
    const/4 v3, 0x0

    .line 7810
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 7811
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 7814
    .local v7, "acctId":Ljava/lang/Long;
    const-string/jumbo v0, "uiaccount"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7817
    .local v6, "ac":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7818
    new-instance v10, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v10, v6}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    .line 7820
    .local v10, "uiAccount":Lcom/kingsoft/mail/providers/Account;
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/kingsoft/email/provider/FolderPickerActivity;

    invoke-direct {v9, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7821
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "picker_ui_account"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7822
    const-string/jumbo v0, "picker_mailbox_type"

    invoke-virtual {v9, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7823
    const-string/jumbo v0, "picker_header_id"

    invoke-virtual {v9, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7824
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7825
    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7826
    const/4 v0, 0x1

    .line 7830
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "uiAccount":Lcom/kingsoft/mail/providers/Account;
    :goto_0
    return v0

    .line 7828
    :cond_0
    const/4 v0, 0x0

    .line 7830
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pickSentFolder(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7840
    const/4 v0, 0x5

    const v1, 0x7f100376

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->pickFolder(Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method private pickTrashFolder(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7835
    const/4 v0, 0x6

    const v1, 0x7f1003b2

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->pickFolder(Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method private preProcessSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 6771
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6772
    :cond_0
    const-string/jumbo v0, ""

    .line 6784
    :goto_0
    return-object v0

    .line 6774
    :cond_1
    const-string/jumbo v0, "/"

    const-string/jumbo v1, "//"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6775
    const-string/jumbo v0, "\\\\"

    const-string/jumbo v1, "/\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6777
    const-string/jumbo v0, "%"

    const-string/jumbo v1, "/%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6778
    const-string/jumbo v0, "\'"

    const-string/jumbo v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6779
    const-string/jumbo v0, "\\["

    const-string/jumbo v1, "/\\["

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6781
    const-string/jumbo v0, "&"

    const-string/jumbo v1, "/&"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6782
    const-string/jumbo v0, "\\|"

    const-string/jumbo v1, "/\\|"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6783
    const-string/jumbo v0, "\""

    const-string/jumbo v1, "/\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 6784
    goto :goto_0
.end method

.method private static putIntegerLongOrBoolean(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 7222
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 7223
    check-cast v1, Ljava/lang/Integer;

    .line 7224
    .local v1, "intValue":Ljava/lang/Integer;
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7232
    .end local v1    # "intValue":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 7225
    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    move-object v0, p2

    .line 7226
    check-cast v0, Ljava/lang/Boolean;

    .line 7227
    .local v0, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 7228
    .end local v0    # "boolValue":Ljava/lang/Boolean;
    :cond_3
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 7229
    check-cast v2, Ljava/lang/Long;

    .line 7230
    .local v2, "longValue":Ljava/lang/Long;
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private remapFolderCursor(Landroid/database/Cursor;Landroid/database/MatrixCursor;J[Ljava/lang/String;)V
    .locals 20
    .param p1, "inputCursor"    # Landroid/database/Cursor;
    .param p2, "outputCursor"    # Landroid/database/MatrixCursor;
    .param p3, "accountId"    # J
    .param p5, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 5854
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-nez v18, :cond_1

    .line 5939
    :cond_0
    return-void

    .line 5865
    :cond_1
    const-string/jumbo v18, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 5866
    .local v7, "idColumn":I
    const-string/jumbo v18, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 5868
    .local v16, "typeColumn":I
    const-string/jumbo v18, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 5870
    .local v11, "nameColumn":I
    const-string/jumbo v18, "capabilities"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 5872
    .local v4, "capabilitiesColumn":I
    const-string/jumbo v18, "persistentId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 5874
    .local v12, "persistentIdColumn":I
    const-string/jumbo v18, "loadMoreUri"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 5878
    .local v10, "loadMoreUriColumn":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 5879
    .local v5, "context":Landroid/content/Context;
    move-wide/from16 v0, p3

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 5880
    .local v13, "protocol":Ljava/lang/String;
    invoke-static {v5, v13}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v9

    .line 5886
    .local v9, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 5887
    invoke-virtual/range {p2 .. p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 5888
    .local v3, "builder":Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 5889
    .local v15, "type":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 5893
    aget-object v18, p5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 5894
    .local v8, "index":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_4

    .line 5897
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5889
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5900
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5904
    .local v17, "value":Ljava/lang/String;
    if-ne v11, v8, :cond_5

    .line 5906
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderDisplayName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5907
    const/4 v14, 0x1

    .line 5934
    .local v14, "remapped":Z
    :goto_2
    if-nez v14, :cond_3

    .line 5935
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 5908
    .end local v14    # "remapped":Z
    :cond_5
    if-ne v4, v8, :cond_6

    .line 5910
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v15, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderCapabilities(Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;IJ)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5912
    const/4 v14, 0x1

    .restart local v14    # "remapped":Z
    goto :goto_2

    .line 5913
    .end local v14    # "remapped":Z
    :cond_6
    if-ne v12, v8, :cond_7

    .line 5915
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0xb

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5918
    const/4 v14, 0x1

    .restart local v14    # "remapped":Z
    goto :goto_2

    .line 5919
    .end local v14    # "remapped":Z
    :cond_7
    if-ne v10, v8, :cond_9

    const/16 v18, 0x8

    move/from16 v0, v18

    if-eq v15, v0, :cond_9

    if-eqz v9, :cond_8

    iget-boolean v0, v9, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->offerLoadMore:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 5926
    :cond_8
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5927
    const/4 v14, 0x1

    .restart local v14    # "remapped":Z
    goto :goto_2

    .line 5929
    .end local v14    # "remapped":Z
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "remapped":Z
    goto :goto_2
.end method

.method private static restartPush(Landroid/accounts/Account;Z)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "pushOnly"    # Z

    .prologue
    const/4 v2, 0x1

    .line 8303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8304
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8305
    const-string/jumbo v1, "do_not_retry"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8306
    const-string/jumbo v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8307
    const-string/jumbo v1, "__push_only__"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8308
    const-string/jumbo v1, "callback_uri"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8310
    const-string/jumbo v1, "callback_method"

    const-string/jumbo v2, "sync_status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8312
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8313
    return-void
.end method

.method private static restartPush(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "pushOnly"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2231
    const-string/jumbo v6, "SELECT h.protocol, a.emailAddress, a.syncKey FROM Account AS a INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE a._id=?"

    new-array v7, v4, [Ljava/lang/String;

    aput-object p2, v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2232
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 2234
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2235
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2238
    .local v3, "protocol":Ljava/lang/String;
    const v6, 0x7f100302

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent;->isInitialSyncKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2242
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2244
    .local v2, "emailAddress":Ljava/lang/String;
    invoke-static {p0, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getAccountManagerAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 2247
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {v0, p3}, Lcom/kingsoft/email/provider/EmailProvider;->restartPush(Landroid/accounts/Account;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2252
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2255
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "emailAddress":Ljava/lang/String;
    .end local v3    # "protocol":Ljava/lang/String;
    :goto_0
    return v4

    .line 2252
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v4, v5

    .line 2255
    goto :goto_0

    .line 2252
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private static restartPushForAccount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "spc"    # Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    .prologue
    const/4 v0, 0x0

    .line 2298
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    if-eq p4, v2, :cond_1

    .line 2300
    invoke-static {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v1

    .line 2301
    .local v1, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    invoke-static {p0}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2302
    sget-object v2, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "from EmailProvider restartPushForAccount"

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :cond_0
    invoke-virtual {v1}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->isInSilenceMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2310
    .end local v1    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :cond_1
    :goto_0
    return v0

    .line 2307
    .restart local v1    # "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    :cond_2
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->LOOKBACK_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    if-ne p4, v2, :cond_3

    .line 2308
    .local v0, "pushOnly":Z
    :goto_1
    invoke-static {p0, p1, p3, v0}, Lcom/kingsoft/email/provider/EmailProvider;->restartPush(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 2307
    .end local v0    # "pushOnly":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static restartPushForMailbox(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "pushOnly"    # Z

    .prologue
    .line 2274
    const-string/jumbo v0, "syncLookback"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "syncInterval"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2277
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->restartPush(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result v0

    .line 2279
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static restoreAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 1993
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1994
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "restoreAccounts..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1996
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getBackupDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1998
    .local v0, "backupDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->copyAccountTables(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 1999
    .local v1, "numRecovered":I
    if-lez v1, :cond_3

    .line 2000
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recovered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " accounts!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2008
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2009
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return v1

    .line 2001
    :cond_3
    if-gez v1, :cond_5

    .line 2002
    :try_start_1
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Account recovery failed?"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2008
    .end local v1    # "numRecovered":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 2009
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v2

    .line 2003
    .restart local v1    # "numRecovered":I
    :cond_5
    :try_start_2
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2004
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No accounts to restore..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static restoreHostAuth(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/emailcommon/provider/HostAuth;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 1835
    const-string/jumbo v1, "HostAuth"

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1839
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    new-instance v9, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 1841
    .local v9, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v9, v8}, Lcom/android/emailcommon/provider/HostAuth;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    if-eqz v8, :cond_0

    .line 1847
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_0
    :goto_0
    return-object v9

    .line 1846
    :cond_1
    if-eqz v8, :cond_2

    .line 1847
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v5

    goto :goto_0

    .line 1846
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1847
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static restoreIfNeeded(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mainDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 579
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 580
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restoreIfNeeded..."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 583
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->getLegacyBackupPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "legacyBackup":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 590
    invoke-static {p0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 591
    invoke-static {p0}, Lcom/kingsoft/email/Preferences;->clearLegacyBackupPreference(Landroid/content/Context;)V

    .line 592
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Created new EmailProvider backup database"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 607
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    const-string/jumbo v1, "SELECT EXISTS (SELECT ? FROM Account )"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 600
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 601
    sget-object v1, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restoreIfNeeded: Account exists."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 606
    :cond_3
    invoke-static {p0, p1}, Lcom/kingsoft/email/provider/EmailProvider;->restoreAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    goto :goto_0
.end method

.method private runSearchQuery(Landroid/content/Context;JJ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # J
    .param p4, "searchMailboxId"    # J

    .prologue
    const/4 v7, 0x0

    .line 8421
    sget-object v0, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "runSearchQuery. account: %d mailbox id: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8425
    new-instance v0, Lcom/kingsoft/email/provider/EmailProvider$4;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/email/provider/EmailProvider$4;-><init>(Lcom/kingsoft/email/provider/EmailProvider;Landroid/content/Context;JJ)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8467
    return-void
.end method

.method private sendMessageListDataChangedNotification()V
    .locals 3

    .prologue
    .line 3163
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3164
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.email.MESSAGE_LIST_DATASET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3171
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3172
    return-void
.end method

.method private sendNotifierChange(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "match"    # I
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    .line 3117
    if-nez p2, :cond_1

    .line 3160
    :cond_0
    :goto_0
    return-void

    .line 3120
    :cond_1
    if-eqz p5, :cond_2

    const-string/jumbo v5, "flagSeen"

    invoke-virtual {p5, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x2000

    if-eq p1, v5, :cond_0

    .line 3126
    :cond_2
    const-string/jumbo v5, "insert"

    if-ne p3, v5, :cond_3

    if-eqz p5, :cond_3

    const-string/jumbo v5, "flagRead"

    invoke-virtual {p5, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3128
    const-string/jumbo v5, "flagRead"

    invoke-virtual {p5, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3129
    .local v0, "flag_read":Z
    const-string/jumbo v5, "flagSeen"

    invoke-virtual {p5, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3130
    .local v1, "flag_seen":Z
    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 3136
    .end local v0    # "flag_read":Z
    .end local v1    # "flag_seen":Z
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3139
    .local v4, "resolver":Landroid/content/ContentResolver;
    if-eqz p3, :cond_4

    .line 3140
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 3143
    :cond_4
    const-wide/16 v2, 0x0

    .line 3145
    .local v2, "longId":J
    :try_start_0
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3148
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    .line 3149
    invoke-static {p2, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3157
    :goto_2
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3158
    invoke-direct {p0}, Lcom/kingsoft/email/provider/EmailProvider;->sendMessageListDataChangedNotification()V

    goto :goto_0

    .line 3152
    :cond_5
    invoke-virtual {v4, p2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 3146
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private startCheckSendResultAlarm(JJJI)V
    .locals 8
    .param p1, "msgId"    # J
    .param p3, "mailboxKey"    # J
    .param p5, "accountKey"    # J
    .param p7, "requestCode"    # I

    .prologue
    .line 7151
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.kingsoft.email.action.CHECK_SEND_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7152
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "_id"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7153
    const-string/jumbo v3, "mailboxKey"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7154
    const-string/jumbo v3, "accountKey"

    invoke-virtual {v1, v3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7155
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7156
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    xor-int/lit8 v4, p7, 0x1

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 7158
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 7160
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 7161
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 7167
    :cond_0
    return-void
.end method

.method private static startSync(Landroid/accounts/Account;JI)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "mailboxId"    # J
    .param p3, "deltaMessageCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 8266
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v0

    .line 8267
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8268
    const-string/jumbo v1, "do_not_retry"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8269
    const-string/jumbo v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8270
    if-eqz p3, :cond_0

    .line 8271
    const-string/jumbo v1, "__deltaMessageCount__"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8274
    :cond_0
    const-string/jumbo v1, "callback_uri"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8276
    const-string/jumbo v1, "callback_method"

    const-string/jumbo v2, "sync_status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8278
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8279
    return-void
.end method

.method private startSync(Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 3
    .param p1, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p2, "deltaMessageCount"    # I

    .prologue
    .line 8291
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->getAccountManagerAccount(J)Landroid/accounts/Account;

    move-result-object v0

    .line 8292
    .local v0, "account":Landroid/accounts/Account;
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1, v2, p2}, Lcom/kingsoft/email/provider/EmailProvider;->startSync(Landroid/accounts/Account;JI)V

    .line 8293
    return-void
.end method

.method private static textZoomToUiValue(I)I
    .locals 1
    .param p0, "textZoom"    # I

    .prologue
    const/4 v0, 0x0

    .line 4796
    packed-switch p0, :pswitch_data_0

    .line 4808
    :goto_0
    :pswitch_0
    return v0

    .line 4798
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4800
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 4804
    :pswitch_3
    const/4 v0, -0x1

    goto :goto_0

    .line 4806
    :pswitch_4
    const/4 v0, -0x2

    goto :goto_0

    .line 4796
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private uiAccounts([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uiProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 5130
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5131
    .local v3, "context":Landroid/content/Context;
    invoke-direct {p0, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5132
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v10, "select _id from Account"

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5136
    .local v1, "accountIdCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 5137
    .local v2, "combinedAccount":Z
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-le v10, v12, :cond_0

    .line 5138
    const/4 v2, 0x1

    .line 5140
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5142
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v10, "accounts_loaded"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5143
    new-instance v8, Lcom/kingsoft/mail/utils/MatrixCursorWithExtra;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v8, p1, v10, v5}, Lcom/kingsoft/mail/utils/MatrixCursorWithExtra;-><init>([Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 5147
    .local v8, "mc":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_1

    .line 5148
    invoke-direct {p0, v8}, Lcom/kingsoft/email/provider/EmailProvider;->addCombinedAccountRow(Landroid/database/MatrixCursor;)V

    .line 5151
    :cond_1
    array-length v10, p1

    new-array v9, v10, [Ljava/lang/Object;

    .line 5152
    .local v9, "values":[Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5153
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5154
    .local v7, "id":Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryAccount([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {v4, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5157
    .local v0, "accountCursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5158
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, p1

    if-ge v6, v10, :cond_2

    .line 5159
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 5158
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5161
    :cond_2
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5164
    .end local v6    # "i":I
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5168
    .end local v0    # "accountCursor":Landroid/database/Cursor;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "mc":Landroid/database/MatrixCursor;
    .end local v9    # "values":[Ljava/lang/Object;
    :catchall_0
    move-exception v10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v10

    .line 5164
    .restart local v0    # "accountCursor":Landroid/database/Cursor;
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v8    # "mc":Landroid/database/MatrixCursor;
    .restart local v9    # "values":[Ljava/lang/Object;
    :catchall_1
    move-exception v10

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5168
    .end local v0    # "accountCursor":Landroid/database/Cursor;
    .end local v7    # "id":Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5170
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v8, v10, v11}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 5173
    return-object v8
.end method

.method private uiCombineInboxRefresh()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 8317
    const/4 v6, 0x0

    .line 8320
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "type = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 8322
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8324
    const-class v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v6, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/Mailbox;

    .line 8325
    .local v7, "m":Lcom/android/emailcommon/provider/Mailbox;
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lcom/kingsoft/email/provider/EmailProvider;->uiFolderRefresh(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8330
    .end local v7    # "m":Lcom/android/emailcommon/provider/Mailbox;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 8332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 8330
    :cond_1
    if-eqz v6, :cond_2

    .line 8332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8335
    :cond_2
    return-object v8
.end method

.method private uiDeleteAccount(Landroid/net/Uri;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8539
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8540
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 8543
    .local v1, "accountId":J
    :try_start_0
    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 8545
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 8568
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :goto_0
    return v5

    .line 8549
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_0
    invoke-static {v3, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->deleteAccountData(Landroid/content/Context;J)V

    .line 8552
    sget-object v7, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 8553
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8556
    iget-object v7, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/kingsoft/mail/utils/ContactHelper;->deleteAccountAndContacts(Landroid/content/Context;Ljava/lang/String;)V

    .line 8559
    invoke-static {v3}, Lcom/kingsoft/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 8560
    invoke-static {v3}, Lcom/kingsoft/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/SecurityPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/SecurityPolicy;->reducePolicies()V

    .line 8561
    invoke-static {v3}, Lcom/kingsoft/email2/ui/MailActivityEmail;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 8563
    long-to-int v7, v1

    invoke-static {v3, v7}, Lcom/kingsoft/email/service/ImapPushService;->actionStop(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 8564
    goto :goto_0

    .line 8565
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :catch_0
    move-exception v4

    .line 8566
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Exception while deleting account"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    invoke-static {v7, v8, v6}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private uiDeleteAccountData(Landroid/net/Uri;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 8572
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8573
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 8575
    .local v1, "accountId":J
    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 8577
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 8578
    const/4 v4, 0x0

    .line 8581
    :goto_0
    return v4

    .line 8580
    :cond_0
    invoke-static {v3, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->deleteAccountData(Landroid/content/Context;J)V

    .line 8581
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private uiDeleteMessage(Landroid/net/Uri;)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 7735
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 7736
    .local v10, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->getMessageFromLastSegment(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 7737
    .local v17, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v17, :cond_1

    .line 7738
    const/16 v18, 0x0

    .line 7800
    :cond_0
    :goto_0
    return v18

    .line 7739
    :cond_1
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v10, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 7741
    .local v14, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v14, :cond_2

    .line 7742
    const/16 v18, 0x0

    goto :goto_0

    .line 7743
    :cond_2
    iget v3, v14, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    iget v3, v14, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, v14, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 7745
    :cond_3
    const/16 v18, 0x0

    .line 7747
    .local v18, "r":I
    :try_start_0
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    iget-wide v4, v14, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    .line 7748
    .local v9, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v9, :cond_4

    .line 7750
    const/16 v18, 0x0

    goto :goto_0

    .line 7753
    :cond_4
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 7755
    .local v13, "isPop3Delete":Z
    const-string/jumbo v3, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 7756
    const-string/jumbo v3, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 7757
    .local v12, "ids":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v3, v12

    if-ge v11, v3, :cond_0

    .line 7758
    aget-object v3, v12, v11

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 7759
    .local v15, "mid":J
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v0, v15

    invoke-static {v10, v3, v4, v0, v1}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 7761
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 7763
    .local v19, "syncUri":Landroid/net/Uri;
    if-eqz v13, :cond_5

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 7765
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "isPop3SyncDel"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 7767
    :cond_5
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 7768
    iget-wide v4, v14, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iget-wide v6, v14, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJZ)V

    .line 7769
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIMessage(J)V

    .line 7757
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 7773
    .end local v11    # "i":I
    .end local v12    # "ids":[Ljava/lang/String;
    .end local v15    # "mid":J
    .end local v19    # "syncUri":Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v10, v3, v4, v5, v6}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 7775
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 7777
    .restart local v19    # "syncUri":Landroid/net/Uri;
    if-eqz v13, :cond_7

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/Account;->getDeletePolicy()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 7779
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "isPop3SyncDel"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 7781
    :cond_7
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 7782
    iget-wide v4, v14, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iget-wide v6, v14, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJZ)V

    .line 7783
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIMessage(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 7785
    .end local v9    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v13    # "isPop3Delete":Z
    .end local v19    # "syncUri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 7790
    .end local v18    # "r":I
    :cond_8
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v5, 0x6

    invoke-static {v10, v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v20

    .line 7792
    .local v20, "trashMailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v20, :cond_9

    .line 7793
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 7795
    :cond_9
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 7796
    .local v21, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "mailboxKey"

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7797
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateMessage(Landroid/net/Uri;Landroid/content/ContentValues;Z)I

    move-result v18

    .line 7798
    .restart local v18    # "r":I
    iget-wide v4, v14, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iget-wide v6, v14, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJZ)V

    .line 7799
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIMessage(J)V

    goto/16 :goto_0
.end method

.method private uiFolderLoadMore(Lcom/android/emailcommon/provider/Mailbox;)Landroid/database/Cursor;
    .locals 7
    .param p1, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    const/4 v6, 0x0

    .line 8379
    if-nez p1, :cond_0

    .line 8388
    :goto_0
    return-object v6

    .line 8381
    :cond_0
    iget v0, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 8383
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget v1, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 8384
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->runSearchQuery(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 8386
    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/provider/EmailProvider;->uiFolderRefresh(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;

    goto :goto_0
.end method

.method private uiFolderRefresh(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;
    .locals 4
    .param p1, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p2, "deltaMessageCount"    # I

    .prologue
    .line 8340
    if-eqz p1, :cond_0

    .line 8341
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    new-instance v3, Lcom/kingsoft/email/provider/EmailProvider$3;

    invoke-direct {v3, p0, p1}, Lcom/kingsoft/email/provider/EmailProvider$3;-><init>(Lcom/kingsoft/email/provider/EmailProvider;Lcom/android/emailcommon/provider/Mailbox;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->monitorRefreshStatus(JLcom/kingsoft/email/provider/RefreshStatusMonitor$Callback;)V

    .line 8366
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->startSync(Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 8368
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private uiFolders(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uiProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5301
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5302
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5303
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5305
    .local v4, "id":Ljava/lang/String;
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 5308
    .local v5, "notifyUri":Landroid/net/Uri;
    invoke-direct {p0, v4, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiVirtualMailboxes(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5309
    .local v6, "vc":Landroid/database/Cursor;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 5310
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5319
    .end local v6    # "vc":Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 5313
    .restart local v6    # "vc":Landroid/database/Cursor;
    :cond_0
    sget-object v7, Lcom/kingsoft/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    invoke-static {v7}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryAccountMailboxes([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/String;

    aput-object v4, v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5316
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v0, v7, v8, p2}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListCursor(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5317
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 5318
    const/4 v7, 0x2

    new-array v2, v7, [Landroid/database/Cursor;

    aput-object v6, v2, v10

    aput-object v0, v2, v9

    .line 5319
    .local v2, "cursors":[Landroid/database/Cursor;
    new-instance v6, Landroid/database/MergeCursor;

    .end local v6    # "vc":Landroid/database/Cursor;
    invoke-direct {v6, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private uiPopulateRecentFolders(Landroid/net/Uri;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 7291
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7292
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 7293
    .local v1, "id":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->defaultRecentFolders(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v3

    .line 7294
    .local v3, "recentFolders":[Landroid/net/Uri;
    array-length v2, v3

    .line 7295
    .local v2, "numFolders":I
    if-gtz v2, :cond_0

    move v4, v5

    .line 7301
    :goto_0
    return v4

    .line 7298
    :cond_0
    invoke-static {v0, v1, v3}, Lcom/kingsoft/email/provider/EmailProvider;->updateTimestamp(Landroid/content/Context;Ljava/lang/String;[Landroid/net/Uri;)I

    move-result v4

    .line 7299
    .local v4, "rowsUpdated":I
    sget-object v6, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "uiPopulateRecentFolders: %d folders changed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private uiQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 53
    .param p1, "match"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uiProjection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "unseenOnly"    # Z

    .prologue
    .line 6231
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 6232
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    .line 6233
    .local v46, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 6235
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    .line 6236
    .local v7, "c":Landroid/database/Cursor;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 6237
    .local v34, "id":Ljava/lang/String;
    const/16 v38, 0x0

    .line 6238
    .local v38, "notifyUri":Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 6761
    :goto_0
    :pswitch_0
    if-eqz v38, :cond_0

    .line 6762
    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-interface {v7, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    move-object v4, v7

    .line 6764
    :goto_1
    return-object v4

    .line 6240
    :pswitch_1
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6242
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->uiVirtualMailboxes(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v52

    .line 6243
    .local v52, "vc":Landroid/database/Cursor;
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6245
    move-object/from16 v7, v52

    goto :goto_0

    .line 6248
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryAccountAllMailboxes([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v45

    .line 6251
    .local v45, "rawc":Landroid/database/Cursor;
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v38

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 6252
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 6253
    new-instance v7, Landroid/database/MergeCursor;

    .end local v7    # "c":Landroid/database/Cursor;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object v45, v4, v8

    const/4 v8, 0x1

    aput-object v52, v4, v8

    invoke-direct {v7, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 6255
    .restart local v7    # "c":Landroid/database/Cursor;
    goto :goto_0

    .line 6258
    .end local v45    # "rawc":Landroid/database/Cursor;
    .end local v52    # "vc":Landroid/database/Cursor;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->folderProjectionFromUiProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 6259
    .local v31, "folderProjection":[Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryAccountAllMailboxes([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6261
    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v12, v13, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListCursor(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6262
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6264
    goto/16 :goto_0

    .line 6267
    .end local v31    # "folderProjection":[Ljava/lang/String;
    :pswitch_3
    invoke-static/range {p3 .. p3}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryRecentMailboxes([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6269
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_RECENT_FOLDERS_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6271
    goto/16 :goto_0

    .line 6274
    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->folderProjectionFromUiProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 6275
    .restart local v31    # "folderProjection":[Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/email/provider/EmailProvider;->genQuerySubfolders([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6277
    move-object/from16 v0, v34

    invoke-static {v9, v0}, Lcom/android/emailcommon/provider/Mailbox;->getAccountIdForMailbox(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v12, v13, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getFolderListCursor(Landroid/database/Cursor;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6284
    move-object/from16 v0, v34

    invoke-static {v9, v0}, Lcom/android/emailcommon/provider/Mailbox;->getAccountIdForMailbox(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v21

    .line 6285
    .local v21, "accountId":J
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 6287
    goto/16 :goto_0

    .line 6290
    .end local v21    # "accountId":J
    .end local v31    # "folderProjection":[Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v47

    .line 6291
    .local v47, "sParamNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "rawSubject"

    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6292
    const-string/jumbo v4, "rawSubject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 6298
    .local v44, "rawSubject":Ljava/lang/String;
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6299
    .local v23, "accountKey":Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6300
    const-string/jumbo v4, "\'"

    const-string/jumbo v8, "\'\'"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 6302
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 6303
    const-string/jumbo v4, " ( %s ) And %s=\'%s\'"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "rawSubject"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    aput-object v44, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6310
    :goto_2
    invoke-static/range {v44 .. v44}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " or %s is null "

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "rawSubject"

    aput-object v15, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6314
    :cond_3
    invoke-static/range {v23 .. v23}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " and %s=%s "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "accountKey"

    aput-object v15, v12, v13

    const/4 v13, 0x1

    aput-object v23, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6319
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v44    # "rawSubject":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "fromList"

    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6320
    const-string/jumbo v4, "fromList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6325
    .local v32, "fromList":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 6326
    const-string/jumbo v4, "\'"

    const-string/jumbo v8, "\'\'"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6329
    :cond_5
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 6330
    const-string/jumbo v4, " ( %s ) And (lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\') "

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x4

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6341
    :goto_3
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6342
    .restart local v23    # "accountKey":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 6343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " and %s=%s "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "accountKey"

    aput-object v15, v12, v13

    const/4 v13, 0x1

    aput-object v23, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6346
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v32    # "fromList":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "toList"

    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6347
    const-string/jumbo v4, "toList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6352
    .restart local v32    # "fromList":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 6353
    const-string/jumbo v4, "\'"

    const-string/jumbo v8, "\'\'"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6355
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 6357
    .local v40, "processSql":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 6358
    const-string/jumbo v4, " ( %s ) And ((lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\'))"

    const/16 v8, 0xd

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    aput-object v40, v8, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x4

    aput-object v32, v8, v12

    const/4 v12, 0x5

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/4 v12, 0x6

    aput-object v40, v8, v12

    const/4 v12, 0x7

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/16 v12, 0x8

    aput-object v32, v8, v12

    const/16 v12, 0x9

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0xa

    aput-object v40, v8, v12

    const/16 v12, 0xb

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0xc

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6375
    :goto_4
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6376
    .restart local v23    # "accountKey":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 6377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " and %s=%s "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "accountKey"

    aput-object v15, v12, v13

    const/4 v13, 0x1

    aput-object v23, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6381
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v32    # "fromList":Ljava/lang/String;
    .end local v40    # "processSql":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "flagRead"

    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6382
    const-string/jumbo v4, "flagRead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 6384
    .local v30, "flag":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 6386
    const-string/jumbo v4, "unread"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 6387
    const-string/jumbo v4, "%s and %s=0 "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6407
    .end local v30    # "flag":Ljava/lang/String;
    :cond_9
    :goto_5
    const-string/jumbo v4, "searchFilter"

    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 6408
    const-string/jumbo v4, "searchFilter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 6410
    .local v43, "query":Ljava/lang/String;
    const/16 v4, 0xa

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/4 v4, 0x0

    const-string/jumbo v8, "fromList"

    aput-object v8, v27, v4

    const/4 v4, 0x1

    const-string/jumbo v8, "toList"

    aput-object v8, v27, v4

    const/4 v4, 0x2

    const-string/jumbo v8, "ccList"

    aput-object v8, v27, v4

    const/4 v4, 0x3

    const-string/jumbo v8, "bccList"

    aput-object v8, v27, v4

    const/4 v4, 0x4

    const-string/jumbo v8, "replyToList"

    aput-object v8, v27, v4

    const/4 v4, 0x5

    const-string/jumbo v8, "snippet"

    aput-object v8, v27, v4

    const/4 v4, 0x6

    const-string/jumbo v8, "displayName"

    aput-object v8, v27, v4

    const/4 v4, 0x7

    const-string/jumbo v8, "rawSubject"

    aput-object v8, v27, v4

    const/16 v4, 0x8

    const-string/jumbo v8, "subject"

    aput-object v8, v27, v4

    const/16 v4, 0x9

    const-string/jumbo v8, "meetingInfo"

    aput-object v8, v27, v4

    .line 6417
    .local v27, "fields":[Ljava/lang/String;
    const-string/jumbo v29, ""

    .line 6421
    .local v29, "fiterStr":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 6422
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 6425
    :cond_a
    move-object/from16 v24, v27

    .local v24, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v33, 0x0

    .local v33, "i$":I
    :goto_6
    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    aget-object v37, v24, v33

    .line 6426
    .local v37, "name":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 6427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " or "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 6429
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " %s like \'%%%s%%\' escape \'/\' "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v37, v12, v13

    const/4 v13, 0x1

    aput-object v43, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 6425
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    .line 6306
    .end local v24    # "arr$":[Ljava/lang/String;
    .end local v27    # "fields":[Ljava/lang/String;
    .end local v29    # "fiterStr":Ljava/lang/String;
    .end local v33    # "i$":I
    .end local v35    # "len$":I
    .end local v37    # "name":Ljava/lang/String;
    .end local v43    # "query":Ljava/lang/String;
    .restart local v23    # "accountKey":Ljava/lang/String;
    .restart local v44    # "rawSubject":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, " %s=\'%s\'"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "rawSubject"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v44, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_2

    .line 6336
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v44    # "rawSubject":Ljava/lang/String;
    .restart local v32    # "fromList":Ljava/lang/String;
    :cond_d
    const-string/jumbo v4, " (lower(%s) like \'%%<%s>%%\'  escape \'/\' or lower(%s)=\'%s\')"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_3

    .line 6367
    .restart local v40    # "processSql":Ljava/lang/String;
    :cond_e
    const-string/jumbo v4, " ((lower(%s) like \'%%<%s>%%\' escape \'/\'  or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\'  escape \'/\' or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\'  escape \'/\' or lower(%s)=\'%s\'))"

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v40, v8, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    aput-object v32, v8, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/4 v12, 0x5

    aput-object v40, v8, v12

    const/4 v12, 0x6

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/4 v12, 0x7

    aput-object v32, v8, v12

    const/16 v12, 0x8

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0x9

    aput-object v40, v8, v12

    const/16 v12, 0xa

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0xb

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_4

    .line 6390
    .end local v32    # "fromList":Ljava/lang/String;
    .end local v40    # "processSql":Ljava/lang/String;
    .restart local v30    # "flag":Ljava/lang/String;
    :cond_f
    const-string/jumbo v4, "%s and %s=1 "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_5

    .line 6396
    :cond_10
    const-string/jumbo v4, "unread"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 6397
    const-string/jumbo v4, " %s=0 "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_5

    .line 6400
    :cond_11
    const-string/jumbo v4, " %s=1 "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_5

    .line 6432
    .end local v30    # "flag":Ljava/lang/String;
    .restart local v24    # "arr$":[Ljava/lang/String;
    .restart local v27    # "fields":[Ljava/lang/String;
    .restart local v29    # "fiterStr":Ljava/lang/String;
    .restart local v33    # "i$":I
    .restart local v35    # "len$":I
    .restart local v43    # "query":Ljava/lang/String;
    :cond_12
    invoke-static/range {v29 .. v29}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 6433
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 6434
    const-string/jumbo v4, " ( %s ) And ( %s ) "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    aput-object v29, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6443
    .end local v24    # "arr$":[Ljava/lang/String;
    .end local v27    # "fields":[Ljava/lang/String;
    .end local v29    # "fiterStr":Ljava/lang/String;
    .end local v33    # "i$":I
    .end local v35    # "len$":I
    .end local v43    # "query":Ljava/lang/String;
    :cond_13
    :goto_7
    const-string/jumbo v4, "messageKey"

    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 6444
    const-string/jumbo v4, "messageKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 6446
    .local v49, "strMessageKey":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 6447
    const-string/jumbo v4, " and %s=%s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v49, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6454
    .end local v49    # "strMessageKey":Ljava/lang/String;
    :cond_14
    :goto_8
    invoke-static/range {p3 .. p4}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryChatMessagesFromAccount([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6457
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6459
    goto/16 :goto_0

    .line 6437
    .restart local v24    # "arr$":[Ljava/lang/String;
    .restart local v27    # "fields":[Ljava/lang/String;
    .restart local v29    # "fiterStr":Ljava/lang/String;
    .restart local v33    # "i$":I
    .restart local v35    # "len$":I
    .restart local v43    # "query":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, " ( %s ) "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v29, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_7

    .line 6450
    .end local v24    # "arr$":[Ljava/lang/String;
    .end local v27    # "fields":[Ljava/lang/String;
    .end local v29    # "fiterStr":Ljava/lang/String;
    .end local v33    # "i$":I
    .end local v35    # "len$":I
    .end local v43    # "query":Ljava/lang/String;
    .restart local v49    # "strMessageKey":Ljava/lang/String;
    :cond_16
    const-string/jumbo v4, " %s=%s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v49, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_8

    .line 6461
    .end local v47    # "sParamNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v49    # "strMessageKey":Ljava/lang/String;
    :pswitch_6
    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 6462
    .local v5, "mailboxId":J
    invoke-static {v9, v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v11

    .line 6463
    .local v11, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-nez v11, :cond_17

    .line 6467
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6470
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v39

    .line 6472
    .local v39, "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "rawSubject"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6473
    const-string/jumbo v4, "rawSubject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 6479
    .restart local v44    # "rawSubject":Ljava/lang/String;
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6480
    .restart local v23    # "accountKey":Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 6481
    const-string/jumbo v4, "\'"

    const-string/jumbo v8, "\'\'"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 6483
    :cond_18
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 6484
    const-string/jumbo v4, " ( %s ) And %s=\'%s\'"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "rawSubject"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    aput-object v44, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6491
    :goto_9
    invoke-static/range {v44 .. v44}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 6492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " or %s is null "

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "rawSubject"

    aput-object v15, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6495
    :cond_19
    invoke-static/range {v23 .. v23}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 6496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " and %s=%s "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "accountKey"

    aput-object v15, v12, v13

    const/4 v13, 0x1

    aput-object v23, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6500
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v44    # "rawSubject":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v4, "fromList"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 6501
    const-string/jumbo v4, "fromList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6506
    .restart local v32    # "fromList":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 6507
    const-string/jumbo v4, "\'"

    const-string/jumbo v8, "\'\'"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6510
    :cond_1b
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 6511
    const-string/jumbo v4, " ( %s ) And (lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\') "

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x4

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6522
    :goto_a
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6523
    .restart local v23    # "accountKey":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 6524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " and %s=%s "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "accountKey"

    aput-object v15, v12, v13

    const/4 v13, 0x1

    aput-object v23, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6527
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v32    # "fromList":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v4, "toList"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 6528
    const-string/jumbo v4, "toList"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6533
    .restart local v32    # "fromList":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 6534
    const-string/jumbo v4, "\'"

    const-string/jumbo v8, "\'\'"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6536
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 6538
    .restart local v40    # "processSql":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 6539
    const-string/jumbo v4, " ( %s ) And ((lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\'))"

    const/16 v8, 0xd

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    aput-object v40, v8, v12

    const/4 v12, 0x3

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x4

    aput-object v32, v8, v12

    const/4 v12, 0x5

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/4 v12, 0x6

    aput-object v40, v8, v12

    const/4 v12, 0x7

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/16 v12, 0x8

    aput-object v32, v8, v12

    const/16 v12, 0x9

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0xa

    aput-object v40, v8, v12

    const/16 v12, 0xb

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0xc

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6556
    :goto_b
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6557
    .restart local v23    # "accountKey":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 6558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " and %s=%s "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v15, "accountKey"

    aput-object v15, v12, v13

    const/4 v13, 0x1

    aput-object v23, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6562
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v32    # "fromList":Ljava/lang/String;
    .end local v40    # "processSql":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v4, "flagRead"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 6563
    const-string/jumbo v4, "flagRead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 6565
    .restart local v30    # "flag":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 6567
    const-string/jumbo v4, "unread"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 6568
    const-string/jumbo v4, "%s and %s=0 "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6588
    .end local v30    # "flag":Ljava/lang/String;
    :cond_1f
    :goto_c
    const-string/jumbo v4, "searchFilter"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 6589
    const-string/jumbo v4, "searchFilter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 6591
    .restart local v43    # "query":Ljava/lang/String;
    const/16 v27, 0x0

    .line 6593
    .restart local v27    # "fields":[Ljava/lang/String;
    sget-object v4, Lcom/kingsoft/mail/browse/ConversationCursor;->SEARCH_FILTER_TYPE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 6594
    .local v28, "filterType":Ljava/lang/String;
    const-string/jumbo v4, "from"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 6595
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    .end local v27    # "fields":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v8, "fromList"

    aput-object v8, v27, v4

    const/4 v4, 0x1

    const-string/jumbo v8, "displayName"

    aput-object v8, v27, v4

    .line 6621
    .restart local v27    # "fields":[Ljava/lang/String;
    :goto_d
    const-string/jumbo v29, ""

    .line 6625
    .restart local v29    # "fiterStr":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 6626
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 6629
    :cond_20
    move-object/from16 v24, v27

    .restart local v24    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v33, 0x0

    .restart local v33    # "i$":I
    :goto_e
    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_2b

    aget-object v37, v24, v33

    .line 6630
    .restart local v37    # "name":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 6631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " or "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 6633
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " %s like \'%%%s%%\' escape \'/\' "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v37, v12, v13

    const/4 v13, 0x1

    aput-object v43, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 6629
    add-int/lit8 v33, v33, 0x1

    goto :goto_e

    .line 6487
    .end local v24    # "arr$":[Ljava/lang/String;
    .end local v27    # "fields":[Ljava/lang/String;
    .end local v28    # "filterType":Ljava/lang/String;
    .end local v29    # "fiterStr":Ljava/lang/String;
    .end local v33    # "i$":I
    .end local v35    # "len$":I
    .end local v37    # "name":Ljava/lang/String;
    .end local v43    # "query":Ljava/lang/String;
    .restart local v23    # "accountKey":Ljava/lang/String;
    .restart local v44    # "rawSubject":Ljava/lang/String;
    :cond_22
    const-string/jumbo v4, " %s=\'%s\'"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "rawSubject"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v44, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_9

    .line 6517
    .end local v23    # "accountKey":Ljava/lang/String;
    .end local v44    # "rawSubject":Ljava/lang/String;
    .restart local v32    # "fromList":Ljava/lang/String;
    :cond_23
    const-string/jumbo v4, " (lower(%s) like \'%%<%s>%%\' or lower(%s)=\'%s\')"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "fromList"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_a

    .line 6548
    .restart local v40    # "processSql":Ljava/lang/String;
    :cond_24
    const-string/jumbo v4, " ((lower(%s) like \'%%<%s>%%\' or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\' or lower(%s)=\'%s\') or (lower(%s) like \'%%<%s>%%\' or lower(%s)=\'%s\'))"

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v40, v8, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "toList"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    aput-object v32, v8, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/4 v12, 0x5

    aput-object v40, v8, v12

    const/4 v12, 0x6

    const-string/jumbo v13, "ccList"

    aput-object v13, v8, v12

    const/4 v12, 0x7

    aput-object v32, v8, v12

    const/16 v12, 0x8

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0x9

    aput-object v40, v8, v12

    const/16 v12, 0xa

    const-string/jumbo v13, "bccList"

    aput-object v13, v8, v12

    const/16 v12, 0xb

    aput-object v32, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_b

    .line 6571
    .end local v32    # "fromList":Ljava/lang/String;
    .end local v40    # "processSql":Ljava/lang/String;
    .restart local v30    # "flag":Ljava/lang/String;
    :cond_25
    const-string/jumbo v4, "%s and %s=1 "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_c

    .line 6577
    :cond_26
    const-string/jumbo v4, "unread"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 6578
    const-string/jumbo v4, " %s=0 "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_c

    .line 6581
    :cond_27
    const-string/jumbo v4, " %s=1 "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_c

    .line 6599
    .end local v30    # "flag":Ljava/lang/String;
    .restart local v27    # "fields":[Ljava/lang/String;
    .restart local v28    # "filterType":Ljava/lang/String;
    .restart local v43    # "query":Ljava/lang/String;
    :cond_28
    const-string/jumbo v4, "to"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 6600
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    .end local v27    # "fields":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v8, "toList"

    aput-object v8, v27, v4

    const/4 v4, 0x1

    const-string/jumbo v8, "ccList"

    aput-object v8, v27, v4

    const/4 v4, 0x2

    const-string/jumbo v8, "bccList"

    aput-object v8, v27, v4

    const/4 v4, 0x3

    const-string/jumbo v8, "replyToList"

    aput-object v8, v27, v4

    .restart local v27    # "fields":[Ljava/lang/String;
    goto/16 :goto_d

    .line 6606
    :cond_29
    const-string/jumbo v4, "subject"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 6607
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    .end local v27    # "fields":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v8, "rawSubject"

    aput-object v8, v27, v4

    const/4 v4, 0x1

    const-string/jumbo v8, "subject"

    aput-object v8, v27, v4

    .restart local v27    # "fields":[Ljava/lang/String;
    goto/16 :goto_d

    .line 6612
    :cond_2a
    const/16 v4, 0xa

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    .end local v27    # "fields":[Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v8, "fromList"

    aput-object v8, v27, v4

    const/4 v4, 0x1

    const-string/jumbo v8, "toList"

    aput-object v8, v27, v4

    const/4 v4, 0x2

    const-string/jumbo v8, "ccList"

    aput-object v8, v27, v4

    const/4 v4, 0x3

    const-string/jumbo v8, "bccList"

    aput-object v8, v27, v4

    const/4 v4, 0x4

    const-string/jumbo v8, "replyToList"

    aput-object v8, v27, v4

    const/4 v4, 0x5

    const-string/jumbo v8, "snippet"

    aput-object v8, v27, v4

    const/4 v4, 0x6

    const-string/jumbo v8, "displayName"

    aput-object v8, v27, v4

    const/4 v4, 0x7

    const-string/jumbo v8, "rawSubject"

    aput-object v8, v27, v4

    const/16 v4, 0x8

    const-string/jumbo v8, "subject"

    aput-object v8, v27, v4

    const/16 v4, 0x9

    const-string/jumbo v8, "meetingInfo"

    aput-object v8, v27, v4

    .restart local v27    # "fields":[Ljava/lang/String;
    goto/16 :goto_d

    .line 6636
    .restart local v24    # "arr$":[Ljava/lang/String;
    .restart local v29    # "fiterStr":Ljava/lang/String;
    .restart local v33    # "i$":I
    .restart local v35    # "len$":I
    :cond_2b
    invoke-static/range {v29 .. v29}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 6637
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 6638
    const-string/jumbo v4, " ( %s ) And ( %s ) "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p4, v8, v12

    const/4 v12, 0x1

    aput-object v29, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6647
    .end local v24    # "arr$":[Ljava/lang/String;
    .end local v27    # "fields":[Ljava/lang/String;
    .end local v28    # "filterType":Ljava/lang/String;
    .end local v29    # "fiterStr":Ljava/lang/String;
    .end local v33    # "i$":I
    .end local v35    # "len$":I
    .end local v43    # "query":Ljava/lang/String;
    :cond_2c
    :goto_f
    const-string/jumbo v4, "messageKey"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 6648
    const-string/jumbo v4, "messageKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 6650
    .restart local v49    # "strMessageKey":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 6651
    const-string/jumbo v4, " and %s=%s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v49, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 6658
    .end local v49    # "strMessageKey":Ljava/lang/String;
    :cond_2d
    :goto_10
    invoke-static {v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->isVirtualMailbox(J)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v4, p3

    move/from16 v7, p5

    move-object/from16 v8, p4

    .line 6660
    invoke-static/range {v3 .. v8}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxMessagesCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;JZLjava/lang/String;)Landroid/database/Cursor;

    .end local v7    # "c":Landroid/database/Cursor;
    move-result-object v7

    .restart local v7    # "c":Landroid/database/Cursor;
    move-object v10, v7

    .line 6683
    .end local v7    # "c":Landroid/database/Cursor;
    .local v10, "c":Landroid/database/Cursor;
    :goto_11
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_CONVERSATION_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6685
    const-string/jumbo v4, "rawSubject"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 6686
    .local v14, "bMerge":Z
    new-instance v7, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;

    move-object/from16 v8, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v14}, Lcom/kingsoft/email/provider/EmailProvider$EmailConversationCursor;-><init>(Lcom/kingsoft/email/provider/EmailProvider;Landroid/content/Context;Landroid/database/Cursor;Lcom/kingsoft/mail/providers/Folder;JZ)V

    .line 6688
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v7    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 6641
    .end local v14    # "bMerge":Z
    .restart local v24    # "arr$":[Ljava/lang/String;
    .restart local v27    # "fields":[Ljava/lang/String;
    .restart local v28    # "filterType":Ljava/lang/String;
    .restart local v29    # "fiterStr":Ljava/lang/String;
    .restart local v33    # "i$":I
    .restart local v35    # "len$":I
    .restart local v43    # "query":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v4, " ( %s ) "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v29, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_f

    .line 6654
    .end local v24    # "arr$":[Ljava/lang/String;
    .end local v27    # "fields":[Ljava/lang/String;
    .end local v28    # "filterType":Ljava/lang/String;
    .end local v29    # "fiterStr":Ljava/lang/String;
    .end local v33    # "i$":I
    .end local v35    # "len$":I
    .end local v43    # "query":Ljava/lang/String;
    .restart local v49    # "strMessageKey":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v4, " %s=%s "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    aput-object v49, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_10

    .line 6664
    .end local v49    # "strMessageKey":Ljava/lang/String;
    :cond_30
    const/16 v51, 0x0

    .line 6665
    .local v51, "userFold":Z
    const-string/jumbo v4, "searchFilter"

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 6666
    const/16 v51, 0x0

    .line 6670
    :goto_12
    if-nez v51, :cond_34

    iget-object v4, v11, Lcom/kingsoft/mail/providers/Folder;->persistentId:Ljava/lang/String;

    const-string/jumbo v8, "__search_mailbox__"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v4}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryMailboxMessages([Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v10, v7

    .end local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "c":Landroid/database/Cursor;
    goto :goto_11

    .line 6668
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_31
    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Folder;->isDraft()Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v11}, Lcom/kingsoft/mail/providers/Folder;->isOutbox()Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_32
    const/16 v51, 0x1

    :goto_14
    goto :goto_12

    :cond_33
    const/16 v51, 0x0

    goto :goto_14

    .line 6670
    :cond_34
    const/4 v4, 0x0

    goto :goto_13

    .line 6690
    .end local v5    # "mailboxId":J
    .end local v11    # "folder":Lcom/kingsoft/mail/providers/Folder;
    .end local v39    # "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v51    # "userFold":Z
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryViewMessage([Ljava/lang/String;Ljava/lang/String;)Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;

    move-result-object v42

    .line 6691
    .local v42, "qq":Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;->query:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 6692
    .local v48, "sql":Ljava/lang/String;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;->attachmentJson:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 6694
    .local v25, "attJson":Ljava/lang/String;
    if-eqz v25, :cond_35

    .line 6695
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v25, v4, v8

    const/4 v8, 0x1

    aput-object v34, v4, v8

    move-object/from16 v0, v48

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6699
    :goto_15
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_MESSAGE_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6701
    goto/16 :goto_0

    .line 6697
    :cond_35
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v34, v4, v8

    move-object/from16 v0, v48

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_15

    .line 6703
    .end local v25    # "attJson":Ljava/lang/String;
    .end local v42    # "qq":Lcom/kingsoft/email/provider/EmailProvider$MessageQuery;
    .end local v48    # "sql":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v4, "contentType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 6705
    .local v26, "contentTypeQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryAttachments([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6708
    new-instance v10, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;

    invoke-direct {v10, v9, v7}, Lcom/kingsoft/email/provider/EmailProvider$AttachmentsCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 6709
    .end local v7    # "c":Landroid/database/Cursor;
    .restart local v10    # "c":Landroid/database/Cursor;
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ATTACHMENTS_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    move-object v7, v10

    .line 6711
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v7    # "c":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 6713
    .end local v26    # "contentTypeQueryParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryAttachment([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6715
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ATTACHMENT_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6717
    goto/16 :goto_0

    .line 6719
    :pswitch_a
    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 6720
    .restart local v5    # "mailboxId":J
    invoke-static {v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->isVirtualMailbox(J)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 6721
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxCursor(J)Landroid/database/Cursor;

    move-result-object v7

    .line 6722
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    goto/16 :goto_0

    .line 6725
    :cond_36
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryMailbox([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6727
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v41

    .line 6728
    .local v41, "projectionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "name"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 6730
    .local v19, "nameColumn":I
    const-string/jumbo v4, "type"

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 6732
    .local v20, "typeColumn":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 6733
    new-instance v16, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v15, p0

    move-object/from16 v18, v7

    invoke-direct/range {v15 .. v20}, Lcom/kingsoft/email/provider/EmailProvider;->getUiFolderCursorRowFromMailboxCursorRow(Landroid/database/MatrixCursor;ILandroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v50

    .line 6736
    .local v50, "tmpCursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6737
    move-object/from16 v7, v50

    .line 6739
    .end local v50    # "tmpCursor":Landroid/database/Cursor;
    :cond_37
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6742
    goto/16 :goto_0

    .line 6744
    .end local v5    # "mailboxId":J
    .end local v19    # "nameColumn":I
    .end local v20    # "typeColumn":I
    .end local v41    # "projectionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 6745
    new-instance v36, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;I)V

    .line 6747
    .local v36, "mc":Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->addCombinedAccountRow(Landroid/database/MatrixCursor;)V

    .line 6748
    move-object/from16 v7, v36

    .line 6753
    .end local v36    # "mc":Landroid/database/MatrixCursor;
    :goto_16
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ACCOUNT_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v38

    .line 6755
    goto/16 :goto_0

    .line 6750
    :cond_38
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryAccount([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_16

    .line 6757
    :pswitch_c
    invoke-static/range {p3 .. p3}, Lcom/kingsoft/email/provider/EmailProvider;->genQueryConversation([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v34, v8, v12

    invoke-virtual {v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_0

    .line 6238
    :pswitch_data_0
    .packed-switch 0x9001
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private uiQuickResponse([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uiProjection"    # [Ljava/lang/String;

    .prologue
    .line 5197
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5198
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5199
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getQuickResponseMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5200
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " FROM QuickResponse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5202
    .local v2, "query":Ljava/lang/String;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method private uiQuickResponseAccount([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uiProjection"    # [Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 5177
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5178
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5179
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getQuickResponseMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5180
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " FROM QuickResponse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5181
    const-string/jumbo v4, " WHERE accountKey=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5183
    .local v2, "query":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method private uiQuickResponseId([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uiProjection"    # [Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 5187
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5188
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5189
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/kingsoft/email/provider/EmailProvider;->getQuickResponseMap()Lcom/kingsoft/common/content/ProjectionMap;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/kingsoft/email/provider/EmailProvider;->genSelect(Lcom/kingsoft/common/content/ProjectionMap;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5190
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " FROM QuickResponse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5191
    const-string/jumbo v4, " WHERE _id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5193
    .local v2, "query":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method private uiSaveDraftMessage(JLandroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 7170
    const/4 v4, 0x3

    invoke-direct {p0, p1, p2, v4}, Lcom/kingsoft/email/provider/EmailProvider;->getMailboxByAccountIdAndType(JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 7172
    .local v0, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v0, :cond_0

    .line 7173
    const/4 v4, 0x0

    .line 7181
    :goto_0
    return-object v4

    .line 7175
    :cond_0
    const-string/jumbo v4, "_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7176
    const-string/jumbo v4, "_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 7177
    .local v1, "messageId":J
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 7181
    .end local v1    # "messageId":J
    .local v3, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_1
    invoke-direct {p0, v3, v0, p3}, Lcom/kingsoft/email/provider/EmailProvider;->uiSaveMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 7179
    .end local v3    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    new-instance v3, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .restart local v3    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    goto :goto_1
.end method

.method private uiSaveMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 44
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 6885
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 6887
    .local v21, "context":Landroid/content/Context;
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 6889
    .local v11, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v11, :cond_0

    .line 6890
    const/4 v3, 0x0

    .line 7146
    :goto_0
    return-object v3

    .line 6891
    :cond_0
    const-string/jumbo v3, "customFrom"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 6893
    .local v22, "customFromAddress":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 6894
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 6899
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 6900
    const-string/jumbo v3, "toAddresses"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 6901
    const-string/jumbo v3, "ccAddresses"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 6902
    const-string/jumbo v3, "bccAddresses"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 6903
    const-string/jumbo v3, "subject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 6904
    const-string/jumbo v3, "bodyText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 6905
    const-string/jumbo v3, "bodyHtml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 6906
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 6907
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 6909
    const-string/jumbo v3, "messageId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6910
    invoke-static {}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 6913
    :cond_1
    invoke-virtual {v11}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/ContactHelper;->queryDisplayNameBySendEMailAndMyEmail(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 6917
    .local v24, "displayName":Ljava/lang/String;
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 6918
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 6929
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 6930
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 6931
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 6932
    const-string/jumbo v3, "quotedTextStartPos"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 6934
    .local v37, "quoteStartPos":Ljava/lang/Integer;
    if-nez v37, :cond_c

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    .line 6935
    const-string/jumbo v3, "messageFlags"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v28, v0

    .line 6936
    .local v28, "flags":I
    const-string/jumbo v3, "draftType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 6938
    .local v26, "draftType":I
    packed-switch v26, :pswitch_data_0

    .line 6955
    :goto_4
    const/16 v25, 0x0

    .line 6956
    .local v25, "draftInfo":I
    const-string/jumbo v3, "quotedTextStartPos"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6957
    const-string/jumbo v3, "quotedTextStartPos"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 6959
    const-string/jumbo v3, "appendRefMessageContent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 6961
    const/high16 v3, 0x1000000

    or-int v25, v25, v3

    .line 6964
    :cond_2
    const-string/jumbo v3, "appendRefMessageContent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6966
    const/high16 v3, 0x20000

    or-int v28, v28, v3

    .line 6968
    :cond_3
    move/from16 v0, v25

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    .line 6969
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 6971
    const-string/jumbo v3, "refMessageId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 6973
    .local v38, "ref":Ljava/lang/String;
    if-eqz v38, :cond_4

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    if-ltz v3, :cond_4

    .line 6974
    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v39

    .line 6976
    .local v39, "refId":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v39 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    .line 6983
    .end local v39    # "refId":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string/jumbo v3, "attachments"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/providers/Attachment;->fromJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v42

    .line 6986
    .local v42, "uiAtts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 6987
    .local v19, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/16 v29, 0x0

    .line 6988
    .local v29, "hasUnloadedAttachments":Z
    const-string/jumbo v3, "opened_fds"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    .line 6990
    .local v18, "attachmentFds":Landroid/os/Bundle;
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/kingsoft/mail/providers/Attachment;

    .line 6991
    .local v41, "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/kingsoft/mail/providers/Attachment;->uri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 6992
    .local v16, "attUri":Landroid/net/Uri;
    if-nez v16, :cond_7

    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    .line 6993
    const/16 v31, 0x0

    .line 6995
    .local v31, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v31

    .line 6996
    if-eqz v31, :cond_6

    .line 6997
    invoke-static/range {v21 .. v21}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectoryExternal(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual/range {v41 .. v41}, Lcom/kingsoft/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->createUniqueAttachmentFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v43

    .line 6998
    .local v43, "uniqueFile":Ljava/io/File;
    if-eqz v43, :cond_6

    .line 6999
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, v43

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v31

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 7000
    invoke-static/range {v43 .. v43}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v41

    iput-object v3, v0, Lcom/kingsoft/mail/providers/Attachment;->contentUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7008
    .end local v43    # "uniqueFile":Ljava/io/File;
    :cond_6
    if-eqz v31, :cond_7

    .line 7010
    :try_start_2
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7018
    .end local v31    # "inputStream":Ljava/io/InputStream;
    :cond_7
    :goto_7
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 7022
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 7023
    .local v14, "attId":J
    move-object/from16 v0, v21

    invoke-static {v0, v14, v15}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 7025
    .local v12, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v12, :cond_5

    .line 7027
    invoke-virtual {v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->attachmentExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 7031
    new-instance v17, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 7033
    .local v17, "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->clearDownloadAttachment(Ljava/lang/Long;)V

    .line 7034
    const/4 v3, 0x0

    iput-object v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 7035
    const/4 v3, 0x0

    iput v3, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 7040
    .end local v17    # "attachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    :cond_8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v36

    .line 7041
    .local v36, "p":Landroid/os/Parcel;
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7042
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 7043
    new-instance v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>(Landroid/os/Parcel;)V

    .line 7044
    .local v13, "attClone":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual/range {v36 .. v36}, Landroid/os/Parcel;->recycle()V

    .line 7047
    const-wide/16 v3, 0x0

    iput-wide v3, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 7051
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    iget v3, v11, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_9

    .line 7054
    iget v3, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 7055
    const/16 v29, 0x1

    .line 7057
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 6896
    .end local v12    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v13    # "attClone":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v14    # "attId":J
    .end local v16    # "attUri":Landroid/net/Uri;
    .end local v18    # "attachmentFds":Landroid/os/Bundle;
    .end local v19    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v24    # "displayName":Ljava/lang/String;
    .end local v25    # "draftInfo":I
    .end local v26    # "draftType":I
    .end local v28    # "flags":I
    .end local v29    # "hasUnloadedAttachments":Z
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v36    # "p":Landroid/os/Parcel;
    .end local v37    # "quoteStartPos":Ljava/lang/Integer;
    .end local v38    # "ref":Ljava/lang/String;
    .end local v41    # "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    .end local v42    # "uiAtts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    :cond_a
    invoke-virtual {v11}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto/16 :goto_1

    .line 6920
    .restart local v24    # "displayName":Ljava/lang/String;
    :cond_b
    iget-object v3, v11, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_2

    .line 6934
    .restart local v37    # "quoteStartPos":Ljava/lang/Integer;
    :cond_c
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_3

    .line 6940
    .restart local v26    # "draftType":I
    .restart local v28    # "flags":I
    :pswitch_0
    or-int/lit8 v28, v28, 0x2

    .line 6941
    goto/16 :goto_4

    .line 6943
    :pswitch_1
    const/high16 v3, 0x200000

    or-int v28, v28, v3

    .line 6946
    :pswitch_2
    or-int/lit8 v28, v28, 0x1

    .line 6947
    goto/16 :goto_4

    .line 6949
    :pswitch_3
    const/high16 v3, 0x100000

    or-int v28, v28, v3

    .line 6950
    goto/16 :goto_4

    .line 6952
    :pswitch_4
    const/high16 v3, 0x2000000

    or-int v28, v28, v3

    goto/16 :goto_4

    .line 7011
    .restart local v16    # "attUri":Landroid/net/Uri;
    .restart local v18    # "attachmentFds":Landroid/os/Bundle;
    .restart local v19    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .restart local v25    # "draftInfo":I
    .restart local v29    # "hasUnloadedAttachments":Z
    .restart local v30    # "i$":Ljava/util/Iterator;
    .restart local v31    # "inputStream":Ljava/io/InputStream;
    .restart local v38    # "ref":Ljava/lang/String;
    .restart local v41    # "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    .restart local v42    # "uiAtts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    :catch_0
    move-exception v27

    .line 7012
    .local v27, "e":Ljava/io/IOException;
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 7003
    .end local v27    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v27

    .line 7004
    .local v27, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7008
    if-eqz v31, :cond_7

    .line 7010
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_7

    .line 7011
    :catch_2
    move-exception v27

    .line 7012
    .local v27, "e":Ljava/io/IOException;
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 7005
    .end local v27    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v27

    .line 7006
    .restart local v27    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7008
    if-eqz v31, :cond_7

    .line 7010
    :try_start_6
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_7

    .line 7011
    :catch_4
    move-exception v27

    .line 7012
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 7008
    .end local v27    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v31, :cond_d

    .line 7010
    :try_start_7
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 7013
    :cond_d
    :goto_8
    throw v3

    .line 7011
    :catch_5
    move-exception v27

    .line 7012
    .restart local v27    # "e":Ljava/io/IOException;
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 7063
    .end local v27    # "e":Ljava/io/IOException;
    .end local v31    # "inputStream":Ljava/io/InputStream;
    :cond_e
    move-object/from16 v0, v21

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/AttachmentUtils;->cacheAttachmentUri(Landroid/content/Context;Lcom/kingsoft/mail/providers/Attachment;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v20

    .line 7068
    .local v20, "cachedFileUri":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->convertUiAttachmentToAttachment(Lcom/kingsoft/mail/providers/Attachment;Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 7072
    .end local v16    # "attUri":Landroid/net/Uri;
    .end local v20    # "cachedFileUri":Ljava/lang/String;
    .end local v41    # "uiAtt":Lcom/kingsoft/mail/providers/Attachment;
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 7073
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 7074
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 7075
    if-eqz v29, :cond_10

    .line 7076
    const v3, 0x7f100277

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 7083
    :cond_10
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v3

    if-nez v3, :cond_16

    .line 7084
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v40

    .line 7085
    .local v40, "saveMsgUri":Landroid/net/Uri;
    if-nez v40, :cond_11

    .line 7086
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    .line 7087
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f100356

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 7115
    .end local v40    # "saveMsgUri":Landroid/net/Uri;
    :cond_11
    :goto_a
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIMessage(J)V

    .line 7117
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13

    .line 7118
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/kingsoft/email/provider/EmailProvider;->startSync(Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 7119
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    move-wide/from16 v34, v0

    .line 7120
    .local v34, "originalMsgId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v34, v3

    if-eqz v3, :cond_12

    .line 7121
    move-object/from16 v0, v21

    move-wide/from16 v1, v34

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v33

    .line 7125
    .local v33, "originalMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v33, :cond_12

    .line 7126
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 7127
    .local v23, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v28, v0

    .line 7128
    packed-switch v26, :pswitch_data_1

    .line 7137
    :goto_b
    const-string/jumbo v3, "flags"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7138
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7143
    .end local v23    # "cv":Landroid/content/ContentValues;
    .end local v33    # "originalMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_12
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v10

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/kingsoft/email/provider/EmailProvider;->startCheckSendResultAlarm(JJJI)V

    .line 7146
    .end local v34    # "originalMsgId":J
    :cond_13
    const-string/jumbo v3, "uimessage"

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v4, v5}, Lcom/kingsoft/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 7080
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    goto/16 :goto_9

    .line 7088
    .restart local v40    # "saveMsgUri":Landroid/net/Uri;
    :cond_15
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 7089
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v11, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->displayInsertOutboxError(Landroid/content/Context;J)V

    goto/16 :goto_a

    .line 7096
    .end local v40    # "saveMsgUri":Landroid/net/Uri;
    :cond_16
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 7099
    .local v32, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7103
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string/jumbo v4, "messageKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7107
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 7110
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_8
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_a

    .line 7111
    :catch_6
    move-exception v27

    .line 7112
    .local v27, "e":Landroid/content/OperationApplicationException;
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "applyBatch exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_a

    .line 7130
    .end local v27    # "e":Landroid/content/OperationApplicationException;
    .end local v32    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v23    # "cv":Landroid/content/ContentValues;
    .restart local v33    # "originalMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v34    # "originalMsgId":J
    :pswitch_5
    const/high16 v3, 0x80000

    or-int v28, v28, v3

    .line 7131
    goto/16 :goto_b

    .line 7134
    :pswitch_6
    const/high16 v3, 0x40000

    or-int v28, v28, v3

    goto/16 :goto_b

    .line 6977
    .end local v18    # "attachmentFds":Landroid/os/Bundle;
    .end local v19    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v23    # "cv":Landroid/content/ContentValues;
    .end local v29    # "hasUnloadedAttachments":Z
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v33    # "originalMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v34    # "originalMsgId":J
    .end local v42    # "uiAtts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Attachment;>;"
    .restart local v39    # "refId":Ljava/lang/String;
    :catch_7
    move-exception v3

    goto/16 :goto_5

    .line 6938
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 7128
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private uiSearch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    .line 8474
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "runSearchQuery in search %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8475
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 8477
    .local v10, "accountId":J
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v10, v11, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v19

    .line 8479
    .local v19, "inbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v19, :cond_0

    .line 8480
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In uiSearch, inbox doesn\'t exist for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8483
    const/4 v2, 0x0

    .line 8521
    :goto_0
    return-object v2

    .line 8486
    :cond_0
    const-string/jumbo v2, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8488
    .local v5, "filter":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 8489
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No query parameter in search query"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8493
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/kingsoft/email/provider/EmailProvider;->getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v21

    .line 8494
    .local v21, "searchMailbox":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 8496
    .local v6, "searchMailboxId":J
    new-instance v2, Lcom/android/emailcommon/service/SearchParams;

    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-direct/range {v2 .. v7}, Lcom/android/emailcommon/service/SearchParams;-><init>(JLjava/lang/String;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    .line 8498
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 8499
    .local v9, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget v2, v2, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-nez v2, :cond_2

    .line 8503
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleting existing search results."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8506
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 8507
    .local v20, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8509
    new-instance v18, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 8511
    .local v18, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "displayName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-object v3, v3, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8512
    const-string/jumbo v2, "totalCount"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8513
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v18    # "cv":Landroid/content/ContentValues;
    .end local v20    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    move-object/from16 v8, p0

    move-wide v12, v6

    .line 8518
    invoke-direct/range {v8 .. v13}, Lcom/kingsoft/email/provider/EmailProvider;->runSearchQuery(Landroid/content/Context;JJ)V

    .line 8521
    const v13, 0x9006

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const/16 v17, 0x0

    move-object/from16 v12, p0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-direct/range {v12 .. v17}, Lcom/kingsoft/email/provider/EmailProvider;->uiQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private uiSendDraftMessage(JLandroid/os/Bundle;)Landroid/net/Uri;
    .locals 12
    .param p1, "accountId"    # J
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 7185
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7187
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v9, "_id"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7188
    const-string/jumbo v9, "_id"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7189
    .local v4, "messageId":J
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 7194
    .end local v4    # "messageId":J
    .local v7, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    if-nez v7, :cond_1

    .line 7195
    sget-object v9, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "EmailProvider ui send draft message msg is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7196
    const/4 v6, 0x0

    .line 7217
    :goto_1
    return-object v6

    .line 7191
    .end local v7    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .restart local v7    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    goto :goto_0

    .line 7198
    :cond_1
    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 7199
    .local v1, "draftMailboxID":J
    const/4 v9, 0x4

    invoke-direct {p0, p1, p2, v9}, Lcom/kingsoft/email/provider/EmailProvider;->getMailboxByAccountIdAndType(JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 7201
    .local v3, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_2

    .line 7202
    sget-object v9, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "EmailProvider ui send draft message outbox is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7203
    const/4 v6, 0x0

    goto :goto_1

    .line 7207
    :cond_2
    const/4 v9, 0x5

    invoke-direct {p0, p1, p2, v9}, Lcom/kingsoft/email/provider/EmailProvider;->getMailboxByAccountIdAndType(JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v8

    .line 7209
    .local v8, "sentMailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v8, :cond_3

    .line 7210
    sget-object v9, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "EmailProvider ui send draft message sentbox is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7211
    const/4 v6, 0x0

    goto :goto_1

    .line 7213
    :cond_3
    invoke-direct {p0, v7, v3, p3}, Lcom/kingsoft/email/provider/EmailProvider;->uiSaveMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v6

    .line 7215
    .local v6, "messageUri":Landroid/net/Uri;
    invoke-direct {p0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIConversationMailbox(J)V

    .line 7216
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private uiUndo([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 7847
    iget-object v4, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7852
    :try_start_0
    new-instance v0, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "conversationUri"

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;I)V

    .line 7855
    .local v0, "c":Landroid/database/MatrixCursor;
    iget-object v4, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 7856
    .local v3, "op":Landroid/content/ContentProviderOperation;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7863
    .end local v0    # "c":Landroid/database/MatrixCursor;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "op":Landroid/content/ContentProviderOperation;
    :catch_0
    move-exception v1

    .line 7864
    .local v1, "e":Landroid/content/OperationApplicationException;
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "applyBatch exception"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7867
    .end local v1    # "e":Landroid/content/OperationApplicationException;
    :cond_0
    new-instance v0, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    invoke-direct {v0, p1, v7}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;I)V

    :goto_1
    return-object v0

    .line 7859
    .restart local v0    # "c":Landroid/database/MatrixCursor;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/provider/EmailProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 7861
    iget-object v4, p0, Lcom/kingsoft/email/provider/EmailProvider;->mLastSequenceOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private uiUpdateAttachment(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uiValues"    # Landroid/content/ContentValues;

    .prologue
    .line 7305
    const/4 v6, 0x0

    .line 7306
    .local v6, "result":I
    const-string/jumbo v11, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 7308
    .local v9, "stateValue":Ljava/lang/Integer;
    if-eqz v9, :cond_8

    .line 7310
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 7311
    .local v2, "attachmentId":J
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 7312
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 7314
    .local v1, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v1, :cond_0

    move v7, v6

    .line 7371
    .end local v1    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "attachmentId":J
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "result":I
    .local v7, "result":I
    :goto_0
    return v7

    .line 7318
    .end local v7    # "result":I
    .restart local v1    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2    # "attachmentId":J
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "result":I
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 7319
    .local v8, "state":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 7320
    .local v10, "values":Landroid/content/ContentValues;
    if-eqz v8, :cond_1

    const/4 v11, 0x4

    if-ne v8, v11, :cond_3

    .line 7323
    :cond_1
    const-string/jumbo v11, "uiState"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7325
    const-string/jumbo v11, "flags"

    iget v12, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v12, v12, -0x3

    iput v12, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7329
    const-string/jumbo v11, "isDeleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 7331
    const-string/jumbo v11, "isDeleted"

    const-string/jumbo v12, "isDeleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7336
    :cond_2
    const-string/jumbo v11, "uiDownloadedSize"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7337
    invoke-virtual {v1, v4, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 7338
    const/4 v6, 0x1

    .line 7340
    :cond_3
    const/4 v11, 0x2

    if-eq v8, v11, :cond_4

    const/4 v11, 0x4

    if-ne v8, v11, :cond_6

    .line 7343
    :cond_4
    const-string/jumbo v11, "uiState"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7345
    const-string/jumbo v11, "destination"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 7347
    .local v5, "destinationValue":Ljava/lang/Integer;
    const-string/jumbo v12, "uiDestination"

    if-nez v5, :cond_9

    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7349
    const-string/jumbo v11, "flags"

    iget v12, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7352
    const-string/jumbo v11, "location"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v11, "location"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 7355
    sget-object v11, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v13, "attachment with blank location"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11, v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7359
    :cond_5
    invoke-virtual {v1, v4, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 7360
    const/4 v6, 0x1

    .line 7362
    .end local v5    # "destinationValue":Ljava/lang/Integer;
    :cond_6
    const/4 v11, 0x3

    if-ne v8, v11, :cond_8

    .line 7364
    iget-object v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 7365
    sget-object v11, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_MESSAGE_NOTIFIER:Landroid/net/Uri;

    iget-wide v12, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-direct {p0, v11, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 7368
    :cond_7
    const/4 v6, 0x1

    .end local v1    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "attachmentId":J
    .end local v4    # "context":Landroid/content/Context;
    .end local v8    # "state":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_8
    move v7, v6

    .line 7371
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto/16 :goto_0

    .line 7347
    .end local v7    # "result":I
    .restart local v1    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2    # "attachmentId":J
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "destinationValue":Ljava/lang/Integer;
    .restart local v6    # "result":I
    .restart local v8    # "state":I
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_1
.end method

.method private uiUpdateFolder(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uiValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 7377
    const-string/jumbo v7, "seen"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7378
    const-string/jumbo v7, "seen"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 7381
    .local v6, "seenValue":I
    if-ne v6, v8, :cond_0

    .line 7382
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 7383
    .local v2, "mailboxId":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->markAllSeen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 7385
    .local v5, "rows":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 7404
    .end local v2    # "mailboxId":Ljava/lang/String;
    .end local v5    # "rows":I
    .end local v6    # "seenValue":I
    :goto_0
    return v5

    .line 7392
    :cond_0
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->convertToEmailProviderUri(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    .line 7394
    .local v3, "ourUri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 7395
    const/4 v5, 0x0

    goto :goto_0

    .line 7396
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 7398
    .local v4, "ourValues":Landroid/content/ContentValues;
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7399
    .local v0, "columnName":Ljava/lang/String;
    const-string/jumbo v7, "lastTouchedTime"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7400
    const-string/jumbo v7, "lastTouchedTime"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 7404
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v3, v4, v9, v9}, Lcom/kingsoft/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_0
.end method

.method private uiUpdateMessage(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 7539
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateMessage(Landroid/net/Uri;Landroid/content/ContentValues;Z)I

    move-result v0

    return v0
.end method

.method private uiUpdateMessage(Landroid/net/Uri;Landroid/content/ContentValues;Z)I
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "forceSync"    # Z

    .prologue
    .line 7543
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 7544
    .local v5, "context":Landroid/content/Context;
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->getMessageFromLastSegment(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 7545
    .local v11, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v11, :cond_0

    .line 7546
    const/16 v21, 0x0

    .line 7638
    :goto_0
    return v21

    .line 7547
    :cond_0
    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 7549
    .local v10, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v10, :cond_1

    .line 7550
    const/16 v21, 0x0

    goto :goto_0

    .line 7551
    :cond_1
    if-nez p3, :cond_2

    invoke-static {v5, v10}, Lcom/kingsoft/email/provider/EmailProvider;->uploadsToServer(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_2
    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 7553
    .local v14, "ourBaseUri":Landroid/net/Uri;
    :goto_1
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/kingsoft/email/provider/EmailProvider;->convertToEmailProviderUri(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v15

    .line 7554
    .local v15, "ourUri":Landroid/net/Uri;
    if-nez v15, :cond_4

    .line 7555
    const/16 v21, 0x0

    goto :goto_0

    .line 7551
    .end local v14    # "ourBaseUri":Landroid/net/Uri;
    .end local v15    # "ourUri":Landroid/net/Uri;
    :cond_3
    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 7556
    .restart local v14    # "ourBaseUri":Landroid/net/Uri;
    .restart local v15    # "ourUri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v21, "ids"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 7557
    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v21

    const-string/jumbo v22, "ids"

    const-string/jumbo v23, "ids"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 7559
    :cond_5
    const-string/jumbo v21, "respond"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 7560
    iget-wide v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v5, v0, v1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v18

    .line 7563
    .local v18, "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :try_start_0
    const-string/jumbo v21, "ids"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 7564
    const-string/jumbo v21, "ids"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 7565
    .local v9, "ids":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_7

    .line 7567
    aget-object v21, v9, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-string/jumbo v23, "respond"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/EmailServiceProxy;->sendMeetingResponse(JI)V

    .line 7565
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 7572
    .end local v7    # "i":I
    .end local v9    # "ids":[Ljava/lang/String;
    :cond_6
    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v21, v0

    const-string/jumbo v23, "respond"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/service/EmailServiceProxy;->sendMeetingResponse(JI)V

    .line 7579
    :cond_7
    const v21, 0x7f100131

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7586
    :goto_3
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 7582
    :catch_0
    move-exception v6

    .line 7583
    .local v6, "e":Ljava/lang/Exception;
    sget-object v21, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "Remote exception while sending meeting response"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 7590
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v18    # "service":Lcom/android/emailcommon/service/EmailServiceProxy;
    :cond_8
    const-string/jumbo v21, "operation"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7592
    .local v13, "operation":Ljava/lang/String;
    const-string/jumbo v21, "discard_drafts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 7593
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->uiDeleteMessage(Landroid/net/Uri;)I

    .line 7594
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 7597
    :cond_9
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 7598
    .local v20, "undoValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/kingsoft/email/provider/EmailProvider;->convertUiMessageValues(Lcom/android/emailcommon/provider/EmailContent$Message;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v16

    .line 7599
    .local v16, "ourValues":Landroid/content/ContentValues;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7600
    .local v4, "columnName":Ljava/lang/String;
    const-string/jumbo v21, "mailboxKey"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 7601
    const-string/jumbo v21, "mailboxKey"

    iget-wide v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 7602
    :cond_b
    const-string/jumbo v21, "flagRead"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 7603
    const-string/jumbo v21, "flagRead"

    iget-boolean v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 7604
    :cond_c
    const-string/jumbo v21, "flagSeen"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 7605
    const-string/jumbo v21, "flagSeen"

    iget-boolean v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 7606
    :cond_d
    const-string/jumbo v21, "flagFavorite"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 7607
    const-string/jumbo v21, "flagFavorite"

    iget-boolean v0, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 7610
    .end local v4    # "columnName":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->size()I

    move-result v21

    if-nez v21, :cond_f

    .line 7611
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 7613
    :cond_f
    const-string/jumbo v21, "suppress_undo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    .line 7615
    .local v19, "suppressUndo":Ljava/lang/Boolean;
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_11

    .line 7616
    :cond_10
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/kingsoft/email/provider/EmailProvider;->convertToEmailProviderUri(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 7620
    .local v12, "op":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/kingsoft/email/provider/EmailProvider;->addToSequence(Landroid/net/Uri;Landroid/content/ContentProviderOperation;)V

    .line 7623
    .end local v12    # "op":Landroid/content/ContentProviderOperation;
    :cond_11
    const/16 v17, 0x0

    .line 7624
    .local v17, "selection":Ljava/lang/String;
    const-string/jumbo v21, "flagRead"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 7625
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "flagRead != "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "flagRead"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 7628
    :cond_12
    const-string/jumbo v21, "flagSeen"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 7629
    if-nez v17, :cond_14

    .line 7630
    const-string/jumbo v17, ""

    .line 7634
    :goto_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "flagSeen != "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "flagSeen"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 7637
    :cond_13
    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v21

    const-string/jumbo v22, "notifyUI"

    const-string/jumbo v23, "false"

    invoke-virtual/range {v21 .. v23}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 7638
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_0

    .line 7632
    :cond_14
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " or "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5
.end method

.method private uiUpdateRecentFolders(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 7272
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    .line 7273
    .local v5, "numFolders":I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7274
    .local v4, "id":Ljava/lang/String;
    new-array v1, v5, [Landroid/net/Uri;

    .line 7275
    .local v1, "folders":[Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7276
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 7277
    .local v2, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7278
    .local v6, "uriString":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v1, v2

    goto :goto_0

    .line 7280
    .end local v6    # "uriString":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v4, v1}, Lcom/kingsoft/email/provider/EmailProvider;->updateTimestamp(Landroid/content/Context;Ljava/lang/String;[Landroid/net/Uri;)I

    move-result v7

    return v7
.end method

.method public static uiUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 424
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUriString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uiUriString(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private uiVirtualMailboxes(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uiProjection"    # [Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const-wide/32 v4, 0x10000000

    .line 5325
    new-instance v2, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    invoke-direct {v2, p2}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;)V

    .line 5327
    .local v2, "mc":Landroid/database/MatrixCursor;
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->COMBINED_ACCOUNT_ID_STRING:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5328
    const/4 v3, 0x0

    invoke-direct {p0, v4, v5, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxRow(JI)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 5330
    invoke-direct {p0, v4, v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxRow(JI)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 5332
    invoke-direct {p0, v4, v5, v7}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxRow(JI)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 5340
    :goto_0
    return-object v2

    .line 5335
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5336
    .local v0, "acctId":J
    invoke-direct {p0, v0, v1, v6}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxRow(JI)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 5337
    invoke-direct {p0, v0, v1, v7}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxRow(JI)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateAccountSyncInterval(JLandroid/content/ContentValues;)V
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 8199
    const-string/jumbo v9, "syncInterval"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 8201
    .local v7, "syncInterval":Ljava/lang/Integer;
    if-nez v7, :cond_1

    .line 8250
    :cond_0
    :goto_0
    return-void

    .line 8205
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/kingsoft/email/provider/EmailProvider;->getAccountManagerAccount(J)Landroid/accounts/Account;

    move-result-object v2

    .line 8206
    .local v2, "account":Landroid/accounts/Account;
    if-eqz v2, :cond_0

    .line 8212
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 8214
    .local v4, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v5

    .line 8215
    .local v5, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/email/statistics/URLMap;->isDebug(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 8216
    sget-object v9, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v10, "from EmailProvider updateAccountSyncInterval"

    invoke-static {v9, v10}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 8219
    :cond_2
    const-string/jumbo v9, "imap"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 8220
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    invoke-virtual {v5}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->isInNormalMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 8222
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    move-wide/from16 v0, p1

    long-to-int v10, v0

    invoke-static {v9, v10}, Lcom/kingsoft/email/service/ImapPushService;->actionStart(Landroid/content/Context;I)V

    .line 8230
    :cond_3
    :goto_1
    sget-object v9, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Setting sync interval for account "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " minutes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8234
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 8236
    .local v8, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/PeriodicSync;

    .line 8237
    .local v6, "sync":Landroid/content/PeriodicSync;
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {v2, v9, v10}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 8224
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "sync":Landroid/content/PeriodicSync;
    .end local v8    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    move-wide/from16 v0, p1

    long-to-int v10, v0

    invoke-static {v9, v10}, Lcom/kingsoft/email/service/ImapPushService;->actionStop(Landroid/content/Context;I)V

    goto :goto_1

    .line 8245
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v8    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v5}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->isInNormalMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8246
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    sget-object v10, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    const-wide/32 v13, 0xea60

    mul-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-static {v2, v9, v10, v11, v12}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto/16 :goto_0
.end method

.method private updateSyncStatus(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2959
    const-string/jumbo v9, "id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2960
    .local v0, "id":J
    const-string/jumbo v9, "status_code"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2962
    .local v4, "statusCode":I
    sget-object v9, Lcom/kingsoft/email/provider/EmailProvider;->FOLDER_STATUS_URI:Landroid/net/Uri;

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2963
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2965
    if-ne v4, v7, :cond_0

    move v2, v7

    .line 2966
    .local v2, "inProgress":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 2967
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/provider/RefreshStatusMonitor;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lcom/kingsoft/email/provider/RefreshStatusMonitor;->setSyncStarted(J)V

    .line 2975
    :goto_1
    return-void

    .end local v2    # "inProgress":Z
    :cond_0
    move v2, v8

    .line 2965
    goto :goto_0

    .line 2969
    .restart local v2    # "inProgress":Z
    :cond_1
    const-string/jumbo v9, "result"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2970
    .local v3, "result":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2971
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "uiLastSyncResult"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2972
    iget-object v9, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v10, "Mailbox"

    const-string/jumbo v11, "_id=?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-virtual {v9, v10, v6, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static updateTimestamp(Landroid/content/Context;Ljava/lang/String;[Landroid/net/Uri;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "folders"    # [Landroid/net/Uri;

    .prologue
    .line 7244
    const/4 v9, 0x0

    .line 7245
    .local v9, "updated":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7246
    .local v4, "now":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 7247
    .local v6, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 7248
    .local v8, "touchValues":Landroid/content/ContentValues;
    move-object/from16 v0, p2

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 7249
    .local v1, "folder":Landroid/net/Uri;
    const-string/jumbo v10, "lastTouchedTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7250
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "updateStamp: %s updated"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7251
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v1, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    .line 7248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7253
    .end local v1    # "folder":Landroid/net/Uri;
    :cond_0
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_RECENT_FOLDERS_NOTIFIER:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 7255
    .local v7, "toNotify":Landroid/net/Uri;
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "updateTimestamp: Notifying on %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7256
    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 7257
    return v9
.end method

.method private static uploadsToServer(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "m"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    const/4 v2, 0x0

    .line 7528
    iget v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 7535
    :cond_0
    :goto_0
    return v2

    .line 7532
    :cond_1
    iget-wide v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 7533
    .local v1, "protocol":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v0

    .line 7535
    .local v0, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->syncChanges:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static uriWithColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/\' || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static uriWithFQId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 3884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/\' || "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static uriWithId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 3851
    const-string/jumbo v0, "_id"

    invoke-static {p0, v0}, Lcom/kingsoft/email/provider/EmailProvider;->uriWithColumn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 1814
    if-nez p1, :cond_0

    .line 1822
    .end local p0    # "where":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1817
    .restart local p0    # "where":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1818
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1790
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "_id in("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    if-eqz p1, :cond_0

    .line 1794
    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1798
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 3178
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3179
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3180
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3182
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 3183
    .local v2, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3186
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v2

    .end local v2    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2979
    sget-object v6, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "EmailProvider#call(%s, %s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    aput-object p2, v8, v10

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2984
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->DEVICE_FRIENDLY_NAME:Ljava/lang/String;

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2985
    sget-object v6, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "EmailProvider call method is DEVICE_FRIENDLY_NAME"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2986
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v10}, Landroid/os/Bundle;-><init>(I)V

    .line 2989
    .local v3, "bundle":Landroid/os/Bundle;
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent;->DEVICE_FRIENDLY_NAME:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 2994
    :cond_0
    const-string/jumbo v6, "sync_status"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2995
    sget-object v6, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "EmailProvider call method is SYNC_STATUS_CALLBACK_METHOD"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2996
    invoke-direct {p0, p3}, Lcom/kingsoft/email/provider/EmailProvider;->updateSyncStatus(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2999
    :cond_1
    const-string/jumbo v6, "fix_parent_keys"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3000
    sget-object v6, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "EmailProvider call method is SYNC_STATUS_CALLBACK_METHOD"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3001
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kingsoft/email/provider/EmailProvider;->fixParentKeys(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 3006
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3007
    .local v2, "accountUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3010
    .local v0, "accountId":J
    const/4 v4, 0x0

    .line 3012
    .local v4, "messageUri":Landroid/net/Uri;
    const-string/jumbo v6, "send_message"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3014
    invoke-direct {p0, v0, v1, p3}, Lcom/kingsoft/email/provider/EmailProvider;->uiSendDraftMessage(JLandroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    .line 3015
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/kingsoft/email/Preferences;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/kingsoft/email/Preferences;->setLastUsedAccountId(J)V

    .line 3030
    :goto_1
    if-eqz v4, :cond_6

    .line 3031
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v10}, Landroid/os/Bundle;-><init>(I)V

    .line 3032
    .local v5, "result":Landroid/os/Bundle;
    const-string/jumbo v6, "messageUri"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_2
    move-object v3, v5

    .line 3037
    goto :goto_0

    .line 3017
    .end local v5    # "result":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v6, "save_message"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3019
    invoke-direct {p0, v0, v1, p3}, Lcom/kingsoft/email/provider/EmailProvider;->uiSaveDraftMessage(JLandroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 3020
    :cond_4
    const-string/jumbo v6, "set_current_account"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3022
    sget-object v6, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Unhandled (but expected) Content provider method: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 3026
    :cond_5
    sget-object v6, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Unexpected Content provider method: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 3034
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "result":Landroid/os/Bundle;
    goto :goto_2
.end method

.method public checkDatabases()V
    .locals 6

    .prologue
    .line 1543
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->sDatabaseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1545
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 1546
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1548
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 1549
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1553
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "EmailProvider.db"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1555
    .local v1, "databaseFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "EmailProviderBody.db"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1559
    .local v0, "bodyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1560
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Deleting orphaned EmailProvider database..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1561
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "EmailProvider.db"

    invoke-virtual {v2, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1567
    :cond_2
    :goto_0
    monitor-exit v3

    .line 1568
    return-void

    .line 1562
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1563
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Deleting orphaned EmailProviderBody database..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1565
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "EmailProviderBody.db"

    invoke-virtual {v2, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_0

    .line 1567
    .end local v0    # "bodyFile":Ljava/io/File;
    .end local v1    # "databaseFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 46
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 713
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string/jumbo v4, "delete"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/kingsoft/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v10

    .line 715
    .local v10, "match":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 723
    .local v18, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 724
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v41, v10, 0xc

    .line 725
    .local v41, "table":I
    const-string/jumbo v13, "0"

    .line 726
    .local v13, "id":Ljava/lang/String;
    const/16 v31, 0x0

    .line 727
    .local v31, "messageDeletion":Z
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 729
    .local v36, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TABLE_NAMES:Landroid/util/SparseArray;

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 730
    .local v3, "tableName":Ljava/lang/String;
    const/16 v37, -0x1

    .line 731
    .local v37, "result":I
    const-wide/16 v15, -0x1

    .line 732
    .local v15, "accountKey":J
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    .line 734
    .local v27, "isConversationCacheAvailable":Z
    const/16 v4, 0x2001

    if-eq v10, v4, :cond_0

    const/16 v4, 0x2002

    if-ne v10, v4, :cond_1

    .line 735
    :cond_0
    :try_start_0
    const-string/jumbo v4, "is_uiprovider"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 736
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIConversation(Landroid/net/Uri;)V

    .line 740
    :cond_1
    const/16 v4, 0x2002

    if-ne v10, v4, :cond_2

    if-eqz v27, :cond_2

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 742
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v15

    .line 744
    :cond_2
    sparse-switch v10, :sswitch_data_0

    .line 857
    :goto_0
    sparse-switch v10, :sswitch_data_1

    .line 947
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    :catch_0
    move-exception v21

    .line 961
    .local v21, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->checkDatabases()V

    .line 962
    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 964
    .end local v21    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v31, :cond_3

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v4

    .line 746
    :sswitch_0
    :try_start_2
    const-string/jumbo v4, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 747
    const-string/jumbo v4, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 748
    .local v24, "ids":Ljava/lang/String;
    const-string/jumbo v4, "mailboxKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 749
    .local v29, "mailboxkey":Ljava/lang/String;
    const-string/jumbo v4, "maxMergeCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 750
    .local v30, "maxmerge":Ljava/lang/String;
    const-string/jumbo v4, "select a._id _id from Message a where _id in (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v24, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 751
    .local v39, "sql":Ljava/lang/String;
    if-eqz v30, :cond_4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 752
    const-string/jumbo v4, "select a._id _id from Message a ,(select * from Message where _id in (%s)) b where a.rawSubject = b.rawSubject and a.mailboxKey=%s and (length(a.rawSubject) >0 or a._id in (%s))"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v24, v5, v6

    const/4 v6, 0x1

    aput-object v29, v5, v6

    const/4 v6, 0x2

    aput-object v24, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 754
    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-virtual {v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 755
    .local v42, "temp":Landroid/database/Cursor;
    const-string/jumbo v26, ""

    .line 756
    .local v26, "idtemp":Ljava/lang/String;
    :goto_1
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 757
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v42

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 758
    .local v25, "idt":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 759
    goto :goto_1

    .line 760
    .end local v25    # "idt":Ljava/lang/String;
    :cond_5
    if-eqz v42, :cond_6

    .line 761
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 764
    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 767
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v34

    .line 768
    .local v34, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 769
    .local v44, "uritemp":Landroid/net/Uri;
    invoke-virtual/range {v44 .. v44}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 770
    .local v17, "builder":Landroid/net/Uri$Builder;
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 771
    .local v33, "name":Ljava/lang/String;
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 772
    const-string/jumbo v4, "ids"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 774
    :cond_8
    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 778
    .end local v33    # "name":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 779
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->uiDeleteMessage(Landroid/net/Uri;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v38

    .line 964
    if-eqz v31, :cond_a

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 980
    .end local v17    # "builder":Landroid/net/Uri$Builder;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "ids":Ljava/lang/String;
    .end local v26    # "idtemp":Ljava/lang/String;
    .end local v29    # "mailboxkey":Ljava/lang/String;
    .end local v30    # "maxmerge":Ljava/lang/String;
    .end local v34    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v39    # "sql":Ljava/lang/String;
    .end local v42    # "temp":Landroid/database/Cursor;
    .end local v44    # "uritemp":Landroid/net/Uri;
    :cond_a
    :goto_3
    return v38

    .line 782
    :cond_b
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->getQueryParamMergeCount(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    .line 783
    const/16 v38, 0x0

    .line 784
    .local v38, "retVal":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 789
    .local v32, "messageId":Ljava/lang/Long;
    invoke-static/range {v32 .. v32}, Lcom/kingsoft/email/provider/EmailProvider;->getMergedItemCursorsByMessageId(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v19

    .line 790
    .local v19, "cursor":Landroid/database/Cursor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 791
    .local v35, "query":Ljava/lang/String;
    :cond_c
    :goto_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 792
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 794
    .local v43, "uriStr":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v45

    .line 796
    .local v45, "uuri":Landroid/net/Uri;
    :goto_5
    if-eqz v45, :cond_c

    .line 797
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->uiDeleteMessage(Landroid/net/Uri;)I

    move-result v4

    add-int v38, v38, v4

    goto :goto_4

    .line 794
    .end local v45    # "uuri":Landroid/net/Uri;
    :cond_d
    const/16 v45, 0x0

    goto :goto_5

    .line 800
    .end local v43    # "uriStr":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 964
    if-eqz v31, :cond_a

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 805
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v32    # "messageId":Ljava/lang/Long;
    .end local v35    # "query":Ljava/lang/String;
    .end local v38    # "retVal":I
    :cond_f
    :try_start_4
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->uiDeleteMessage(Landroid/net/Uri;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v38

    .line 964
    if-eqz v31, :cond_a

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 808
    :sswitch_1
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->uiDeleteAccountData(Landroid/net/Uri;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v38

    .line 964
    if-eqz v31, :cond_a

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    .line 810
    :sswitch_2
    :try_start_6
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->uiDeleteAccount(Landroid/net/Uri;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v38

    .line 964
    if-eqz v31, :cond_a

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    .line 812
    :sswitch_3
    :try_start_7
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v22

    .line 816
    .local v22, "findCursor":Landroid/database/Cursor;
    if-eqz v22, :cond_11

    :try_start_8
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 817
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/kingsoft/email/provider/EmailProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v38

    .line 828
    if-eqz v22, :cond_10

    .line 829
    :try_start_9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 964
    :cond_10
    if-eqz v31, :cond_a

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    .line 825
    :cond_11
    const/16 v38, 0x0

    .line 828
    if-eqz v22, :cond_12

    .line 829
    :try_start_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 964
    :cond_12
    if-eqz v31, :cond_a

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    .line 828
    :catchall_1
    move-exception v4

    if-eqz v22, :cond_13

    .line 829
    :try_start_b
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4

    .line 853
    .end local v22    # "findCursor":Landroid/database/Cursor;
    :sswitch_4
    const/16 v31, 0x1

    .line 854
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto/16 :goto_0

    .line 869
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 870
    const/16 v4, 0x2002

    if-ne v10, v4, :cond_15

    .line 877
    const-string/jumbo v4, "insert or replace into Message_Deletes select * from (select * from Message_Updates where  _id = %s union all select * from Message where _id = %s ) limit 1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete from Message_Updates where _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 881
    if-eqz v27, :cond_14

    .line 882
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v28

    .line 883
    .local v28, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v13}, Lcom/kingsoft/mail/preferences/MailPrefs;->removeQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .end local v28    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    :cond_14
    const-string/jumbo v4, "isPop3SyncDel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 887
    .local v40, "strIsPop3SyncDel":Ljava/lang/String;
    if-eqz v40, :cond_15

    const-string/jumbo v4, "true"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 889
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 891
    .local v20, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "mailboxKey"

    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    const-string/jumbo v4, "Message_Deletes"

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v13, v6, v9

    move-object/from16 v0, v20

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 897
    .end local v20    # "cv":Landroid/content/ContentValues;
    .end local v40    # "strIsPop3SyncDel":Ljava/lang/String;
    :cond_15
    const/16 v4, 0x1001

    if-ne v10, v4, :cond_1a

    .line 898
    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/emailcommon/provider/Mailbox;->getAccountIdForMailbox(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 903
    .local v7, "accountId":J
    :goto_6
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/kingsoft/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v37

    .line 906
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1b

    .line 907
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ACCOUNT_NOTIFIER:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 908
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 949
    .end local v7    # "accountId":J
    :cond_16
    :goto_7
    if-eqz v31, :cond_17

    .line 950
    const/16 v4, 0x2001

    if-ne v10, v4, :cond_1d

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete from Body where messageKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 958
    :goto_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 964
    :cond_17
    if-eqz v31, :cond_18

    .line 965
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 972
    :cond_18
    if-eqz v37, :cond_19

    .line 974
    invoke-static {v10}, Lcom/kingsoft/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v11

    const-string/jumbo v12, "delete"

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/kingsoft/email/provider/EmailProvider;->sendNotifierChange(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 979
    :cond_19
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v38, v37

    .line 980
    goto/16 :goto_3

    .line 900
    :cond_1a
    const-wide/16 v7, -0x1

    .restart local v7    # "accountId":J
    goto :goto_6

    .line 910
    :cond_1b
    const/16 v4, 0x1001

    if-ne v10, v4, :cond_1c

    .line 911
    :try_start_c
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolder(JJZ)V

    goto :goto_7

    .line 912
    :cond_1c
    const/16 v4, 0x3001

    if-ne v10, v4, :cond_16

    .line 913
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ATTACHMENT_NOTIFIER:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_7

    .line 918
    .end local v7    # "accountId":J
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "messageKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/kingsoft/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v37

    .line 923
    goto/16 :goto_7

    .line 934
    :sswitch_7
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v37

    .line 935
    goto/16 :goto_7

    .line 937
    :sswitch_8
    const-string/jumbo v4, "MessageMove"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 940
    :sswitch_9
    const-string/jumbo v4, "MessageStateChange"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 944
    :sswitch_a
    const-string/jumbo v4, "QuickResponse"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7

    .line 956
    :cond_1d
    const-string/jumbo v4, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_8

    .line 744
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_4
        0x2000 -> :sswitch_4
        0x2001 -> :sswitch_4
        0x2002 -> :sswitch_4
        0x2003 -> :sswitch_3
        0x9003 -> :sswitch_0
        0x9007 -> :sswitch_2
        0x900c -> :sswitch_1
    .end sparse-switch

    .line 857
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_5
        0x1000 -> :sswitch_7
        0x1001 -> :sswitch_5
        0x2000 -> :sswitch_7
        0x2001 -> :sswitch_5
        0x2002 -> :sswitch_5
        0x2004 -> :sswitch_8
        0x2005 -> :sswitch_9
        0x3000 -> :sswitch_7
        0x3001 -> :sswitch_5
        0x3002 -> :sswitch_6
        0x4000 -> :sswitch_7
        0x4001 -> :sswitch_5
        0x5000 -> :sswitch_7
        0x5001 -> :sswitch_5
        0x6000 -> :sswitch_7
        0x6001 -> :sswitch_5
        0x7000 -> :sswitch_7
        0x7001 -> :sswitch_5
        0x8000 -> :sswitch_a
        0x8001 -> :sswitch_5
        0xa000 -> :sswitch_7
        0xa001 -> :sswitch_5
    .end sparse-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 8707
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 8708
    .local v7, "context":Landroid/content/Context;
    const-string/jumbo v0, "Installed services:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8709
    invoke-static {v7}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoList(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    .line 8711
    .local v11, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 8713
    .end local v11    # "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 8714
    const-string/jumbo v0, "Accounts: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8715
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/email/provider/EmailProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 8717
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 8718
    const-string/jumbo v0, "  None"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8721
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8722
    new-instance v6, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 8723
    .local v6, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v6, v8}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V

    .line 8724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8725
    iget-wide v0, v6, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v9

    .line 8727
    .local v9, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v9, :cond_1

    .line 8728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    Protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v6, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 8735
    .end local v6    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v9    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 8728
    .restart local v6    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v9    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 8735
    .end local v6    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v9    # "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 8737
    return-void
.end method

.method public declared-synchronized getDelayedSyncHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 8740
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 8741
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/kingsoft/email/provider/EmailProvider$5;

    invoke-direct {v2, p0}, Lcom/kingsoft/email/provider/EmailProvider$5;-><init>(Lcom/kingsoft/email/provider/EmailProvider;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncHandler:Landroid/os/Handler;

    .line 8762
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 8740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 987
    const-string/jumbo v3, "getType"

    invoke-static {p1, v3}, Lcom/kingsoft/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 988
    .local v1, "match":I
    sparse-switch v1, :sswitch_data_0

    .line 1032
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    .line 990
    :sswitch_0
    const-string/jumbo v2, "vnd.android.cursor.item/email-body"

    goto :goto_0

    .line 992
    :sswitch_1
    const-string/jumbo v2, "vnd.android.cursor.dir/email-body"

    goto :goto_0

    .line 1004
    :sswitch_2
    const-string/jumbo v2, "vnd.android.cursor.item/email-message"

    .line 1005
    .local v2, "mimeType":Ljava/lang/String;
    const-string/jumbo v3, "mailboxId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "mailboxId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1008
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1013
    .end local v0    # "mailboxId":Ljava/lang/String;
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v2, "vnd.android.cursor.dir/email-message"

    goto :goto_0

    .line 1015
    :sswitch_4
    const-string/jumbo v2, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_0

    .line 1017
    :sswitch_5
    const-string/jumbo v2, "vnd.android.cursor.item/email-mailbox"

    goto :goto_0

    .line 1019
    :sswitch_6
    const-string/jumbo v2, "vnd.android.cursor.dir/email-account"

    goto :goto_0

    .line 1021
    :sswitch_7
    const-string/jumbo v2, "vnd.android.cursor.item/email-account"

    goto :goto_0

    .line 1024
    :sswitch_8
    const-string/jumbo v2, "vnd.android.cursor.dir/email-attachment"

    goto :goto_0

    .line 1026
    :sswitch_9
    const-string/jumbo v2, "vnd.android.cursor.item/email-attachment"

    goto :goto_0

    .line 1028
    :sswitch_a
    const-string/jumbo v2, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_0

    .line 1030
    :sswitch_b
    const-string/jumbo v2, "vnd.android.cursor.item/email-hostauth"

    goto :goto_0

    .line 988
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_7
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_5
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_8
        0x3001 -> :sswitch_9
        0x3002 -> :sswitch_8
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0xa000 -> :sswitch_1
        0xa001 -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 32
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1093
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Insert: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string/jumbo v4, "insert"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/kingsoft/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v27

    .line 1095
    .local v27, "match":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 1096
    .local v18, "context":Landroid/content/Context;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1099
    .local v28, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    .line 1100
    .local v19, "db":Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v30, v27, 0xc

    .line 1101
    .local v30, "table":I
    const-string/jumbo v23, "0"

    .line 1102
    .local v23, "id":Ljava/lang/String;
    const-wide/16 v24, 0x0

    .line 1105
    .local v24, "longId":J
    const/16 v4, 0x1001

    move/from16 v0, v27

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1000

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    .line 1106
    :cond_0
    const-string/jumbo v4, "unreadCount"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1107
    const-string/jumbo v4, "messageCount"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    :cond_1
    :goto_0
    sget-object v29, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1119
    .local v29, "resultUri":Landroid/net/Uri;
    sparse-switch v27, :sswitch_data_0

    .line 1267
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :catch_0
    move-exception v20

    .line 1270
    .local v20, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->checkDatabases()V

    .line 1271
    throw v20

    .line 1110
    .end local v20    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v29    # "resultUri":Landroid/net/Uri;
    :cond_2
    const/16 v4, 0x2000

    move/from16 v0, v27

    if-ne v0, v4, :cond_1

    .line 1111
    const-string/jumbo v4, "rawSubject"

    const-string/jumbo v10, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingsoft/mail/ui/SubjectMergeInfo;->findRawSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    .restart local v29    # "resultUri":Landroid/net/Uri;
    :sswitch_0
    const/16 v4, 0x2000

    move/from16 v0, v27

    if-eq v0, v4, :cond_3

    .line 1135
    :try_start_1
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TABLE_NAMES:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v10, "foo"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 1136
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v29

    .line 1138
    :cond_3
    sparse-switch v27, :sswitch_data_1

    .line 1275
    :cond_4
    :goto_1
    invoke-static/range {v27 .. v27}, Lcom/kingsoft/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "insert"

    move-object/from16 v10, p0

    move/from16 v11, v27

    move-object/from16 v14, v23

    move-object/from16 v15, p2

    invoke-direct/range {v10 .. v15}, Lcom/kingsoft/email/provider/EmailProvider;->sendNotifierChange(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1279
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v4, v29

    .line 1280
    :goto_2
    return-object v4

    .line 1140
    :sswitch_1
    :try_start_2
    const-string/jumbo v4, "mailboxKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1147
    .local v5, "mailboxId":J
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1149
    .local v7, "key":J
    move-object/from16 v0, v18

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v26

    .line 1151
    .local v26, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v26, :cond_5

    .line 1152
    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 1154
    :cond_5
    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 1157
    .local v9, "mailboxType":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/kingsoft/mail/utils/ContactHelper;->queryEmailbyKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1160
    .local v22, "hostemailString":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x8

    if-eq v4, v9, :cond_6

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1}, Lcom/kingsoft/mail/utils/ContactHelper;->insert2ContactByCursor(Landroid/content/ContentValues;Landroid/content/Context;Ljava/lang/String;)V

    .line 1166
    :cond_6
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TABLE_NAMES:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v10, "foo"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 1167
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    .line 1169
    const/4 v4, 0x4

    if-ne v4, v9, :cond_7

    .line 1170
    const-string/jumbo v4, "B03"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p0

    .line 1171
    invoke-direct/range {v4 .. v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolderWithFolderType(JJI)V

    goto/16 :goto_1

    .line 1173
    :cond_7
    const/4 v4, 0x3

    if-ne v4, v9, :cond_8

    move-object/from16 v4, p0

    .line 1175
    invoke-direct/range {v4 .. v9}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIFolderWithFolderType(JJI)V

    goto/16 :goto_1

    .line 1179
    :cond_8
    if-nez v9, :cond_9

    .line 1180
    const-string/jumbo v4, "B02"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/kingsoft/email/statistics/KingsoftAgent;->onUserEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_9
    sget-boolean v4, Lcom/kingsoft/email/provider/EmailProvider;->mIsNotifying:Z

    if-eqz v4, :cond_a

    sget-wide v10, Lcom/kingsoft/email/provider/EmailProvider;->mNotifyingMailbox:J

    cmp-long v4, v10, v5

    if-eqz v4, :cond_b

    .line 1185
    :cond_a
    sput-wide v5, Lcom/kingsoft/email/provider/EmailProvider;->mNotifyingMailbox:J

    .line 1186
    new-instance v31, Ljava/lang/Thread;

    new-instance v10, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;

    move-object/from16 v11, p0

    move-wide v12, v5

    move-wide v14, v7

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/kingsoft/email/provider/EmailProvider$Notify_Runable;-><init>(Lcom/kingsoft/email/provider/EmailProvider;JJI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Notify_Thread_"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v10, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1188
    .local v31, "thread":Ljava/lang/Thread;
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->mNotifyThreadPool:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1192
    .end local v31    # "thread":Ljava/lang/Thread;
    :cond_b
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/kingsoft/email/provider/EmailProvider;->mNeedNotify:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1198
    .end local v5    # "mailboxId":J
    .end local v7    # "key":J
    .end local v9    # "mailboxType":I
    .end local v22    # "hostemailString":Ljava/lang/String;
    .end local v26    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :sswitch_2
    const-string/jumbo v4, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1199
    const-string/jumbo v4, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v10, 0x40

    if-ge v4, v10, :cond_4

    .line 1201
    const-string/jumbo v4, "accountKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    .line 1203
    .local v17, "accountId":Ljava/lang/Long;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-lez v4, :cond_4

    .line 1204
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ACCOUNT_NOTIFIER:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 1205
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    goto/16 :goto_1

    .line 1212
    .end local v17    # "accountId":Ljava/lang/Long;
    :sswitch_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->updateAccountSyncInterval(JLandroid/content/ContentValues;)V

    .line 1213
    const-string/jumbo v4, "is_uiprovider"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1214
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIAccount(J)V

    .line 1216
    :cond_c
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    const/4 v10, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 1221
    :sswitch_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1223
    :sswitch_5
    const/16 v21, 0x0

    .line 1224
    .local v21, "flags":I
    const-string/jumbo v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1225
    const-string/jumbo v4, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1228
    :cond_d
    const-string/jumbo v4, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1230
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "attachment with blank location"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1232
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/provider/EmailProvider;->mAttachmentService:Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move-wide/from16 v0, v24

    move/from16 v2, v21

    invoke-interface {v4, v10, v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;->attachmentChanged(Landroid/content/Context;JI)V

    goto/16 :goto_1

    .line 1238
    .end local v21    # "flags":I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x2

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 1239
    const-string/jumbo v4, "accountKey"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1241
    sget-object v4, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/kingsoft/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_2

    .line 1247
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 1248
    const-string/jumbo v4, "mailboxKey"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1249
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/kingsoft/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_2

    .line 1252
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1253
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 1254
    const-string/jumbo v4, "messageKey"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1255
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/kingsoft/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_2

    .line 1258
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 1259
    const-string/jumbo v4, "accountKey"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1260
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/kingsoft/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_2

    .line 1262
    :sswitch_a
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TABLE_NAMES:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v10, "foo"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 1263
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v29

    .line 1265
    goto/16 :goto_1

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_9
        0x1000 -> :sswitch_0
        0x1001 -> :sswitch_7
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_8
        0x3000 -> :sswitch_0
        0x3002 -> :sswitch_a
        0x4000 -> :sswitch_0
        0x5000 -> :sswitch_0
        0x6000 -> :sswitch_0
        0x7000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x8002 -> :sswitch_6
        0xa000 -> :sswitch_0
    .end sparse-switch

    .line 1138
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_1
        0x3000 -> :sswitch_5
        0x5000 -> :sswitch_4
        0x6000 -> :sswitch_4
    .end sparse-switch
.end method

.method public mostRecentMessageQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3232
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3233
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 3234
    .local v1, "mailboxId":Ljava/lang/String;
    const-string/jumbo v2, "select max(_id) from Message where mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public newUiSearch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;

    .prologue
    .line 8804
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v25

    .line 8805
    .local v25, "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 8806
    .local v23, "isInit":Z
    const/16 v24, 0x0

    .line 8807
    .local v24, "offset":I
    const/4 v9, 0x0

    .line 8808
    .local v9, "startDate":Ljava/util/Date;
    const-string/jumbo v2, "offset"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8809
    const-string/jumbo v2, "offset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 8811
    :cond_0
    const-string/jumbo v2, "init"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8812
    const/16 v23, 0x1

    .line 8814
    :cond_1
    const-string/jumbo v2, "startTime"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8815
    new-instance v9, Ljava/util/Date;

    .end local v9    # "startDate":Ljava/util/Date;
    const-string/jumbo v2, "startTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 8819
    .restart local v9    # "startDate":Ljava/util/Date;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 8821
    .local v11, "accountId":J
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v11, v12, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v22

    .line 8823
    .local v22, "inbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v22, :cond_3

    .line 8824
    const/4 v2, 0x0

    .line 8888
    :goto_0
    return-object v2

    .line 8826
    :cond_3
    const-string/jumbo v2, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8828
    .local v5, "filter":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 8829
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No query parameter in search query"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8833
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/kingsoft/email/provider/EmailProvider;->getSearchMailbox(J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v28

    .line 8834
    .local v28, "searchMailbox":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 8838
    .local v6, "searchMailboxId":J
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 8840
    .local v19, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    if-eqz v2, :cond_5

    if-eqz v23, :cond_8

    .line 8841
    :cond_5
    new-instance v2, Lcom/android/emailcommon/service/SearchParams;

    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/emailcommon/service/SearchParams;-><init>(JLjava/lang/String;JLjava/util/Date;Ljava/util/Date;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    .line 8846
    sget-object v2, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleting existing search results."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8848
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 8849
    .local v27, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mailboxKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8851
    new-instance v20, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 8853
    .local v20, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "displayName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-object v3, v3, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8854
    const-string/jumbo v2, "totalCount"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8855
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8857
    const/4 v2, 0x0

    sput-boolean v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->isInit:Z

    .line 8863
    .end local v20    # "cv":Landroid/content/ContentValues;
    .end local v27    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    move-object/from16 v0, v19

    invoke-static {v0, v11, v12}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    .line 8864
    .local v26, "protocol":Ljava/lang/String;
    const-string/jumbo v2, "eas"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget v2, v2, Lcom/android/emailcommon/service/SearchParams;->mTotalCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget v2, v2, Lcom/android/emailcommon/service/SearchParams;->hasQueryMessageCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget v3, v3, Lcom/android/emailcommon/service/SearchParams;->mTotalCount:I

    if-ge v2, v3, :cond_7

    .line 8868
    :cond_6
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    move-wide v14, v6

    invoke-static/range {v10 .. v15}, Lcom/kingsoft/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v29

    .line 8871
    .local v29, "totalCount":I
    if-eqz v23, :cond_9

    .line 8872
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget v3, v3, Lcom/android/emailcommon/service/SearchParams;->mTotalCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/kingsoft/mail/ui/AbstractActivityController;->remoteSearchCount:I

    .line 8873
    new-instance v21, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 8874
    .local v21, "cv1":Landroid/content/ContentValues;
    const-string/jumbo v2, "totalCount"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8875
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/kingsoft/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8888
    .end local v21    # "cv1":Landroid/content/ContentValues;
    .end local v29    # "totalCount":I
    :cond_7
    :goto_2
    const v14, 0x9002

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v13 .. v18}, Lcom/kingsoft/email/provider/EmailProvider;->uiQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 8859
    .end local v26    # "protocol":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    iget v3, v2, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    add-int/lit8 v3, v3, 0xa

    iput v3, v2, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    goto/16 :goto_1

    .line 8877
    .restart local v26    # "protocol":Ljava/lang/String;
    .restart local v29    # "totalCount":I
    :cond_9
    if-nez v29, :cond_7

    .line 8878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 8879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, v28

    iget-wide v13, v0, Lcom/android/emailcommon/provider/Mailbox;->mLastTouchedTime:J

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    iput-object v3, v2, Lcom/android/emailcommon/service/SearchParams;->mEndDate:Ljava/util/Date;

    .line 8881
    sget-object v10, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kingsoft/email/provider/EmailProvider;->mSearchParams:Lcom/android/emailcommon/service/SearchParams;

    move-wide v14, v6

    invoke-static/range {v10 .. v15}, Lcom/kingsoft/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    goto :goto_2
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    .line 1286
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1287
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 1288
    invoke-static {v0}, Lcom/kingsoft/email/provider/EmailProvider;->init(Landroid/content/Context;)V

    .line 1293
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getAndroidAccountCount(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1295
    invoke-static {v0}, Lcom/kingsoft/email2/ui/MailActivityEmail;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 1298
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.mail.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v2, "updateAllWidgetsIntent":Landroid/content/Intent;
    const-string/jumbo v3, "update-all-widgets"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1302
    const v3, 0x7f1000d5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1308
    .end local v2    # "updateAllWidgetsIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1310
    .local v1, "oldConfiguration":Landroid/content/res/Configuration;
    new-instance v3, Lcom/kingsoft/email/provider/EmailProvider$1;

    invoke-direct {v3, p0, v1}, Lcom/kingsoft/email/provider/EmailProvider$1;-><init>(Lcom/kingsoft/email/provider/EmailProvider;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 1324
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    .line 1325
    const/4 v3, 0x0

    return v3
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 3043
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3044
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "EmailProvider.openFile: %s"

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    invoke-static {v7, p1}, Lcom/kingsoft/mail/utils/LogUtils;->contentUriToString(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3048
    :cond_0
    const-string/jumbo v4, "openFile"

    invoke-static {p1, v4}, Lcom/kingsoft/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v3

    .line 3049
    .local v3, "match":I
    packed-switch v3, :pswitch_data_0

    .line 3071
    :cond_1
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string/jumbo v5, "unable to open file"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3052
    :pswitch_0
    const-string/jumbo v4, "filePath"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3055
    .local v2, "cachedFilePath":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 3059
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3061
    .local v0, "binderToken":J
    :try_start_0
    sget-object v4, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Opening attachment %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3062
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 3065
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3049
    nop

    :pswitch_data_0
    .packed-switch 0x3003
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 37
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1573
    const/16 v27, 0x0

    .line 1576
    .local v27, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/kingsoft/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1601
    .local v4, "match":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v28

    .line 1603
    .local v28, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1604
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v35, v4, 0xc

    .line 1605
    .local v35, "table":I
    const-string/jumbo v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1608
    .local v17, "limit":Ljava/lang/String;
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TABLE_NAMES:Landroid/util/SparseArray;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1611
    .local v10, "tableName":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 1760
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1762
    .end local v10    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 1763
    .local v29, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->checkDatabases()V

    .line 1764
    throw v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1770
    .end local v29    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-nez v27, :cond_0

    .line 1777
    sget-object v5, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Query returning null for uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    throw v3

    .line 1577
    .end local v4    # "match":I
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "limit":Ljava/lang/String;
    .end local v28    # "context":Landroid/content/Context;
    .end local v35    # "table":I
    :catch_1
    move-exception v29

    .line 1578
    .local v29, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1582
    .local v36, "uriString":Ljava/lang/String;
    if-eqz v36, :cond_1

    const-string/jumbo v3, "/-1"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1585
    const-string/jumbo v3, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/kingsoft/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 1586
    .restart local v4    # "match":I
    sparse-switch v4, :sswitch_data_1

    .line 1599
    .end local v4    # "match":I
    :cond_1
    throw v29

    .line 1596
    .restart local v4    # "match":I
    :sswitch_0
    new-instance v3, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v5}, Lcom/kingsoft/mail/utils/MatrixCursorWithCachedColumns;-><init>([Ljava/lang/String;I)V

    .line 1785
    .end local v29    # "e":Ljava/lang/IllegalArgumentException;
    .end local v36    # "uriString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 1616
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "tableName":Ljava/lang/String;
    .restart local v17    # "limit":Ljava/lang/String;
    .restart local v28    # "context":Landroid/content/Context;
    .restart local v35    # "table":I
    :sswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p3}, Lcom/kingsoft/email/provider/EmailProvider;->newUiSearch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_3

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v3, v27

    goto :goto_0

    .line 1620
    :sswitch_2
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->uiAccounts([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_4

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v3, v27

    goto :goto_0

    .line 1623
    :sswitch_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->uiUndo([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 1770
    if-nez v27, :cond_2

    .line 1777
    sget-object v5, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Query returning null for uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1638
    :sswitch_4
    if-nez p3, :cond_5

    if-eqz p4, :cond_5

    .line 1646
    :cond_5
    :try_start_6
    const-string/jumbo v3, "seen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1649
    .local v34, "seenParam":Ljava/lang/String;
    if-eqz v34, :cond_7

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v8, 0x1

    .local v8, "unseenOnly":Z
    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 1653
    invoke-direct/range {v3 .. v8}, Lcom/kingsoft/email/provider/EmailProvider;->uiQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_6

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 1649
    .end local v8    # "unseenOnly":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 1657
    .end local v34    # "seenParam":Ljava/lang/String;
    :sswitch_5
    :try_start_7
    invoke-direct/range {p0 .. p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiFolders(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_8

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 1660
    :sswitch_6
    :try_start_8
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->getMailbox(Landroid/net/Uri;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uiFolderLoadMore(Lcom/android/emailcommon/provider/Mailbox;)Landroid/database/Cursor;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_9

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 1663
    :sswitch_7
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 1664
    .local v32, "mailboxID":J
    const-wide/32 v5, 0x10000000

    const/4 v3, 0x0

    invoke-static {v5, v6, v3}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v5

    cmp-long v3, v32, v5

    if-nez v3, :cond_b

    .line 1666
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->uiCombineInboxRefresh()Landroid/database/Cursor;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v27

    .line 1770
    :goto_2
    if-nez v27, :cond_a

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 1670
    :cond_b
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/kingsoft/email/provider/EmailProvider;->uiFolderRefresh(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;

    move-result-object v27

    goto :goto_2

    .line 1674
    .end local v32    # "mailboxID":J
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->notificationQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_c

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 1677
    :sswitch_9
    :try_start_b
    invoke-virtual/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->mostRecentMessageQuery(Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_d

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 1680
    :sswitch_a
    :try_start_c
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->getMailboxMessageCount(Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v27

    .line 1770
    if-nez v27, :cond_e

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v3, v27

    goto/16 :goto_0

    .line 1683
    :sswitch_b
    :try_start_d
    const-string/jumbo v10, "MessageMove"

    .end local v10    # "tableName":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v3

    .line 1770
    if-nez v27, :cond_2

    .line 1777
    sget-object v5, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Query returning null for uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1686
    .restart local v10    # "tableName":Ljava/lang/String;
    :sswitch_c
    :try_start_e
    const-string/jumbo v10, "MessageStateChange"

    .end local v10    # "tableName":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v3

    .line 1770
    if-nez v27, :cond_2

    .line 1777
    sget-object v5, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Query returning null for uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1691
    .restart local v10    # "tableName":Ljava/lang/String;
    :sswitch_d
    if-eqz p2, :cond_11

    .line 1692
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_3
    :try_start_f
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v30

    if-ge v0, v3, :cond_11

    .line 1693
    aget-object v3, p2, v30

    const-string/jumbo v5, "htmlContentUri"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1694
    const-string/jumbo v3, "\'\' as htmlContentUri"

    aput-object v3, p2, v30

    .line 1692
    :cond_f
    :goto_4
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 1696
    :cond_10
    aget-object v3, p2, v30

    const-string/jumbo v5, "textContentUri"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1697
    const-string/jumbo v3, "\'\' as textContentUri"

    aput-object v3, p2, v30
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    .line 1765
    .end local v10    # "tableName":Ljava/lang/String;
    .end local v30    # "i":I
    :catch_2
    move-exception v29

    .line 1766
    .local v29, "e":Ljava/lang/RuntimeException;
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->checkDatabases()V

    .line 1767
    invoke-virtual/range {v29 .. v29}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1768
    throw v29
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1709
    .end local v29    # "e":Ljava/lang/RuntimeException;
    .restart local v10    # "tableName":Ljava/lang/String;
    :cond_11
    :sswitch_e
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    :try_start_11
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v27

    .line 1770
    :goto_5
    if-nez v27, :cond_12

    .line 1777
    sget-object v3, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_12
    if-eqz v27, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_13
    move-object/from16 v3, v27

    .line 1785
    goto/16 :goto_0

    .line 1713
    :sswitch_f
    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->uiQuickResponse([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1714
    goto :goto_5

    .line 1718
    :sswitch_10
    if-eqz p2, :cond_16

    .line 1719
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_6
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v30

    if-ge v0, v3, :cond_16

    .line 1720
    aget-object v3, p2, v30

    const-string/jumbo v5, "htmlContentUri"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1721
    const-string/jumbo v3, "\'\' as htmlContentUri"

    aput-object v3, p2, v30

    .line 1719
    :cond_14
    :goto_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 1723
    :cond_15
    aget-object v3, p2, v30

    const-string/jumbo v5, "textContentUri"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1724
    const-string/jumbo v3, "\'\' as textContentUri"

    aput-object v3, p2, v30

    goto :goto_7

    .line 1736
    .end local v30    # "i":I
    :cond_16
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1737
    .local v31, "id":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1739
    goto/16 :goto_5

    .line 1741
    .end local v31    # "id":Ljava/lang/String;
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1742
    .restart local v31    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->uiQuickResponseId([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1743
    goto/16 :goto_5

    .line 1746
    .end local v31    # "id":Ljava/lang/String;
    :sswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1747
    .restart local v31    # "id":Ljava/lang/String;
    const-string/jumbo v19, "Attachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "messageKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/kingsoft/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v9

    move-object/from16 v20, p2

    move-object/from16 v22, p4

    move-object/from16 v25, p5

    move-object/from16 v26, v17

    invoke-virtual/range {v18 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1753
    goto/16 :goto_5

    .line 1756
    .end local v31    # "id":Ljava/lang/String;
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1757
    .restart local v31    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->uiQuickResponseAccount([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v27

    .line 1758
    goto/16 :goto_5

    .line 1611
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_11
        0x1000 -> :sswitch_e
        0x1001 -> :sswitch_11
        0x1002 -> :sswitch_8
        0x1003 -> :sswitch_9
        0x1004 -> :sswitch_a
        0x2000 -> :sswitch_e
        0x2001 -> :sswitch_11
        0x2004 -> :sswitch_b
        0x2005 -> :sswitch_c
        0x3000 -> :sswitch_e
        0x3001 -> :sswitch_11
        0x3002 -> :sswitch_13
        0x4000 -> :sswitch_e
        0x4001 -> :sswitch_11
        0x5000 -> :sswitch_e
        0x5001 -> :sswitch_11
        0x6000 -> :sswitch_e
        0x6001 -> :sswitch_11
        0x7000 -> :sswitch_e
        0x7001 -> :sswitch_11
        0x8000 -> :sswitch_f
        0x8001 -> :sswitch_12
        0x8002 -> :sswitch_14
        0x9000 -> :sswitch_5
        0x9001 -> :sswitch_4
        0x9002 -> :sswitch_4
        0x9003 -> :sswitch_4
        0x9004 -> :sswitch_3
        0x9005 -> :sswitch_7
        0x9006 -> :sswitch_4
        0x9007 -> :sswitch_4
        0x9008 -> :sswitch_2
        0x9009 -> :sswitch_4
        0x900a -> :sswitch_4
        0x900b -> :sswitch_1
        0x900d -> :sswitch_6
        0x900e -> :sswitch_4
        0x900f -> :sswitch_4
        0x9011 -> :sswitch_4
        0x9012 -> :sswitch_4
        0x9013 -> :sswitch_4
        0xa000 -> :sswitch_d
        0xa001 -> :sswitch_10
    .end sparse-switch

    .line 1586
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x1001 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x3001 -> :sswitch_0
        0x4001 -> :sswitch_0
        0x5001 -> :sswitch_0
        0x6001 -> :sswitch_0
        0x7001 -> :sswitch_0
        0xa001 -> :sswitch_0
    .end sparse-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 614
    iput-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 618
    iput-object v1, p0, Lcom/kingsoft/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 620
    :cond_1
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 89
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2380
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2381
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->checkDatabases()V

    .line 2382
    const/16 v78, 0x0

    .line 2955
    :cond_0
    :goto_0
    return v78

    .line 2383
    :cond_1
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->backupAccounts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v78

    goto :goto_0

    .line 2388
    :cond_2
    sget-object v70, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 2390
    .local v70, "notificationUri":Landroid/net/Uri;
    const-string/jumbo v7, "update"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/kingsoft/email/provider/EmailProvider;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v57

    .line 2391
    .local v57, "match":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v32

    .line 2392
    .local v32, "context":Landroid/content/Context;
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v76

    .line 2394
    .local v76, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2395
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v83, v57, 0xc

    .line 2400
    .local v83, "table":I
    const/16 v7, 0x1001

    move/from16 v0, v57

    if-eq v0, v7, :cond_3

    const/16 v7, 0x1000

    move/from16 v0, v57

    if-ne v0, v7, :cond_4

    .line 2404
    :cond_3
    const-string/jumbo v7, "messageCount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2406
    :cond_4
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->TABLE_NAMES:Landroid/util/SparseArray;

    move/from16 v0, v83

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2407
    .local v5, "tableName":Ljava/lang/String;
    const-string/jumbo v48, "0"

    .line 2410
    .local v48, "id":Ljava/lang/String;
    sparse-switch v57, :sswitch_data_0

    .line 2942
    :try_start_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown URI "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "tableName":Ljava/lang/String;
    :catch_0
    move-exception v35

    move-object/from16 v23, v48

    .line 2945
    .end local v48    # "id":Ljava/lang/String;
    .local v23, "id":Ljava/lang/String;
    .local v35, "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->checkDatabases()V

    .line 2946
    throw v35

    .line 2412
    .end local v23    # "id":Ljava/lang/String;
    .end local v35    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "tableName":Ljava/lang/String;
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->pickTrashFolder(Landroid/net/Uri;)I

    move-result v78

    goto/16 :goto_0

    .line 2414
    :sswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->pickSentFolder(Landroid/net/Uri;)I

    move-result v78

    goto/16 :goto_0

    .line 2416
    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateFolder(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v78

    goto/16 :goto_0

    .line 2418
    :sswitch_3
    invoke-direct/range {p0 .. p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateRecentFolders(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v78

    goto/16 :goto_0

    .line 2420
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->uiPopulateRecentFolders(Landroid/net/Uri;)I

    move-result v78

    goto/16 :goto_0

    .line 2422
    :sswitch_5
    invoke-direct/range {p0 .. p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateAttachment(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v78

    goto/16 :goto_0

    .line 2424
    :sswitch_6
    const/16 v71, 0x0

    .line 2425
    .local v71, "notifyFolder":Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    .line 2426
    .local v60, "messageId":Ljava/lang/Long;
    const/16 v72, 0x0

    .line 2427
    .local v72, "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    const-string/jumbo v7, "read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "starred"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "rawFolders"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2430
    :cond_5
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v32

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v72

    .line 2432
    const/16 v71, 0x1

    .line 2434
    :cond_6
    const/16 v78, 0x0

    .line 2435
    .local v78, "retVal":I
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 2437
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2438
    .local v49, "ids":Ljava/lang/String;
    const-string/jumbo v7, "mailboxKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 2439
    .local v56, "mailboxkey":Ljava/lang/String;
    const-string/jumbo v7, "maxMergeCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 2440
    .local v58, "maxmerge":Ljava/lang/String;
    const-string/jumbo v7, "select a._id _id from Message a where _id in (%s)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v49, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v81

    .line 2441
    .local v81, "sql":Ljava/lang/String;
    if-eqz v58, :cond_7

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    .line 2442
    const-string/jumbo v7, "select a._id _id from Message a ,(select * from Message where _id in (%s)) b where a.rawSubject = b.rawSubject and a.mailboxKey=%s and (length(a.rawSubject) >0 or a._id in (%s))"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v49, v8, v12

    const/4 v12, 0x1

    aput-object v56, v8, v12

    const/4 v12, 0x2

    aput-object v49, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v81

    .line 2444
    :cond_7
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    move-object/from16 v0, v81

    invoke-virtual {v4, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v84

    .line 2445
    .local v84, "temp":Landroid/database/Cursor;
    const-string/jumbo v51, ""

    .line 2446
    .local v51, "idtemp":Ljava/lang/String;
    :goto_2
    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2447
    const-string/jumbo v7, "_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v84

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 2448
    .local v50, "idt":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 2449
    goto :goto_2

    .line 2450
    .end local v50    # "idt":Ljava/lang/String;
    :cond_8
    if-eqz v84, :cond_9

    .line 2451
    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->close()V

    .line 2453
    :cond_9
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 2454
    const/4 v7, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v49

    .line 2456
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v65

    .line 2457
    .local v65, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v88

    .line 2458
    .local v88, "uritemp":Landroid/net/Uri;
    invoke-virtual/range {v88 .. v88}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v30

    .line 2459
    .local v30, "builder":Landroid/net/Uri$Builder;
    invoke-interface/range {v65 .. v65}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .local v46, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/String;

    .line 2460
    .local v64, "name":Ljava/lang/String;
    const-string/jumbo v7, "ids"

    move-object/from16 v0, v64

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2461
    const-string/jumbo v7, "ids"

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v7, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 2463
    :cond_b
    move-object/from16 v0, v88

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v30

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 2467
    .end local v64    # "name":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2468
    invoke-direct/range {p0 .. p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateMessage(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v78

    .line 2491
    .end local v30    # "builder":Landroid/net/Uri$Builder;
    .end local v46    # "i$":Ljava/util/Iterator;
    .end local v49    # "ids":Ljava/lang/String;
    .end local v51    # "idtemp":Ljava/lang/String;
    .end local v56    # "mailboxkey":Ljava/lang/String;
    .end local v58    # "maxmerge":Ljava/lang/String;
    .end local v65    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v81    # "sql":Ljava/lang/String;
    .end local v84    # "temp":Landroid/database/Cursor;
    .end local v88    # "uritemp":Landroid/net/Uri;
    :cond_d
    :goto_4
    if-eqz v71, :cond_0

    if-lez v78, :cond_0

    .line 2492
    move-object/from16 v0, v72

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .end local v5    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v72

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIForMessage(JJLandroid/content/ContentValues;Z)V

    goto/16 :goto_0

    .line 2470
    .restart local v5    # "tableName":Ljava/lang/String;
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/email/provider/EmailProvider;->getQueryParamMergeCount(Landroid/net/Uri;)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_12

    .line 2471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    .line 2473
    .local v74, "query":Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Lcom/kingsoft/email/provider/EmailProvider;->getMergedItemCursorsByMessageId(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v33

    .line 2474
    .local v33, "cursor":Landroid/database/Cursor;
    :cond_f
    :goto_5
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2475
    const/4 v7, 0x2

    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v87

    .line 2477
    .local v87, "uriStr":Ljava/lang/String;
    invoke-static/range {v87 .. v87}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v74

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v86

    .line 2479
    .local v86, "updateUri":Landroid/net/Uri;
    :goto_6
    if-eqz v86, :cond_f

    .line 2481
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateMessage(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v7

    add-int v78, v78, v7

    goto :goto_5

    .line 2477
    .end local v86    # "updateUri":Landroid/net/Uri;
    :cond_10
    const/16 v86, 0x0

    goto :goto_6

    .line 2484
    .end local v87    # "uriStr":Ljava/lang/String;
    :cond_11
    if-eqz v33, :cond_d

    .line 2485
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 2487
    .end local v33    # "cursor":Landroid/database/Cursor;
    .end local v74    # "query":Ljava/lang/String;
    :cond_12
    invoke-direct/range {p0 .. p2}, Lcom/kingsoft/email/provider/EmailProvider;->uiUpdateMessage(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v78

    goto/16 :goto_4

    .line 2497
    .end local v60    # "messageId":Ljava/lang/Long;
    .end local v71    # "notifyFolder":Z
    .end local v72    # "oldMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v78    # "retVal":I
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v23

    .line 2499
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    const/16 v75, 0x1

    .line 2500
    .local v75, "res":I
    const/16 v47, 0x0

    .line 2502
    .local v47, "ic":Landroid/database/Cursor;
    :try_start_2
    const-string/jumbo v7, "select count(*) from (select count(*) as dupes from Mailbox where accountKey=? group by serverId) where dupes > 1"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v23, v8, v12

    invoke-virtual {v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v47

    .line 2503
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2504
    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v75

    .line 2507
    :cond_13
    if-eqz v47, :cond_14

    .line 2508
    :try_start_3
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    :cond_14
    move/from16 v78, v75

    .line 2512
    goto/16 :goto_0

    .line 2507
    :catchall_0
    move-exception v7

    if-eqz v47, :cond_15

    .line 2508
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v7
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2944
    .end local v47    # "ic":Landroid/database/Cursor;
    .end local v75    # "res":I
    :catch_1
    move-exception v35

    goto/16 :goto_1

    .line 2514
    .end local v23    # "id":Ljava/lang/String;
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_8
    :try_start_4
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v37

    .line 2518
    .local v37, "findCursor":Landroid/database/Cursor;
    if-eqz v37, :cond_16

    :try_start_5
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2519
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object/from16 v0, v37

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v7, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8, v12}, Lcom/kingsoft/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v78

    .line 2530
    if-eqz v37, :cond_0

    .line 2531
    :try_start_6
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2527
    :cond_16
    const/16 v78, 0x0

    .line 2530
    if-eqz v37, :cond_0

    .line 2531
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2530
    :catchall_1
    move-exception v7

    if-eqz v37, :cond_17

    .line 2531
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v7

    .line 2544
    .end local v37    # "findCursor":Landroid/database/Cursor;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2545
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    const/16 v54, 0x0

    .line 2546
    .local v54, "isEas":Z
    const-wide/16 v10, -0x1

    .line 2547
    .local v10, "oldMailboxId":J
    const-wide/16 v17, -0x1

    .line 2548
    .local v17, "accountId":J
    const/16 v7, 0x2002

    move/from16 v0, v57

    if-eq v0, v7, :cond_18

    const/16 v7, 0x2001

    move/from16 v0, v57

    if-ne v0, v7, :cond_1a

    .line 2549
    :cond_18
    :try_start_7
    const-string/jumbo v8, "SELECT h.protocol, m.mailboxKey, a._id FROM Message AS m INNER JOIN Account AS a ON m.accountKey=a._id INNER JOIN HostAuth AS h ON a.hostAuthKeyRecv=h._id WHERE m._id=?"

    const/4 v7, 0x1

    new-array v12, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v14, 0x1

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v12, v13

    invoke-virtual {v4, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v31

    .line 2551
    .local v31, "c":Landroid/database/Cursor;
    if-eqz v31, :cond_1a

    .line 2553
    :try_start_8
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2554
    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    .line 2556
    .local v73, "protocol":Ljava/lang/String;
    const v7, 0x7f100302

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v73

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    .line 2559
    const/4 v7, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2560
    const/4 v7, 0x2

    move-object/from16 v0, v31

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-wide v17

    .line 2563
    .end local v73    # "protocol":Ljava/lang/String;
    :cond_19
    :try_start_9
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2568
    .end local v31    # "c":Landroid/database/Cursor;
    :cond_1a
    const/16 v7, 0x2002

    move/from16 v0, v57

    if-ne v0, v7, :cond_2c

    .line 2571
    if-eqz v54, :cond_2a

    .line 2573
    const-string/jumbo v7, "mailboxKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v34

    .line 2575
    .local v34, "dstFolderId":Ljava/lang/Long;
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 2576
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2578
    :cond_1b
    if-eqz v34, :cond_1c

    .line 2579
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1, v7, v8}, Lcom/kingsoft/email/provider/EmailProvider;->addToMessageMoves(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2581
    :cond_1c
    const-string/jumbo v7, "flagRead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v41

    .line 2583
    .local v41, "flagRead":Ljava/lang/Integer;
    const-string/jumbo v7, "flagFavorite"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    .line 2585
    .local v39, "flagFavorite":Ljava/lang/Integer;
    if-eqz v41, :cond_27

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v42

    .line 2587
    .local v42, "flagReadValue":I
    :goto_7
    if-eqz v39, :cond_28

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 2589
    .local v40, "flagFavoriteValue":I
    :goto_8
    if-nez v41, :cond_1d

    if-eqz v39, :cond_1e

    .line 2590
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v42

    move/from16 v3, v40

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->addToMessageStateChanges(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 2616
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/provider/EmailProvider;->getDelayedSyncHandler()Landroid/os/Handler;

    move-result-object v45

    .line 2617
    .local v45, "handler":Landroid/os/Handler;
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/provider/EmailProvider;->getAccountManagerAccount(J)Landroid/accounts/Account;

    move-result-object v9

    .line 2618
    .local v9, "amAccount":Landroid/accounts/Account;
    if-eqz v9, :cond_29

    .line 2619
    new-instance v6, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;-><init>(Lcom/kingsoft/email/provider/EmailProvider;Ljava/lang/String;Landroid/accounts/Account;JLcom/kingsoft/email/provider/EmailProvider$1;)V

    .line 2621
    .local v6, "request":Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncRequests:Ljava/util/Set;

    monitor-enter v8
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 2622
    :try_start_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncRequests:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 2623
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/email/provider/EmailProvider;->mDelayedSyncRequests:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2624
    const/4 v7, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v59

    .line 2626
    .local v59, "message":Landroid/os/Message;
    const-wide/16 v12, 0x7530

    move-object/from16 v0, v45

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2629
    .end local v59    # "message":Landroid/os/Message;
    :cond_1f
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2637
    .end local v6    # "request":Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
    :goto_9
    :try_start_b
    const-string/jumbo v7, "mailboxKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 2639
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insert or ignore into Message_Updates select * from Message where _id in("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2658
    .end local v9    # "amAccount":Landroid/accounts/Account;
    .end local v34    # "dstFolderId":Ljava/lang/Long;
    .end local v39    # "flagFavorite":Ljava/lang/Integer;
    .end local v40    # "flagFavoriteValue":I
    .end local v41    # "flagRead":Ljava/lang/Integer;
    .end local v42    # "flagReadValue":I
    .end local v45    # "handler":Landroid/os/Handler;
    :cond_20
    :goto_a
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_21

    .line 2659
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2661
    :cond_21
    const-string/jumbo v7, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v49

    .line 2662
    .local v49, "ids":[Ljava/lang/String;
    const/16 v77, 0x0

    .line 2664
    .local v77, "result":I
    sget-object v36, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    .line 2665
    .local v36, "espc":Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
    const/16 v85, 0x0

    .line 2666
    .local v85, "updateMailbox":Lcom/android/emailcommon/provider/Mailbox;
    const/4 v7, 0x1

    move/from16 v0, v57

    if-ne v0, v7, :cond_2d

    .line 2668
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object/from16 v0, v32

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v26

    .line 2669
    .local v26, "account":Lcom/android/emailcommon/provider/Account;
    const-string/jumbo v7, "syncLookback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2671
    const-string/jumbo v7, "syncLookback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v66

    .line 2672
    .local v66, "newLookBack":I
    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    move/from16 v0, v66

    if-eq v0, v7, :cond_22

    .line 2674
    sget-object v36, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->LOOKBACK_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    .line 2677
    .end local v66    # "newLookBack":I
    :cond_22
    const-string/jumbo v7, "syncInterval"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    move-object/from16 v0, v36

    if-ne v0, v7, :cond_23

    .line 2680
    const-string/jumbo v7, "syncInterval"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v68

    .line 2681
    .local v68, "newSyncInterval":I
    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    move/from16 v0, v68

    if-eq v0, v7, :cond_23

    .line 2683
    sget-object v36, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->INTERVAL_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    .line 2714
    .end local v26    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v68    # "newSyncInterval":I
    :cond_23
    :goto_b
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v77

    .line 2717
    const/16 v7, 0x2001

    move/from16 v0, v57

    if-eq v0, v7, :cond_24

    const/16 v7, 0x2002

    move/from16 v0, v57

    if-ne v0, v7, :cond_30

    .line 2718
    :cond_24
    if-eqz v77, :cond_25

    const-wide/16 v7, -0x1

    cmp-long v7, v17, v7

    if-eqz v7, :cond_25

    .line 2719
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide v15, v10

    move-object/from16 v19, p2

    invoke-direct/range {v12 .. v19}, Lcom/kingsoft/email/provider/EmailProvider;->handleMessageUpdateNotifications(Landroid/net/Uri;Ljava/lang/String;JJLandroid/content/ContentValues;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1

    .line 2949
    .end local v10    # "oldMailboxId":J
    .end local v17    # "accountId":J
    .end local v36    # "espc":Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
    .end local v49    # "ids":[Ljava/lang/String;
    .end local v54    # "isEas":Z
    .end local v85    # "updateMailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_25
    :goto_c
    const/16 v7, 0x6000

    move/from16 v0, v57

    if-eq v0, v7, :cond_26

    if-eqz v77, :cond_26

    .line 2951
    invoke-static/range {v57 .. v57}, Lcom/kingsoft/email/provider/EmailProvider;->getBaseNotificationUri(I)Landroid/net/Uri;

    move-result-object v21

    const-string/jumbo v22, "update"

    move-object/from16 v19, p0

    move/from16 v20, v57

    move-object/from16 v24, p2

    invoke-direct/range {v19 .. v24}, Lcom/kingsoft/email/provider/EmailProvider;->sendNotifierChange(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2953
    const/4 v7, 0x0

    move-object/from16 v0, v76

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_26
    move/from16 v78, v77

    .line 2955
    goto/16 :goto_0

    .line 2563
    .end local v77    # "result":I
    .restart local v10    # "oldMailboxId":J
    .restart local v17    # "accountId":J
    .restart local v31    # "c":Landroid/database/Cursor;
    .restart local v54    # "isEas":Z
    :catchall_2
    move-exception v7

    :try_start_c
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    throw v7
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_1

    .line 2585
    .end local v31    # "c":Landroid/database/Cursor;
    .restart local v34    # "dstFolderId":Ljava/lang/Long;
    .restart local v39    # "flagFavorite":Ljava/lang/Integer;
    .restart local v41    # "flagRead":Ljava/lang/Integer;
    :cond_27
    const/16 v42, -0x1

    goto/16 :goto_7

    .line 2587
    .restart local v42    # "flagReadValue":I
    :cond_28
    const/16 v40, -0x1

    goto/16 :goto_8

    .line 2629
    .restart local v6    # "request":Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
    .restart local v9    # "amAccount":Landroid/accounts/Account;
    .restart local v40    # "flagFavoriteValue":I
    .restart local v45    # "handler":Landroid/os/Handler;
    :catchall_3
    move-exception v7

    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v7

    .line 2631
    .end local v6    # "request":Lcom/kingsoft/email/provider/EmailProvider$SyncRequestMessage;
    :cond_29
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Attempted to start delayed sync for invalid account %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v7, v8, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 2650
    .end local v9    # "amAccount":Landroid/accounts/Account;
    .end local v34    # "dstFolderId":Ljava/lang/Long;
    .end local v39    # "flagFavorite":Ljava/lang/Integer;
    .end local v40    # "flagFavoriteValue":I
    .end local v41    # "flagRead":Ljava/lang/Integer;
    .end local v42    # "flagReadValue":I
    .end local v45    # "handler":Landroid/os/Handler;
    :cond_2a
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2b

    .line 2651
    const-string/jumbo v7, "ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2653
    :cond_2b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insert or ignore into Message_Updates select * from Message where _id in("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2655
    :cond_2c
    const/16 v7, 0x2001

    move/from16 v0, v57

    if-ne v0, v7, :cond_20

    goto/16 :goto_a

    .line 2687
    .restart local v36    # "espc":Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
    .restart local v49    # "ids":[Ljava/lang/String;
    .restart local v77    # "result":I
    .restart local v85    # "updateMailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_2d
    const/16 v7, 0x1001

    move/from16 v0, v57

    if-ne v0, v7, :cond_23

    .line 2689
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v32

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v85

    .line 2690
    if-eqz v85, :cond_23

    const-string/jumbo v7, "syncLookback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2e

    const-string/jumbo v7, "syncInterval"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2693
    :cond_2e
    move-object/from16 v0, v85

    iget-wide v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v0, v32

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v73

    .line 2694
    .restart local v73    # "protocol":Ljava/lang/String;
    const v7, 0x7f100302

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2695
    const-string/jumbo v7, "syncLookback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 2696
    const-string/jumbo v7, "syncLookback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v66

    .line 2698
    .restart local v66    # "newLookBack":I
    move-object/from16 v0, v85

    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    move/from16 v0, v66

    if-eq v0, v7, :cond_2f

    .line 2699
    sget-object v36, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->LOOKBACK_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    .line 2702
    .end local v66    # "newLookBack":I
    :cond_2f
    const-string/jumbo v7, "syncInterval"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    move-object/from16 v0, v36

    if-ne v0, v7, :cond_23

    .line 2704
    const-string/jumbo v7, "syncInterval"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v68

    .line 2706
    .restart local v68    # "newSyncInterval":I
    move-object/from16 v0, v85

    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    move/from16 v0, v68

    if-eq v0, v7, :cond_23

    .line 2707
    sget-object v36, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->INTERVAL_CHANGE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    goto/16 :goto_b

    .line 2721
    .end local v68    # "newSyncInterval":I
    .end local v73    # "protocol":Ljava/lang/String;
    :cond_30
    const/16 v7, 0x3001

    move/from16 v0, v57

    if-ne v0, v7, :cond_33

    .line 2722
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v28, v0

    .line 2723
    .local v28, "attId":J
    const-string/jumbo v7, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2724
    const-string/jumbo v7, "flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 2726
    .local v43, "flags":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/email/provider/EmailProvider;->mAttachmentService:Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    move/from16 v3, v43

    invoke-interface {v7, v0, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider$AttachmentService;->attachmentChanged(Landroid/content/Context;JI)V

    .line 2732
    .end local v43    # "flags":I
    :cond_31
    const-string/jumbo v7, "uiState"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_32

    const-string/jumbo v7, "uiDownloadedSize"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 2736
    :cond_32
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ATTACHMENT_NOTIFIER:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v7, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2737
    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v27

    .line 2739
    .local v27, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v27, :cond_25

    .line 2741
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ATTACHMENTS_NOTIFIER:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    goto/16 :goto_c

    .line 2746
    .end local v27    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v28    # "attId":J
    :cond_33
    const/16 v7, 0x1001

    move/from16 v0, v57

    if-ne v0, v7, :cond_36

    .line 2747
    if-eqz v85, :cond_25

    .line 2748
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    move-object/from16 v0, v85

    iget-wide v12, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 2751
    const-string/jumbo v7, "syncTime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 2752
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDER_NOTIFIER:Landroid/net/Uri;

    const-wide/32 v12, 0x10000000

    const/4 v8, 0x0

    invoke-static {v12, v13, v8}, Lcom/kingsoft/email/provider/EmailProvider;->getVirtualMailboxId(JI)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 2756
    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->isNeedNotifyUIForMailboxList(Landroid/content/ContentValues;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 2757
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_FOLDERLIST_NOTIFIER:Landroid/net/Uri;

    move-object/from16 v0, v85

    iget-wide v12, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v13}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;J)V

    .line 2760
    :cond_35
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;->NONE:Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;

    move-object/from16 v0, v36

    if-eq v0, v7, :cond_25

    .line 2762
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-direct {v0, v1, v7}, Lcom/kingsoft/email/provider/EmailProvider;->uiFolderRefresh(Lcom/android/emailcommon/provider/Mailbox;I)Landroid/database/Cursor;

    goto/16 :goto_c

    .line 2765
    :cond_36
    const/4 v7, 0x1

    move/from16 v0, v57

    if-ne v0, v7, :cond_25

    .line 2766
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v8, v1}, Lcom/kingsoft/email/provider/EmailProvider;->updateAccountSyncInterval(JLandroid/content/ContentValues;)V

    .line 2768
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ACCOUNT_NOTIFIER:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v7, v1}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUI(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2769
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->UIPROVIDER_ALL_ACCOUNTS_NOTIFIER:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object/from16 v0, v76

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2771
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move-object/from16 v3, v36

    invoke-static {v0, v4, v1, v2, v3}, Lcom/kingsoft/email/provider/EmailProvider;->restartPushForAccount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;)Z
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_c

    .line 2775
    .end local v10    # "oldMailboxId":J
    .end local v17    # "accountId":J
    .end local v23    # "id":Ljava/lang/String;
    .end local v36    # "espc":Lcom/kingsoft/email/provider/EmailProvider$ESyncParamsChanged;
    .end local v49    # "ids":[Ljava/lang/String;
    .end local v54    # "isEas":Z
    .end local v77    # "result":I
    .end local v85    # "updateMailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_a
    :try_start_f
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v77

    .line 2776
    .restart local v77    # "result":I
    if-nez v77, :cond_46

    const-string/jumbo v7, "messageKey=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 2781
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Body Update to non-existent row, morphing to insert"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v12}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2783
    new-instance v53, Landroid/content/ContentValues;

    move-object/from16 v0, v53

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2784
    .local v53, "insertValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "messageKey"

    const/4 v8, 0x0

    aget-object v8, p4, v8

    move-object/from16 v0, v53

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v7, v1}, Lcom/kingsoft/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-object/from16 v23, v48

    .line 2786
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2795
    .end local v23    # "id":Ljava/lang/String;
    .end local v53    # "insertValues":Landroid/content/ContentValues;
    .end local v77    # "result":I
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_b
    const/16 v7, 0x3000

    move/from16 v0, v57

    if-ne v0, v7, :cond_37

    .line 2796
    const-string/jumbo v7, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    const-string/jumbo v7, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 2799
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v12, "attachment with blank location"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v7, v8, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2803
    :cond_37
    const/16 v69, 0x0

    .line 2804
    .local v69, "notificationInbox":Z
    const/16 v7, 0x2000

    move/from16 v0, v57

    if-ne v0, v7, :cond_3a

    .line 2806
    const-string/jumbo v7, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 2807
    const-string/jumbo v7, "rawSubject"

    const-string/jumbo v8, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kingsoft/mail/ui/SubjectMergeInfo;->findRawSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    :cond_38
    const-string/jumbo v7, "flagRead"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    const-string/jumbo v7, "snippet"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 2813
    :cond_39
    const/16 v69, 0x1

    .line 2816
    :cond_3a
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_0

    move-result v77

    .line 2817
    .restart local v77    # "result":I
    if-eqz v69, :cond_46

    if-lez v77, :cond_46

    .line 2819
    const-wide/16 v62, 0x0

    .line 2821
    .local v62, "msgID":J
    const/4 v7, 0x0

    :try_start_10
    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v62

    .line 2822
    move-object/from16 v0, v32

    move-wide/from16 v1, v62

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v61

    .line 2825
    .local v61, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v61, :cond_3b

    .line 2826
    move-object/from16 v0, v61

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v61

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v22, v0

    const/16 v25, 0x1

    move-object/from16 v19, p0

    move-object/from16 v24, p2

    invoke-direct/range {v19 .. v25}, Lcom/kingsoft/email/provider/EmailProvider;->notifyUIForMessage(JJLandroid/content/ContentValues;Z)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_0

    .end local v61    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3b
    :goto_d
    move-object/from16 v23, v48

    .line 2833
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2837
    .end local v23    # "id":Ljava/lang/String;
    .end local v62    # "msgID":J
    .end local v69    # "notificationInbox":Z
    .end local v77    # "result":I
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_c
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_0

    .line 2838
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    :try_start_12
    sget-object v67, Lcom/kingsoft/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    .line 2839
    .local v67, "newMessageCount":Landroid/content/ContentValues;
    if-eqz p2, :cond_3c

    .line 2840
    const-string/jumbo v7, "set"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v80

    .line 2841
    .local v80, "set":Ljava/lang/Long;
    if-eqz v80, :cond_3c

    .line 2842
    new-instance v67, Landroid/content/ContentValues;

    .end local v67    # "newMessageCount":Landroid/content/ContentValues;
    invoke-direct/range {v67 .. v67}, Landroid/content/ContentValues;-><init>()V

    .line 2843
    .restart local v67    # "newMessageCount":Landroid/content/ContentValues;
    const-string/jumbo v7, "newMessageCount"

    move-object/from16 v0, v67

    move-object/from16 v1, v80

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2847
    .end local v80    # "set":Ljava/lang/Long;
    :cond_3c
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v67

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v77

    .line 2849
    .restart local v77    # "result":I
    sget-object v70, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_1

    .line 2851
    goto/16 :goto_c

    .line 2853
    .end local v23    # "id":Ljava/lang/String;
    .end local v67    # "newMessageCount":Landroid/content/ContentValues;
    .end local v77    # "result":I
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_d
    :try_start_13
    sget-object v7, Lcom/kingsoft/email/provider/EmailProvider;->CONTENT_VALUES_RESET_NEW_MESSAGE_COUNT:Landroid/content/ContentValues;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v7, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v77

    .line 2857
    .restart local v77    # "result":I
    sget-object v70, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v23, v48

    .line 2859
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2861
    .end local v23    # "id":Ljava/lang/String;
    .end local v77    # "result":I
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v7, "MessageMove"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v77

    .restart local v77    # "result":I
    move-object/from16 v23, v48

    .line 2863
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2865
    .end local v23    # "id":Ljava/lang/String;
    .end local v77    # "result":I
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v7, "MessageStateChange"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v77

    .restart local v77    # "result":I
    move-object/from16 v23, v48

    .line 2867
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2869
    .end local v23    # "id":Ljava/lang/String;
    .end local v77    # "result":I
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v77

    .restart local v77    # "result":I
    move-object/from16 v23, v48

    .line 2871
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2873
    .end local v23    # "id":Ljava/lang/String;
    .end local v77    # "result":I
    .restart local v48    # "id":Ljava/lang/String;
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v79

    .line 2874
    .local v79, "sParamNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v7, "fromList"

    move-object/from16 v0, v79

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 2875
    const-string/jumbo v7, "fromList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_0

    move-result-object v44

    .line 2878
    .local v44, "fromList":Ljava/lang/String;
    :try_start_14
    new-instance v55, Lorg/json/JSONArray;

    move-object/from16 v0, v55

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2880
    .local v55, "ja":Lorg/json/JSONArray;
    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    .line 2881
    .local v81, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v82, " (lower(%s) like \'%%<%s>%%\'  escape \'/\'  or lower(%s)=\'%s\') "

    .line 2883
    .local v82, "sqlFormator":Ljava/lang/String;
    const/16 v52, 0x0

    .local v52, "idx":I
    :goto_e
    invoke-virtual/range {v55 .. v55}, Lorg/json/JSONArray;->length()I

    move-result v7

    move/from16 v0, v52

    if-ge v0, v7, :cond_3e

    .line 2884
    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3d

    .line 2885
    const-string/jumbo v7, " or "

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    :cond_3d
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v12, "fromList"

    aput-object v12, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kingsoft/email/provider/EmailProvider;->preProcessSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v12, "fromList"

    aput-object v12, v7, v8

    const/4 v8, 0x3

    move-object/from16 v0, v55

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\'"

    const-string/jumbo v14, "\'\'"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    move-object/from16 v0, v82

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    add-int/lit8 v52, v52, 0x1

    goto :goto_e

    .line 2894
    :cond_3e
    invoke-static/range {p3 .. p3}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 2895
    const-string/jumbo v7, " ( %s ) And (%s) "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v8, v12

    const/4 v12, 0x1

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_0

    move-result-object p3

    .line 2907
    .end local v44    # "fromList":Ljava/lang/String;
    .end local v52    # "idx":I
    .end local v55    # "ja":Lorg/json/JSONArray;
    .end local v81    # "sql":Ljava/lang/StringBuilder;
    .end local v82    # "sqlFormator":Ljava/lang/String;
    :cond_3f
    :goto_f
    :try_start_15
    const-string/jumbo v7, "flagRead"

    move-object/from16 v0, v79

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 2908
    const-string/jumbo v7, "flagRead"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2910
    .local v38, "flag":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_43

    .line 2912
    const-string/jumbo v7, "unread"

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 2913
    const-string/jumbo v7, "%s and %s=0 "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2931
    .end local v38    # "flag":Ljava/lang/String;
    :cond_40
    :goto_10
    invoke-static/range {p3 .. p3}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 2933
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2939
    :goto_11
    const-string/jumbo v7, "Message"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v7, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_0

    move-result v77

    .restart local v77    # "result":I
    move-object/from16 v23, v48

    .line 2940
    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2898
    .end local v23    # "id":Ljava/lang/String;
    .end local v77    # "result":I
    .restart local v44    # "fromList":Ljava/lang/String;
    .restart local v48    # "id":Ljava/lang/String;
    .restart local v52    # "idx":I
    .restart local v55    # "ja":Lorg/json/JSONArray;
    .restart local v81    # "sql":Ljava/lang/StringBuilder;
    .restart local v82    # "sqlFormator":Ljava/lang/String;
    :cond_41
    :try_start_16
    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_0

    move-result-object p3

    goto :goto_f

    .line 2901
    .end local v52    # "idx":I
    .end local v55    # "ja":Lorg/json/JSONArray;
    .end local v81    # "sql":Ljava/lang/StringBuilder;
    .end local v82    # "sqlFormator":Ljava/lang/String;
    :catch_2
    move-exception v35

    .line 2903
    .local v35, "e":Lorg/json/JSONException;
    :try_start_17
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f

    .line 2916
    .end local v35    # "e":Lorg/json/JSONException;
    .end local v44    # "fromList":Ljava/lang/String;
    .restart local v38    # "flag":Ljava/lang/String;
    :cond_42
    const-string/jumbo v7, "%s and %s=1 "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v8, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_10

    .line 2922
    :cond_43
    const-string/jumbo v7, "unread"

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 2923
    const-string/jumbo v7, " %s=0 "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_10

    .line 2926
    :cond_44
    const-string/jumbo v7, " %s=1 "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "flagRead"

    aput-object v13, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_10

    .line 2936
    .end local v38    # "flag":Ljava/lang/String;
    :cond_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_0

    move-result-object p3

    goto :goto_11

    .line 2829
    .end local v79    # "sParamNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v62    # "msgID":J
    .restart local v69    # "notificationInbox":Z
    .restart local v77    # "result":I
    :catch_3
    move-exception v7

    goto/16 :goto_d

    .end local v62    # "msgID":J
    .end local v69    # "notificationInbox":Z
    :cond_46
    move-object/from16 v23, v48

    .end local v48    # "id":Ljava/lang/String;
    .restart local v23    # "id":Ljava/lang/String;
    goto/16 :goto_c

    .line 2410
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_9
        0x2 -> :sswitch_d
        0x3 -> :sswitch_c
        0x4 -> :sswitch_7
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x1000 -> :sswitch_b
        0x1001 -> :sswitch_9
        0x2000 -> :sswitch_b
        0x2001 -> :sswitch_9
        0x2002 -> :sswitch_9
        0x2003 -> :sswitch_8
        0x2004 -> :sswitch_e
        0x2005 -> :sswitch_f
        0x3000 -> :sswitch_b
        0x3001 -> :sswitch_9
        0x4000 -> :sswitch_b
        0x4001 -> :sswitch_9
        0x5000 -> :sswitch_b
        0x5001 -> :sswitch_9
        0x6000 -> :sswitch_10
        0x7000 -> :sswitch_b
        0x7001 -> :sswitch_9
        0x8001 -> :sswitch_9
        0x9003 -> :sswitch_6
        0x9006 -> :sswitch_2
        0x900a -> :sswitch_5
        0x900f -> :sswitch_3
        0x9010 -> :sswitch_4
        0x9013 -> :sswitch_11
        0xa000 -> :sswitch_a
        0xa001 -> :sswitch_9
    .end sparse-switch
.end method
