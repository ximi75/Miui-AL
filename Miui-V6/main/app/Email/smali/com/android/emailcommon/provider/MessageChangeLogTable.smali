.class public abstract Lcom/android/emailcommon/provider/MessageChangeLogTable;
.super Ljava/lang/Object;
.source "MessageChangeLogTable.java"


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MESSAGE_KEY:Ljava/lang/String; = "messageKey"

.field private static final SELECTION_BY_ACCOUNT_KEY_AND_STATUS:Ljava/lang/String; = "accountKey=? and status=?"

.field private static final SELECTION_BY_MESSAGE_ID:Ljava/lang/String; = "_id in ("

.field private static final SELECTION_BY_MESSAGE_KEYS_PREFIX:Ljava/lang/String; = "messageKey in ("

.field public static final SERVER_ID:Ljava/lang/String; = "messageServerId"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_FAILED_STRING:Ljava/lang/String;

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_NONE_STRING:Ljava/lang/String;

.field public static final STATUS_PROCESSING:I = 0x1

.field public static final STATUS_PROCESSING_STRING:Ljava/lang/String;


# instance fields
.field protected mLastId:J

.field protected final mMessageKey:J

.field protected final mServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_NONE_STRING:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_PROCESSING_STRING:Ljava/lang/String;

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_FAILED_STRING:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(JLjava/lang/String;J)V
    .locals 0
    .param p1, "messageKey"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "id"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mMessageKey:J

    .line 56
    iput-object p3, p0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mServerId:Ljava/lang/String;

    .line 57
    iput-wide p4, p0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mLastId:J

    .line 58
    return-void
.end method

.method public static deleteRowsForMessageUpdate(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageKeys"    # [J
    .param p3, "count"    # I

    .prologue
    .line 146
    if-nez p3, :cond_0

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "_id in ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 152
    if-eqz v0, :cond_1

    .line 153
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_1
    aget-wide v2, p2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_2
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static deleteRowsForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageKeys"    # [J
    .param p3, "count"    # I

    .prologue
    .line 139
    if-nez p3, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-static {p2, p3}, Lcom/android/emailcommon/provider/MessageChangeLogTable;->getSelectionForMessages([JI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static failMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageKeys"    # [J
    .param p3, "count"    # I

    .prologue
    .line 204
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/emailcommon/provider/MessageChangeLogTable;->updateStatusForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JII)I

    move-result v0

    return v0
.end method

.method protected static getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "accountId"    # J

    .prologue
    .line 217
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "accountIdString":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/android/emailcommon/provider/MessageChangeLogTable;->startProcessing(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/MessageChangeLogTable;->getRowsToProcess(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRowsToProcess(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_PROCESSING_STRING:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 107
    .local v4, "args":[Ljava/lang/String;
    const-string/jumbo v3, "accountKey=? and status=?"

    const-string/jumbo v5, "_id ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectionForMessages([JI)Ljava/lang/String;
    .locals 4
    .param p0, "messageKeys"    # [J
    .param p1, "count"    # I

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "messageKey in ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 119
    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static retryMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageKeys"    # [J
    .param p3, "count"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/emailcommon/provider/MessageChangeLogTable;->updateStatusForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JII)I

    move-result v0

    return v0
.end method

.method private static startProcessing(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 79
    new-array v0, v3, [Ljava/lang/String;

    .line 80
    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p2, v0, v2

    .line 81
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 84
    .local v1, "cv":Landroid/content/ContentValues;
    sget-object v2, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_PROCESSING_STRING:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 85
    const-string/jumbo v2, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string/jumbo v2, "accountKey=? and status=?"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    sget-object v2, Lcom/android/emailcommon/provider/MessageChangeLogTable;->STATUS_NONE_STRING:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 90
    const-string/jumbo v2, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string/jumbo v2, "accountKey=? and status=?"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static updateStatusForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JII)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "messageKeys"    # [J
    .param p3, "count"    # I
    .param p4, "status"    # I

    .prologue
    .line 173
    if-nez p3, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 176
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 177
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    invoke-static {p2, p3}, Lcom/android/emailcommon/provider/MessageChangeLogTable;->getSelectionForMessages([JI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public final getMessageId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mMessageKey:J

    return-wide v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/emailcommon/provider/MessageChangeLogTable;->mServerId:Ljava/lang/String;

    return-object v0
.end method
