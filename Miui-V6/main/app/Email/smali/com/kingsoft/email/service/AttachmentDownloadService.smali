.class public Lcom/kingsoft/email/service/AttachmentDownloadService;
.super Landroid/app/Service;
.source "AttachmentDownloadService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;,
        Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;,
        Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadComparator;,
        Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;,
        Lcom/kingsoft/email/service/AttachmentDownloadService$Watchdog;,
        Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;,
        Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Service;",
        "Ljava/lang/Runnable;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALLBACK_TIMEOUT:I = 0x7530

.field private static final CONNECTION_ERROR_DELAY_THRESHOLD:J = 0x5L

.field private static final CONNECTION_ERROR_MAX_RETRIES:J = 0x5L

.field private static final CONNECTION_ERROR_RETRY_MILLIS:J = 0x2710L

.field private static final EXTRA_ATTACHMENT:Ljava/lang/String; = "com.android.email.AttachmentDownloadService.attachment"

.field private static final MAX_ATTACHMENTS_TO_CHECK:I = 0x19

.field private static final MAX_DOWNLOAD_RETRIES:I = 0x5

.field private static final MAX_SIMULTANEOUS_DOWNLOADS:I = 0x2

.field private static final MAX_SIMULTANEOUS_DOWNLOADS_PER_ACCOUNT:I = 0x1

.field private static final PREFETCH_MAXIMUM_ATTACHMENT_STORAGE:F = 0.25f

.field private static final PREFETCH_MINIMUM_STORAGE_AVAILABLE:F = 0.25f

.field private static final PRIORITY_BACKGROUND:I = 0x0

.field private static final PRIORITY_FOREGROUND:I = 0x2

.field private static final PRIORITY_NONE:I = -0x1

.field private static final PRIORITY_SEND_MAIL:I = 0x1

.field private static final PROCESS_QUEUE_WAIT_TIME:I = 0x1b7740

.field public static final TAG:Ljava/lang/String; = "AttachmentDownload"

.field private static final WATCHDOG_CHECK_INTERVAL:I = 0x4e20

.field static volatile sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;


# instance fields
.field mAccountManagerStub:Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;

.field private final mAccountServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mAllInboxIds:Ljava/lang/String;

.field final mAttachmentFailureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mAttachmentStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCancelingDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCursorLoader:Landroid/content/CursorLoader;

.field final mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkBroadcastReceiver:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$NetWorkBroadcastReceiver;

.field private mPrecacheInboxSelection:Ljava/lang/String;

.field private final mServiceCallback:Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;

