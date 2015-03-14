.class public abstract Lcom/android/emailcommon/provider/EmailContent;
.super Ljava/lang/Object;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/EmailContent$Providers;,
        Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;,
        Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;,
        Lcom/android/emailcommon/provider/EmailContent$QuickResponseColumns;,
        Lcom/android/emailcommon/provider/EmailContent$AccountColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Attachment;,
        Lcom/android/emailcommon/provider/EmailContent$MessageAttachment;,
        Lcom/android/emailcommon/provider/EmailContent$MessageAttachmentColumns;,
        Lcom/android/emailcommon/provider/EmailContent$AttachmentColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Message;,
        Lcom/android/emailcommon/provider/EmailContent$MessageColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Body;,
        Lcom/android/emailcommon/provider/EmailContent$BodyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$SyncColumns;
    }
.end annotation


# static fields
.field public static ACCOUNT_CHECK_URI:Landroid/net/Uri; = null

.field public static final ADD_COLUMN_NAME:Ljava/lang/String; = "add"

.field public static AUTHORITY:Ljava/lang/String; = null

.field public static CONTENT_NOTIFIER_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNT_COLUMNS:[Ljava/lang/String;

.field public static DEVICE_FRIENDLY_NAME:Ljava/lang/String; = null

.field public static final EMAIL_BODY_LIMIT:I = 0x493e0

.field public static EMAIL_PACKAGE_NAME:Ljava/lang/String; = null

.field public static final EMAIL_SNIPPET_SHORTBODY_LIMIT:I = 0x3e8

.field public static final FIELD_COLUMN_NAME:Ljava/lang/String; = "field"

.field public static final ID_PROJECTION:[Ljava/lang/String;

.field public static final ID_PROJECTION_COLUMN:I = 0x0

.field public static final ID_SELECTION:Ljava/lang/String; = "_id =?"

.field public static final LAST_SYNC_RESULT_AUTH_ERROR:I = 0x2

.field public static final LAST_SYNC_RESULT_CONNECTION_ERROR:I = 0x1

.field public static final LAST_SYNC_RESULT_INTERNAL_ERROR:I = 0x5

.field public static final LAST_SYNC_RESULT_SECURITY_ERROR:I = 0x3

.field public static final LAST_SYNC_RESULT_SUCCESS:I = 0x0

.field public static MAILBOX_MOST_RECENT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static MAILBOX_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final NOTIFICATION_MAILBOX_ID_COLUMN:I = 0x0

.field public static final NOTIFICATION_MAILBOX_UNREAD_COUNT_COLUMN:I = 0x1

.field public static final NOTIFICATION_MAILBOX_UNSEEN_COUNT_COLUMN:I = 0x2

.field public static NOTIFIER_AUTHORITY:Ljava/lang/String; = null

.field public static final NOT_SAVED:I = -0x1

.field public static final PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static PICK_SENT_FOLDER_URI:Landroid/net/Uri; = null

.field public static PICK_TRASH_FOLDER_URI:Landroid/net/Uri; = null

.field public static PROVIDER_PERMISSION:Ljava/lang/String; = null

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field public static final SET_COLUMN_NAME:Ljava/lang/String; = "set"

.field public static final SYNC_STATUS_BACKGROUND:I = 0x4

.field public static final SYNC_STATUS_LIVE:I = 0x2

.field public static final SYNC_STATUS_NONE:I = 0x0

.field public static final SYNC_STATUS_USER:I = 0x1

.field public static final UNREAD_COUNT_COLUMNS:[Ljava/lang/String;


# instance fields
.field public mBaseUri:Landroid/net/Uri;

.field public mId:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    .line 79
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "unreadCount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->UNREAD_COUNT_COLUMNS:[Ljava/lang/String;

    .line 87
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "deviceFriendlyName"

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->DEVICE_FRIENDLY_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 321
    return-void
.end method

.method public static CheckUnreadCount(Landroid/content/Context;J)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 297
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mailboxKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flagRead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v4}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 300
    .local v8, "unreadCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->UNREAD_COUNT_COLUMNS:[Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v9

    .line 304
    .local v9, "unreadCountInMailbox":I
    if-ne v8, v9, :cond_0

    .line 308
    :goto_0
    return v6

    .line 306
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 307
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "unreadCount"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-static {p0, p1, v0, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 284
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;J)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent;

    .line 237
    .local v0, "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 238
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    .end local v0    # "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 245
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const-class v2, Lcom/android/emailcommon/provider/EmailContent;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f10019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".provider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    .line 165
    const-string/jumbo v1, "EmailContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".notifier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->NOTIFIER_AUTHORITY:Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->NOTIFIER_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/pickTrashFolder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PICK_TRASH_FOLDER_URI:Landroid/net/Uri;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/pickSentFolder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PICK_SENT_FOLDER_URI:Landroid/net/Uri;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/mailboxNotification"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_NOTIFICATION_URI:Landroid/net/Uri;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/mailboxMostRecentMessage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_MOST_RECENT_MESSAGE_URI:Landroid/net/Uri;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/accountCheck"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->ACCOUNT_CHECK_URI:Landroid/net/Uri;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".permission.ACCESS_PROVIDER"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PROVIDER_PERMISSION:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/android/emailcommon/provider/Account;->initAccount()V

    .line 178
    invoke-static {}, Lcom/android/emailcommon/provider/Mailbox;->initMailbox()V

    .line 179
    invoke-static {}, Lcom/android/emailcommon/provider/QuickResponse;->initQuickResponse()V

    .line 180
    invoke-static {}, Lcom/android/emailcommon/provider/HostAuth;->initHostAuth()V

    .line 181
    invoke-static {}, Lcom/android/emailcommon/provider/Policy;->initPolicy()V

    .line 182
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Message;->initMessage()V

    .line 183
    invoke-static {}, Lcom/android/emailcommon/provider/MessageMove;->init()V

    .line 184
    invoke-static {}, Lcom/android/emailcommon/provider/MessageStateChange;->init()V

    .line 185
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Body;->initBody()V

    .line 186
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->initAttachment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    monitor-exit v2

    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isInitialSyncKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "contentProjection"    # [Ljava/lang/String;
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 218
    invoke-static {p2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 219
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 222
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-static {v6, p1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v3

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # I

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSaved()Z
    .locals 4

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract restore(Landroid/database/Cursor;)V
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 253
    .local v0, "res":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 254
    return-object v0
.end method

.method public abstract toContentValues()Landroid/content/ContentValues;
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