.field private volatile mStop:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 132
    new-instance v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    new-instance v1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadComparator;

    invoke-direct {v1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadComparator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;-><init>(Lcom/kingsoft/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    .line 144
    new-instance v0, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/kingsoft/email/service/AttachmentDownloadService;Lcom/kingsoft/email/service/AttachmentDownloadService$1;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mStop:Z

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCancelingDownloads:Ljava/util/Set;

    .line 995
    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/service/AttachmentDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->kick()V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/email/service/AttachmentDownloadService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mPrecacheInboxSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/service/AttachmentDownloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mStop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/kingsoft/email/service/AttachmentDownloadService;)Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/AttachmentDownloadService;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/kingsoft/email/service/AttachmentDownloadService$ServiceCallback;

    return-object v0
.end method

.method public static attachmentChanged(Landroid/content/Context;JI)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "flags"    # I

    .prologue
    .line 1256
    new-instance v0, Lcom/kingsoft/email/service/AttachmentDownloadService$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingsoft/email/service/AttachmentDownloadService$1;-><init>(Landroid/content/Context;JI)V

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;->runAsyncSerial(Ljava/lang/Runnable;)Lcom/kingsoft/emailcommon/utility/EmailAsyncTask;

    .line 1271
    return-void
.end method

.method public static cancelEndDownload(JI)V
    .locals 2
    .param p0, "attachmentId"    # J
    .param p2, "statusCode"    # I

    .prologue
    .line 1184
    sget-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1185
    .local v0, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 1186
    iget-object v1, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, p0, p1, p2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    .line 1188
    :cond_0
    return-void
.end method

.method public static cancelQueuedAttachment(J)Z
    .locals 2
    .param p0, "attachmentId"    # J

    .prologue
    .line 1119
    sget-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1120
    .local v0, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {v0, p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService;->dequeue(J)Z

    move-result v1

    .line 1123
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static clearCancelingFlag(J)V
    .locals 3
    .param p0, "attId"    # J

    .prologue
    .line 1176
    sget-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1177
    .local v0, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 1178
    iget-object v1, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCancelingDownloads:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1180
    :cond_0
    return-void
.end method

.method private declared-synchronized downloadInlineImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 1192
    monitor-enter p0

    :try_start_0
    sget-object v17, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1193
    .local v17, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v17, :cond_2

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1195
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    .line 1197
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "contentId= ? and messageKey = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1203
    .local v12, "c":Landroid/database/Cursor;
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    .local v9, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v12, :cond_6

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1206
    invoke-virtual {v9, v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 1210
    .local v8, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v8, :cond_1

    iget v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 1242
    :cond_1
    if-eqz v12, :cond_2

    .line 1243
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1247
    .end local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v9    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1212
    .restart local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v9    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v12    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 1213
    .local v16, "protocol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const v4, 0x7f100304

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1215
    .local v13, "legacyImapProtocol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const v4, 0x7f100305

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1218
    .local v15, "pop3":Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 1220
    .local v14, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v3, 0x2

    iput v3, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1225
    .end local v14    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1226
    :cond_5
    new-instance v2, Lcom/kingsoft/mail/browse/AttachmentActionHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/kingsoft/mail/browse/AttachmentViewInterface;)V

    .line 1228
    .local v2, "mAttachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1229
    .local v10, "attId":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v10, :cond_7

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "attId":I
    .local v11, "attId":I
    move v6, v10

    move v10, v11

    .end local v11    # "attId":I
    .restart local v10    # "attId":I
    :goto_1
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/kingsoft/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(Ljava/lang/Long;IIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1242
    .end local v2    # "mAttachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .end local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v10    # "attId":I
    .end local v13    # "legacyImapProtocol":Ljava/lang/String;
    .end local v15    # "pop3":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    :cond_6
    :goto_2
    if-eqz v12, :cond_2

    .line 1243
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1192
    .end local v9    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v17    # "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1229
    .restart local v2    # "mAttachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .restart local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v9    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v10    # "attId":I
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "legacyImapProtocol":Ljava/lang/String;
    .restart local v15    # "pop3":Ljava/lang/String;
    .restart local v16    # "protocol":Ljava/lang/String;
    .restart local v17    # "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    .line 1237
    .end local v2    # "mAttachmentActionHandler":Lcom/kingsoft/mail/browse/AttachmentActionHandler;
    .end local v10    # "attId":I
    :cond_8
    const/4 v3, 0x2

    :try_start_5
    iput v3, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    iget-wide v4, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iget v6, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v3, v4, v5, v6}, Lcom/kingsoft/email/service/AttachmentDownloadService;->attachmentChanged(Landroid/content/Context;JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1242
    .end local v8    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v13    # "legacyImapProtocol":Ljava/lang/String;
    .end local v15    # "pop3":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v12, :cond_9

    .line 1243
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private getMailboxIdsByType(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 18
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "inboxEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 160
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v3, "inboxIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 162
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;

    .line 165
    .local v8, "mr":Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;
    iget-wide v10, v8, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mParentKey:J

    .line 166
    .local v10, "parentKey":J
    iget-wide v5, v8, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mId:J

    .line 167
    .local v5, "mailId":J
    iget v7, v8, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mType:I

    .line 169
    .local v7, "mailType":I
    :goto_1
    const-wide/16 v13, -0x1

    cmp-long v13, v10, v13

    if-eqz v13, :cond_1

    .line 170
    move-wide v5, v10

    .line 171
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;

    .line 172
    .local v9, "next":Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;
    if-eqz v9, :cond_1

    .line 173
    iget-wide v10, v9, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mParentKey:J

    .line 174
    iget v7, v9, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;->mType:I

    .line 180
    goto :goto_1

    .line 182
    .end local v9    # "next":Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;
    :cond_1
    move/from16 v0, p2

    if-ne v7, v0, :cond_0

    .line 183
    const-string/jumbo v13, "AttachmentDownload"

    const-string/jumbo v14, "Got it: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;>;"
    .end local v5    # "mailId":J
    .end local v7    # "mailType":I
    .end local v8    # "mr":Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;
    .end local v10    # "parentKey":J
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v12, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 191
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    :cond_3
    :goto_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 193
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 194
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 196
    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 201
    .end local v2    # "i":I
    :cond_5
    const-string/jumbo v13, "AttachmentDownload"

    const-string/jumbo v14, "there is no inbox folder!"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method private static getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 3
    .param p0, "att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 974
    const/4 v1, -0x1

    .line 975
    .local v1, "priorityClass":I
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 976
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 977
    const/4 v1, 0x1

    .line 981
    :cond_0
    :goto_0
    return v1

    .line 978
    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 979
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getQueueSize()I
    .locals 2

    .prologue
    .line 1081
    sget-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1082
    .local v0, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getSize()I

    move-result v1

    .line 1085
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAttachmentDownloading(J)Z
    .locals 5
    .param p0, "attachmentId"    # J

    .prologue
    .line 1102
    sget-object v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1103
    .local v2, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v2, :cond_1

    .line 1104
    iget-object v3, v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v3}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 1105
    .local v1, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    iget-wide v3, v1, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 1106
    const/4 v3, 0x1

    .line 1110
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAttachmentQueued(J)Z
    .locals 2
    .param p0, "attachmentId"    # J

    .prologue
    .line 1094
    sget-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1095
    .local v0, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0, p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isQueued(J)Z

    move-result v1

    .line 1098
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCancelingDownload(J)Z
    .locals 4
    .param p0, "attId"    # J

    .prologue
    .line 1150
    sget-object v1, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1151
    .local v1, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v1, :cond_0

    .line 1152
    iget-object v2, v1, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCancelingDownloads:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1153
    .local v0, "downloading":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1157
    .end local v0    # "downloading":Ljava/lang/Boolean;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDecoding(J)Z
    .locals 4
    .param p0, "attId"    # J

    .prologue
    .line 1134
    sget-object v1, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1136
    .local v1, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v1, :cond_0

    .line 1137
    iget-object v2, v1, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2, p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    .line 1138
    .local v0, "dr":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v0, :cond_0

    .line 1139
    iget v2, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1141
    const/4 v2, 0x1

    .line 1146
    .end local v0    # "dr":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private kick()V
    .locals 2

    .prologue
    .line 985
    iget-object v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 987
    monitor-exit v1

    .line 988
    return-void

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setCancelingFlag(J)V
    .locals 4
    .param p0, "attId"    # J

    .prologue
    .line 1161
    const-string/jumbo v1, "AttachmentDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canceling attachment downloading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1162
    sget-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1164
    .local v0, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 1165
    invoke-static {p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService;->isDecoding(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1167
    iget-object v1, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const v2, 0x7f1000e9

    invoke-static {v1, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-object v1, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCancelingDownloads:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static watchdogAlarm()V
    .locals 2

    .prologue
    .line 1127
    sget-object v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1128
    .local v0, "service":Lcom/kingsoft/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_0

    .line 1129
    iget-object v1, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    # invokes: Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->onWatchdogAlarm()V
    invoke-static {v1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->access$900(Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;)V

    .line 1131
    :cond_0
    return-void
.end method


# virtual methods
.method addServiceIntentForTest(JLandroid/content/Intent;)V
    .locals 2
    .param p1, "accountId"    # J
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    return-void
.end method

.method public canPrefetchForAccount(Lcom/android/emailcommon/provider/Account;Ljava/io/File;)Z
    .locals 25
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    .line 1279
    if-nez p1, :cond_0

    const/16 v18, 0x0

    .line 1348
    :goto_0
    return v18

    .line 1281
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    .line 1283
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v14

    .line 1284
    .local v14, "totalStorage":J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v16

    .line 1285
    .local v16, "usableStorage":J
    long-to-float v0, v14

    move/from16 v18, v0

    const/high16 v19, 0x3e800000

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-long v9, v0

    .line 1288
    .local v9, "minAvailable":J
    cmp-long v18, v16, v9

    if-gez v18, :cond_2

    .line 1289
    sget-object v18, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v19, "There\'s not enough overall storage available"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100173

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f100176

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const/16 v18, 0x0

    goto :goto_0

    .line 1299
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;->getNumberOfAccounts()I

    move-result v11

    .line 1300
    .local v11, "numberOfAccounts":I
    long-to-float v0, v14

    move/from16 v18, v0

    const/high16 v19, 0x3e800000

    mul-float v18, v18, v19

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-long v12, v0

    .line 1306
    .local v12, "perAccountMaxStorage":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1307
    .local v3, "accountStorage":Ljava/lang/Long;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-lez v18, :cond_6

    .line 1309
    :cond_3
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1310
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1311
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_4

    .line 1312
    move-object v4, v6

    .local v4, "arr$":[Ljava/io/File;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v5, v4, v7

    .line 1313
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    add-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1312
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1318
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v2

    .line 1319
    .local v2, "accountInternalAttsFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1320
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1321
    if-eqz v6, :cond_5

    .line 1322
    move-object v4, v6

    .restart local v4    # "arr$":[Ljava/io/File;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v5, v4, v7

    .line 1323
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    add-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1322
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1330
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    .end local v2    # "accountInternalAttsFolder":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    .line 1334
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1336
    :cond_7
    const-string/jumbo v18, "AttachmentDownload"

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1337
    const-string/jumbo v18, "AttachmentDownload"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ">> Prefetch not allowed for account "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "; used "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", limit "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1342
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100173

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f100174

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method dequeue(J)Z
    .locals 5
    .param p1, "attachmentId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1065
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2, p1, p2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    .line 1066
    .local v0, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v0, :cond_1

    .line 1067
    const-string/jumbo v2, "AttachmentDownload"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    const-string/jumbo v2, "AttachmentDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dequeued attachmentId:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1070
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, v0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 1071
    const/4 v1, 0x1

    .line 1073
    :cond_1
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1487
    const-string/jumbo v9, "AttachmentDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1489
    .local v7, "time":J
    iget-object v10, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    monitor-enter v10

    .line 1490
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Queue, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v11}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " entries"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    iget-object v9, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v9}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1493
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1494
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 1495
    .local v5, "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    Account: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", Attachment: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      Priority: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", Time: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, " [In progress]"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 1499
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v1, :cond_3

    .line 1500
    const-string/jumbo v9, "      Attachment not in database?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    :cond_1
    :goto_2
    iget-boolean v9, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-eqz v9, :cond_0

    .line 1522
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      Status: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", Progress: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      Started: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", Callback: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      Elapsed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    sub-long v11, v7, v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-lez v9, :cond_0

    .line 1528
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      CB: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    sub-long v11, v7, v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1532
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .end local v5    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1496
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .restart local v5    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_2
    :try_start_1
    const-string/jumbo v9, ""

    goto/16 :goto_1

    .line 1501
    .restart local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1502
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1503
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v6, "[none]"

    .line 1504
    .local v6, "suffix":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1505
    .local v4, "lastDot":I
    if-ltz v4, :cond_4

    .line 1506
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1508
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      Suffix: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ContentUri: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1512
    :cond_5
    const-string/jumbo v9, " Mime: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1513
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 1514
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1519
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " Size: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1516
    :cond_6
    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1517
    const-string/jumbo v9, " [inferred]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1532
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "lastDot":I
    .end local v5    # "req":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v6    # "suffix":Ljava/lang/String;
    :cond_7
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    return-void
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v0

    return v0
.end method

.method isQueued(J)Z
    .locals 1
    .param p1, "attachmentId"    # J

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1455
    const/4 v0, 0x0

    return-object v0
.end method

.method onChange(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 4
    .param p1, "att"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 1052
    const-string/jumbo v0, "AttachmentDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AttachmentDownloadService.onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1053
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, p1}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1054
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1440
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v1

    const-string/jumbo v1, "type"

    aput-object v1, v3, v7

    const/4 v1, 0x2

    const-string/jumbo v5, "parentKey"

    aput-object v5, v3, v1

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCursorLoader:Landroid/content/CursorLoader;

    .line 1447
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, v7, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 1448
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 1450
    new-instance v0, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$NetWorkBroadcastReceiver;

    invoke-direct {v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$NetWorkBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mNetworkBroadcastReceiver:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$NetWorkBroadcastReceiver;

    .line 1451
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mNetworkBroadcastReceiver:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$NetWorkBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/email/service/AttachmentDownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1452
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1460
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mNetworkBroadcastReceiver:Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils$NetWorkBroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/service/AttachmentDownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1463
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCursorLoader:Landroid/content/CursorLoader;

    if-eqz v2, :cond_0

    .line 1464
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v2, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 1465
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v2}, Landroid/content/CursorLoader;->cancelLoad()Z

    .line 1466
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v2}, Landroid/content/CursorLoader;->stopLoading()V

    .line 1468
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mStop:Z

    .line 1469
    sget-object v2, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    if-eqz v2, :cond_1

    .line 1470
    invoke-direct {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->kick()V

    .line 1471
    sput-object v6, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1474
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;

    .line 1475
    .local v0, "dq":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    iget-wide v3, v0, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    const/16 v5, 0x22

    invoke-virtual {v2, v3, v4, v5}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    goto :goto_0

    .line 1478
    .end local v0    # "dq":Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    if-eqz v2, :cond_3

    .line 1479
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    invoke-virtual {v2}, Lcom/kingsoft/email/EmailConnectivityManager;->unregister()V

    .line 1480
    iget-object v2, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    invoke-virtual {v2}, Lcom/kingsoft/email/EmailConnectivityManager;->stopWait()V

    .line 1481
    iput-object v6, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    .line 1483
    :cond_3
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "cursorLoader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_3

    .line 211
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v9, "inboxEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;>;"
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    const-wide/16 v1, 0x0

    .line 215
    .local v1, "mailId":J
    const/4 v3, -0x1

    .line 216
    .local v3, "mailType":I
    const-wide/16 v4, 0x0

    .line 218
    .local v4, "mailParentKey":J
    const-string/jumbo v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 219
    .local v8, "idIdx":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 220
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 222
    :cond_0
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 223
    .local v11, "typeIdx":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_1

    .line 224
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 227
    :cond_1
    const-string/jumbo v0, "parentKey"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 228
    .local v10, "parentKeyIdx":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_2

    .line 229
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 232
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v0, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;-><init>(JIJ)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    .end local v1    # "mailId":J
    .end local v3    # "mailType":I
    .end local v4    # "mailParentKey":J
    .end local v8    # "idIdx":I
    .end local v10    # "parentKeyIdx":I
    .end local v11    # "typeIdx":I
    :catch_0
    move-exception v7

    .line 236
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 268
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "inboxEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;>;"
    :cond_3
    :goto_1
    return-void

    .line 240
    .restart local v9    # "inboxEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/kingsoft/email/service/AttachmentDownloadService$MailboxRecord;>;"
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getMailboxIdsByType(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAllInboxIds:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAllInboxIds:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAllInboxIds:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 246
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAllInboxIds:Ljava/lang/String;

    .line 249
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mailboxKey IN ("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAllInboxIds:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, ")"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, " AND "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, "flagLoaded IN (2,1)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "allInboxSelection":Ljava/lang/String;
    const-string/jumbo v0, "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1))"

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mPrecacheInboxSelection:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAllInboxIds:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, ")"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mPrecacheInboxSelection:Ljava/lang/String;

    .line 262
    :cond_7
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_3

    .line 263
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v12, "AttachmentDownloadService"

    invoke-direct {v0, p0, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mThread:Ljava/lang/Thread;

    .line 264
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 240
    .end local v6    # "allInboxSelection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/service/AttachmentDownloadService;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1420
    sget-object v1, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    if-nez v1, :cond_0

    .line 1421
    sput-object p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->sRunningService:Lcom/kingsoft/email/service/AttachmentDownloadService;

    .line 1423
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v1, "com.android.email.AttachmentDownloadService.attachment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1424
    const-string/jumbo v1, "com.android.email.AttachmentDownloadService.attachment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1425
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->onChange(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1434
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1428
    :cond_2
    if-eqz p1, :cond_1

    const-string/jumbo v1, "contentId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1430
    const-string/jumbo v1, "contentId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "messageKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/kingsoft/email/service/AttachmentDownloadService;->downloadInlineImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1355
    iput-object p0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    .line 1356
    new-instance v0, Lcom/kingsoft/email/EmailConnectivityManager;

    const-string/jumbo v1, "AttachmentDownload"

    invoke-direct {v0, p0, v1}, Lcom/kingsoft/email/EmailConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    .line 1357
    new-instance v0, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/kingsoft/email/service/AttachmentDownloadService$AccountManagerStub;

    .line 1361
    const/4 v10, 0x6

    .line 1362
    .local v10, "mask":I
    invoke-virtual {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "(flags & ?) != 0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1365
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1367
    :try_start_0
    const-string/jumbo v0, "AttachmentDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1368
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1369
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 1371
    .local v6, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v6, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, v6}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1375
    .end local v6    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_0
    move-exception v8

    .line 1376
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1383
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mStop:Z

    if-nez v0, :cond_3

    .line 1386
    iget-object v9, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    .line 1387
    .local v9, "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    if-eqz v9, :cond_2

    .line 1388
    invoke-virtual {v9}, Lcom/kingsoft/email/EmailConnectivityManager;->waitForConnectivity()V

    .line 1390
    :cond_2
    iget-boolean v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mStop:Z

    if-eqz v0, :cond_6

    .line 1412
    .end local v9    # "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/kingsoft/email/EmailConnectivityManager;

    .line 1413
    .restart local v9    # "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    if-eqz v9, :cond_4

    .line 1414
    invoke-virtual {v9}, Lcom/kingsoft/email/EmailConnectivityManager;->unregister()V

    .line 1416
    :cond_4
    return-void

    .line 1378
    .end local v9    # "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1394
    .restart local v9    # "ecm":Lcom/kingsoft/email/EmailConnectivityManager;
    :cond_6
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    .line 1395
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/kingsoft/email/service/AttachmentDownloadService$DownloadSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1396
    const-string/jumbo v0, "AttachmentDownload"

    const-string/jumbo v1, "*** All done; shutting down service"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1397
    invoke-virtual {p0}, Lcom/kingsoft/email/service/AttachmentDownloadService;->stopSelf()V

    goto :goto_2

    .line 1400
    :cond_7
    iget-object v1, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1402
    :try_start_2
    iget-object v0, p0, Lcom/kingsoft/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1403
    const-string/jumbo v0, "AttachmentDownload"

    const-string/jumbo v2, "wake up now!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1407
    :goto_3
    :try_start_3
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1404
    :catch_1
    move-exception v0

    goto :goto_3
.end method
