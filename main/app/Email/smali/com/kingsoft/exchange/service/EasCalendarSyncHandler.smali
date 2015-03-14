.class public Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;
.super Lcom/kingsoft/exchange/service/EasSyncHandler;
.source "EasCalendarSyncHandler.java"


# static fields
.field private static final ATTENDEE_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final CALENDAR_ID_COLUMN:I = 0x0

.field private static final CALENDAR_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALENDAR_SELECTION_ACCOUNT_AND_NO_SYNC:Ljava/lang/String; = "account_name=? AND account_type=? AND _sync_id IS NULL"

.field private static final CALENDAR_SELECTION_ACCOUNT_AND_SYNC_ID:Ljava/lang/String; = "account_name=? AND account_type=? AND _sync_id=?"

.field private static final CATEGORY_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final DIRTY_EXCEPTION_IN_CALENDAR:Ljava/lang/String; = "dirty=1 AND original_id NOTNULL AND calendar_id=?"

.field private static final DIRTY_OR_MARKED_TOP_LEVEL_IN_CALENDAR:Ljava/lang/String; = "(dirty=1 OR sync_data8= 1) AND original_id ISNULL AND calendar_id=?"

.field private static final EVENT_ID_AND_CALENDAR_ID:Ljava/lang/String; = "_id=? AND original_sync_id ISNULL AND calendar_id=?"

.field private static final EVENT_SAVED_TIMEZONE_COLUMN:Ljava/lang/String; = "sync_data1"

.field private static final EVENT_SYNC_MARK:Ljava/lang/String; = "sync_data8"

.field private static final EVENT_SYNC_VERSION:Ljava/lang/String; = "sync_data4"

.field private static final EXTENDED_PROPERTY_ATTENDEES:Ljava/lang/String; = "attendees"

.field private static final EXTENDED_PROPERTY_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final EXTENDED_PROPERTY_UPSYNC_PROHIBITED:Ljava/lang/String; = "upsyncProhibited"

.field private static final EXTENDED_PROPERTY_USER_ATTENDEE_STATUS:Ljava/lang/String; = "userAttendeeStatus"

.field private static final ORIGINAL_EVENT_AND_CALENDAR:Ljava/lang/String; = "original_sync_id=? AND calendar_id=?"

.field private static final ORIGINAL_EVENT_ID_COLUMN:I = 0x1

.field private static final ORIGINAL_EVENT_ORIGINAL_ID_COLUMN:I = 0x0

.field private static final ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private final mAccountManagerAccount:Landroid/accounts/Account;

.field private final mCalendarId:J

.field private final mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutgoingMailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mUploadedIdList:Ljava/util/ArrayList;
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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->CALENDAR_ID_PROJECTION:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "original_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "accountManagerAccount"    # Landroid/accounts/Account;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p5, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p6, "syncExtras"    # Landroid/os/Bundle;
    .param p7, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 113
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/kingsoft/exchange/service/EasSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    .line 114
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 115
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->CALENDAR_ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "account_name=? AND account_type=? AND _sync_id=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "com.android.exchange"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 122
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 123
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mCalendarId:J

    .line 169
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mCalendarId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    :cond_1
    const-wide/16 v10, -0x1

    .line 133
    .local v10, "id":J
    :try_start_1
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->CALENDAR_ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "account_name=? AND account_type=? AND _sync_id IS NULL"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "com.android.exchange"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 140
    .local v9, "c1":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 142
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 144
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_sync_id"

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-ltz v1, :cond_4

    .line 159
    iput-wide v10, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mCalendarId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 166
    .end local v9    # "c1":Landroid/database/Cursor;
    .end local v10    # "id":J
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 154
    .restart local v9    # "c1":Landroid/database/Cursor;
    .restart local v10    # "id":J
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v1, v2, v3, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createCalendar(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mCalendarId:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    const-string/jumbo v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static decodeVisibility(I)Ljava/lang/String;
    .locals 2
    .param p0, "visibility"    # I

    .prologue
    .line 322
    packed-switch p0, :pswitch_data_0

    .line 336
    const/4 v0, 0x0

    .line 339
    .local v0, "easVisibility":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 324
    .end local v0    # "easVisibility":I
    :pswitch_0
    const/4 v0, 0x0

    .line 325
    .restart local v0    # "easVisibility":I
    goto :goto_0

    .line 327
    .end local v0    # "easVisibility":I
    :pswitch_1
    const/4 v0, 0x1

    .line 328
    .restart local v0    # "easVisibility":I
    goto :goto_0

    .line 330
    .end local v0    # "easVisibility":I
    :pswitch_2
    const/4 v0, 0x2

    .line 331
    .restart local v0    # "easVisibility":I
    goto :goto_0

    .line 333
    .end local v0    # "easVisibility":I
    :pswitch_3
    const/4 v0, 0x3

    .line 334
    .restart local v0    # "easVisibility":I
    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getEntityVersion(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2
    .param p0, "entityValues"    # Landroid/content/ContentValues;

    .prologue
    .line 273
    const-string/jumbo v1, "sync_data4"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "version":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 285
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v1

    .line 285
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private static getInt(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 311
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 312
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private handleEntity(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/Entity;Ljava/lang/String;Z)Z
    .locals 28
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "entity"    # Landroid/content/Entity;
    .param p3, "calendarIdString"    # Ljava/lang/String;
    .param p4, "first"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    .line 873
    .local v9, "entityValues":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity$NamedContentValues;

    .line 874
    .local v24, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 875
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    .line 876
    .local v25, "ncvValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "upsyncProhibited"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 878
    const-string/jumbo v3, "1"

    const-string/jumbo v6, "value"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    const-string/jumbo v6, "_id"

    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    const/4 v3, 0x0

    .line 961
    .end local v24    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v25    # "ncvValues":Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 889
    :cond_1
    const-string/jumbo v3, "organizer"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 890
    .local v26, "organizerEmail":Ljava/lang/String;
    if-eqz v26, :cond_2

    const-string/jumbo v3, "dtstart"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "duration"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "dtend"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 893
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 896
    :cond_3
    if-eqz p4, :cond_4

    .line 897
    const/16 v3, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 898
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "Sending Calendar changes to the server"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 901
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 903
    .local v13, "selfOrganizer":Z
    const-string/jumbo v3, "sync_data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 904
    .local v11, "clientId":Ljava/lang/String;
    if-nez v11, :cond_5

    .line 905
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 907
    :cond_5
    const-string/jumbo v3, "_sync_id"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 908
    .local v10, "serverId":Ljava/lang/String;
    const-string/jumbo v3, "_id"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 909
    .local v4, "eventId":J
    if-nez v10, :cond_7

    .line 911
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "Creating new event with clientId: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 912
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v6, 0xc

    invoke-virtual {v3, v6, v11}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 914
    new-instance v21, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 915
    .local v21, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "sync_data2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string/jumbo v3, "sync_data4"

    const-string/jumbo v6, "0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 949
    :goto_1
    const/16 v3, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v11, v2}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 953
    if-eqz v10, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    .line 954
    invoke-direct/range {v6 .. v13}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->handleExceptionsToRecurrenceRules(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/Entity;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 958
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v16, v9

    move/from16 v17, v13

    move-wide/from16 v18, v4

    move-object/from16 v20, v11

    .line 960
    invoke-direct/range {v14 .. v20}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->updateAttendeesAndSendMail(Landroid/content/Entity;Landroid/content/ContentValues;ZJLjava/lang/String;)V

    .line 961
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 920
    .end local v21    # "cv":Landroid/content/ContentValues;
    :cond_7
    const-string/jumbo v3, "deleted"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    .line 921
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "Deleting event with serverId: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 922
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v6, 0xd

    invoke-virtual {v3, v6, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 923
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    if-eqz v13, :cond_9

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static/range {v3 .. v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v23

    .line 927
    .local v23, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v23, :cond_8

    .line 928
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "Queueing cancellation to %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v12, v7, v8

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v23    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_8
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 932
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    goto :goto_2

    .line 937
    :cond_a
    const-string/jumbo v3, "Exchange"

    const-string/jumbo v6, "Upsync change to event with serverId: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    invoke-static {v3, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 938
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v6, 0xd

    invoke-virtual {v3, v6, v10}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 940
    invoke-static {v9}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getEntityVersion(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v27

    .line 941
    .local v27, "version":Ljava/lang/String;
    new-instance v21, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 942
    .restart local v21    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "sync_data4"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 947
    const-string/jumbo v3, "sync_data4"

    move-object/from16 v0, v27

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private handleExceptionsToRecurrenceRules(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/Entity;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "entity"    # Landroid/content/Entity;
    .param p3, "entityValues"    # Landroid/content/ContentValues;
    .param p4, "serverId"    # Ljava/lang/String;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "calendarIdString"    # Ljava/lang/String;
    .param p7, "selfOrganizer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "original_sync_id=? AND calendar_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p4, v6, v7

    const/4 v7, 0x1

    aput-object p6, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v14

    .line 628
    .local v14, "exIterator":Landroid/content/EntityIterator;
    const/4 v13, 0x1

    .line 629
    .local v13, "exFirst":Z
    :goto_0
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 630
    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity;

    .line 631
    .local v10, "exEntity":Landroid/content/Entity;
    if-eqz v13, :cond_0

    .line 632
    const/16 v2, 0x114

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 633
    const/4 v13, 0x0

    .line 635
    :cond_0
    const/16 v2, 0x113

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v2, v1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 637
    invoke-virtual {v10}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v15

    .line 638
    .local v15, "exValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "dirty"

    invoke-static {v15, v2}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 641
    const-string/jumbo v2, "_id"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 644
    .local v11, "exEventId":J
    const-string/jumbo v2, "deleted"

    invoke-static {v15, v2}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string/jumbo v2, "eventStatus"

    invoke-static {v15, v2}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 646
    :cond_1
    const/16 v16, 0x20

    .line 647
    .local v16, "flag":I
    if-nez p7, :cond_2

    .line 652
    const-string/jumbo v2, "organizer"

    const-string/jumbo v3, "organizer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v10, v1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    .line 660
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    const-string/jumbo v2, "sync_data4"

    const-string/jumbo v3, "sync_data4"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string/jumbo v2, "eventLocation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 667
    const-string/jumbo v2, "eventLocation"

    const-string/jumbo v3, "eventLocation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_3
    if-eqz p7, :cond_a

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move/from16 v0, v16

    move-object/from16 v1, p5

    invoke-static {v2, v10, v0, v1, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v18

    .line 674
    .local v18, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v18, :cond_4

    .line 675
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Queueing exception update to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_4
    new-instance v20, Landroid/content/Entity;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 681
    .local v20, "removedEntity":Landroid/content/Entity;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 683
    .local v9, "exAttendeeEmails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v10}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Entity$NamedContentValues;

    .line 684
    .local v19, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 685
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string/jumbo v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 656
    .end local v9    # "exAttendeeEmails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "flag":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v19    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v20    # "removedEntity":Landroid/content/Entity;
    :cond_6
    const/16 v16, 0x10

    .restart local v16    # "flag":I
    goto/16 :goto_1

    .line 689
    .restart local v9    # "exAttendeeEmails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v18    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v20    # "removedEntity":Landroid/content/Entity;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Entity$NamedContentValues;

    .line 690
    .restart local v19    # "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 691
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string/jumbo v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 693
    .local v8, "attendeeEmail":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 694
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_3

    .line 700
    .end local v8    # "attendeeEmail":Ljava/lang/String;
    .end local v19    # "ncv":Landroid/content/Entity$NamedContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-static {v2, v0, v3, v1, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v21

    .line 703
    .local v21, "removedMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v21, :cond_a

    .line 704
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Queueing cancellation for removed attendees"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v9    # "exAttendeeEmails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "exEventId":J
    .end local v16    # "flag":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v20    # "removedEntity":Landroid/content/Entity;
    .end local v21    # "removedMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 711
    .end local v10    # "exEntity":Landroid/content/Entity;
    .end local v15    # "exValues":Landroid/content/ContentValues;
    :cond_b
    if-nez v13, :cond_c

    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 714
    :cond_c
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 715
    return-void
.end method

.method private markParentsOfDirtyEvents(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "calendarIdString"    # Ljava/lang/String;
    .param p2, "calendarIdArgument"    # [Ljava/lang/String;

    .prologue
    .line 233
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v12, "orphanedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "dirty=1 AND original_id NOTNULL AND calendar_id=?"

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 238
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 241
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "sync_data8"

    const-string/jumbo v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 245
    .local v13, "parentId":J
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 249
    .local v7, "cnt":I
    if-nez v7, :cond_0

    .line 250
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v7    # "cnt":I
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v13    # "parentId":J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8    # "cv":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 260
    .local v10, "orphan":J
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Deleted orphaned exception: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 261
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 264
    .end local v10    # "orphan":J
    :cond_3
    return-void
.end method

.method private sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 6
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v1, p1, v2, p2, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 297
    .local v0, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 298
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "Queueing declined response to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 299
    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    return-void
.end method

.method private sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 52
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v18

    .line 358
    .local v18, "entityValues":Landroid/content/ContentValues;
    if-nez p2, :cond_d

    const/16 v27, 0x1

    .line 359
    .local v27, "isException":Z
    :goto_0
    const/16 v22, 0x0

    .line 360
    .local v22, "hasAttendees":Z
    const-string/jumbo v48, "_sync_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v25

    .line 361
    .local v25, "isChange":Z
    const-string/jumbo v48, "allDay"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v5

    .line 363
    .local v5, "allDay":Z
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v29

    .line 368
    .local v29, "localTimeZone":Ljava/util/TimeZone;
    if-eqz v27, :cond_3

    .line 370
    const-string/jumbo v48, "deleted"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 371
    .local v11, "deleted":Ljava/lang/Integer;
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_e

    const/16 v26, 0x1

    .line 372
    .local v26, "isDeleted":Z
    :goto_1
    const-string/jumbo v48, "eventStatus"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 373
    .local v21, "eventStatus":Ljava/lang/Integer;
    if-eqz v21, :cond_f

    const/16 v48, 0x2

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_f

    const/16 v24, 0x1

    .line 375
    .local v24, "isCanceled":Z
    :goto_2
    if-nez v26, :cond_0

    if-eqz v24, :cond_10

    .line 376
    :cond_0
    const/16 v48, 0x115

    const-string/jumbo v49, "1"

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 379
    if-eqz v26, :cond_1

    if-nez v24, :cond_1

    .line 380
    const-string/jumbo v48, "_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 381
    .local v19, "eventId":J
    new-instance v10, Landroid/content/ContentValues;

    const/16 v48, 0x1

    move/from16 v0, v48

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 382
    .local v10, "cv":Landroid/content/ContentValues;
    const-string/jumbo v48, "eventStatus"

    const/16 v49, 0x2

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v48, v0

    sget-object v49, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v49

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v49

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v19    # "eventId":J
    :cond_1
    :goto_3
    const-string/jumbo v48, "originalInstanceTime"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v37

    .line 393
    .local v37, "originalTime":Ljava/lang/Long;
    if-eqz v37, :cond_3

    .line 394
    const-string/jumbo v48, "originalAllDay"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v36

    .line 397
    .local v36, "originalAllDay":Z
    if-eqz v36, :cond_2

    .line 399
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    move-wide/from16 v0, v48

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    .line 402
    :cond_2
    const/16 v48, 0x116

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v49

    invoke-static/range {v49 .. v50}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 409
    .end local v11    # "deleted":Ljava/lang/Integer;
    .end local v21    # "eventStatus":Ljava/lang/Integer;
    .end local v24    # "isCanceled":Z
    .end local v26    # "isDeleted":Z
    .end local v36    # "originalAllDay":Z
    .end local v37    # "originalTime":Ljava/lang/Long;
    :cond_3
    if-nez v27, :cond_5

    .line 412
    if-eqz v5, :cond_11

    const-string/jumbo v48, "sync_data1"

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 414
    .local v46, "timeZoneName":Ljava/lang/String;
    if-nez v46, :cond_4

    .line 415
    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    .line 417
    :cond_4
    const/16 v48, 0x105

    invoke-static/range {v46 .. v46}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 421
    .end local v46    # "timeZoneName":Ljava/lang/String;
    :cond_5
    const/16 v49, 0x106

    if-eqz v5, :cond_12

    const-string/jumbo v48, "1"

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v49

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 424
    const-string/jumbo v48, "dtstart"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    .line 428
    .local v43, "startTime":J
    const-string/jumbo v48, "dtend"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_13

    .line 429
    const-string/jumbo v48, "dtend"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 443
    .local v16, "endTime":J
    :goto_6
    if-eqz v5, :cond_6

    .line 444
    move-wide/from16 v0, v43

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v43

    .line 445
    move-wide/from16 v0, v16

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v16

    .line 447
    :cond_6
    const/16 v48, 0x127

    invoke-static/range {v43 .. v44}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 448
    const/16 v48, 0x112

    invoke-static/range {v16 .. v17}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 450
    const/16 v48, 0x111

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v49

    invoke-static/range {v49 .. v50}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 453
    const-string/jumbo v48, "eventLocation"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 454
    .local v28, "loc":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_8

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    const-wide/high16 v50, 0x4028000000000000L

    cmpg-double v48, v48, v50

    if-gez v48, :cond_7

    .line 457
    invoke-static/range {v28 .. v28}, Lcom/kingsoft/emailcommon/utility/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 459
    :cond_7
    const/16 v48, 0x117

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 461
    :cond_8
    const-string/jumbo v48, "title"

    const/16 v49, 0x126

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    const-wide/high16 v50, 0x4028000000000000L

    cmpl-double v48, v48, v50

    if-ltz v48, :cond_15

    .line 464
    const/16 v48, 0x44a

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 465
    const/16 v48, 0x446

    const-string/jumbo v49, "1"

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 466
    const-string/jumbo v48, "description"

    const/16 v49, 0x44b

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 473
    :goto_7
    if-nez v27, :cond_b

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    const-wide/high16 v50, 0x4028000000000000L

    cmpl-double v48, v48, v50

    if-gez v48, :cond_9

    if-nez v25, :cond_a

    .line 476
    :cond_9
    const-string/jumbo v48, "organizer"

    const/16 v49, 0x119

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 479
    :cond_a
    const-string/jumbo v48, "rrule"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 480
    .local v41, "rrule":Ljava/lang/String;
    if-eqz v41, :cond_b

    .line 481
    move-object/from16 v0, v41

    move-wide/from16 v1, v43

    move-object/from16 v3, v29

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->recurrenceFromRrule(Ljava/lang/String;JLjava/util/TimeZone;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 485
    .end local v41    # "rrule":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v45

    .line 487
    .local v45, "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/4 v15, -0x1

    .line 488
    .local v15, "earliestReminder":I
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_19

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Entity$NamedContentValues;

    .line 489
    .local v31, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 490
    .local v32, "ncvUri":Landroid/net/Uri;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v33, v0

    .line 491
    .local v33, "ncvValues":Landroid/content/ContentValues;
    sget-object v48, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_17

    .line 492
    const-string/jumbo v48, "name"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 493
    .local v38, "propertyName":Ljava/lang/String;
    const-string/jumbo v48, "value"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 494
    .local v39, "propertyValue":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_c

    .line 497
    const-string/jumbo v48, "categories"

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_c

    .line 500
    new-instance v42, Ljava/util/StringTokenizer;

    const-string/jumbo v48, "\\"

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v42, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v48

    if-lez v48, :cond_c

    .line 503
    const/16 v48, 0x10e

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 504
    :goto_9
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v48

    if-eqz v48, :cond_16

    .line 505
    const/16 v48, 0x10f

    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_9

    .line 358
    .end local v5    # "allDay":Z
    .end local v15    # "earliestReminder":I
    .end local v16    # "endTime":J
    .end local v22    # "hasAttendees":Z
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "isChange":Z
    .end local v27    # "isException":Z
    .end local v28    # "loc":Ljava/lang/String;
    .end local v29    # "localTimeZone":Ljava/util/TimeZone;
    .end local v31    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v32    # "ncvUri":Landroid/net/Uri;
    .end local v33    # "ncvValues":Landroid/content/ContentValues;
    .end local v38    # "propertyName":Ljava/lang/String;
    .end local v39    # "propertyValue":Ljava/lang/String;
    .end local v42    # "st":Ljava/util/StringTokenizer;
    .end local v43    # "startTime":J
    .end local v45    # "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 371
    .restart local v5    # "allDay":Z
    .restart local v11    # "deleted":Ljava/lang/Integer;
    .restart local v22    # "hasAttendees":Z
    .restart local v25    # "isChange":Z
    .restart local v27    # "isException":Z
    .restart local v29    # "localTimeZone":Ljava/util/TimeZone;
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 373
    .restart local v21    # "eventStatus":Ljava/lang/Integer;
    .restart local v26    # "isDeleted":Z
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 388
    .restart local v24    # "isCanceled":Z
    :cond_10
    const/16 v48, 0x115

    const-string/jumbo v49, "0"

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 412
    .end local v11    # "deleted":Ljava/lang/Integer;
    .end local v21    # "eventStatus":Ljava/lang/Integer;
    .end local v24    # "isCanceled":Z
    .end local v26    # "isDeleted":Z
    :cond_11
    const-string/jumbo v48, "eventTimezone"

    goto/16 :goto_4

    .line 421
    :cond_12
    const-string/jumbo v48, "0"

    goto/16 :goto_5

    .line 431
    .restart local v43    # "startTime":J
    :cond_13
    const-wide/32 v13, 0x36ee80

    .line 432
    .local v13, "durationMillis":J
    const-string/jumbo v48, "duration"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_14

    .line 433
    new-instance v12, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v12}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 435
    .local v12, "duration":Lcom/android/calendarcommon2/Duration;
    :try_start_0
    const-string/jumbo v48, "duration"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v12, v0}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v12}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 441
    .end local v12    # "duration":Lcom/android/calendarcommon2/Duration;
    :cond_14
    :goto_a
    add-long v16, v43, v13

    .restart local v16    # "endTime":J
    goto/16 :goto_6

    .line 470
    .end local v13    # "durationMillis":J
    .restart local v28    # "loc":Ljava/lang/String;
    :cond_15
    const-string/jumbo v48, "description"

    const/16 v49, 0x10b

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 507
    .restart local v15    # "earliestReminder":I
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v31    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v32    # "ncvUri":Landroid/net/Uri;
    .restart local v33    # "ncvValues":Landroid/content/ContentValues;
    .restart local v38    # "propertyName":Ljava/lang/String;
    .restart local v39    # "propertyValue":Ljava/lang/String;
    .restart local v42    # "st":Ljava/util/StringTokenizer;
    .restart local v45    # "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_8

    .line 510
    .end local v38    # "propertyName":Ljava/lang/String;
    .end local v39    # "propertyValue":Ljava/lang/String;
    .end local v42    # "st":Ljava/util/StringTokenizer;
    :cond_17
    sget-object v48, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_c

    .line 511
    const-string/jumbo v48, "minutes"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 512
    .local v30, "mins":Ljava/lang/Integer;
    if-eqz v30, :cond_c

    .line 514
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v48

    if-gez v48, :cond_18

    .line 515
    const/16 v48, 0x1e

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 518
    :cond_18
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v48

    move/from16 v0, v48

    if-le v0, v15, :cond_c

    .line 519
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_8

    .line 526
    .end local v30    # "mins":Ljava/lang/Integer;
    .end local v31    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v32    # "ncvUri":Landroid/net/Uri;
    .end local v33    # "ncvValues":Landroid/content/ContentValues;
    :cond_19
    if-ltz v15, :cond_1a

    .line 527
    const/16 v48, 0x124

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 532
    :cond_1a
    if-eqz p2, :cond_1b

    .line 533
    const/16 v48, 0x128

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 537
    :cond_1b
    const/16 v35, 0x0

    .line 538
    .local v35, "organizerName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 539
    .local v34, "organizerEmail":Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1c
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Entity$NamedContentValues;

    .line 540
    .restart local v31    # "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 541
    .restart local v32    # "ncvUri":Landroid/net/Uri;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v33, v0

    .line 542
    .restart local v33    # "ncvValues":Landroid/content/ContentValues;
    sget-object v48, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1c

    .line 543
    const-string/jumbo v48, "attendeeRelationship"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v40

    .line 547
    .local v40, "relationship":Ljava/lang/Integer;
    if-eqz v40, :cond_1c

    const-string/jumbo v48, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_1c

    .line 549
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v48

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_1d

    .line 550
    const-string/jumbo v48, "attendeeName"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 551
    const-string/jumbo v48, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 552
    goto :goto_b

    .line 554
    :cond_1d
    if-nez v22, :cond_1e

    .line 555
    const/16 v48, 0x107

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 556
    const/16 v22, 0x1

    .line 558
    :cond_1e
    const/16 v48, 0x108

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 559
    const-string/jumbo v48, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 561
    .local v6, "attendeeEmail":Ljava/lang/String;
    const-string/jumbo v48, "attendeeName"

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, "attendeeName":Ljava/lang/String;
    if-nez v7, :cond_1f

    .line 563
    move-object v7, v6

    .line 565
    :cond_1f
    const/16 v48, 0x10a

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 566
    const/16 v48, 0x109

    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    const-wide/high16 v50, 0x4028000000000000L

    cmpl-double v48, v48, v50

    if-ltz v48, :cond_20

    .line 568
    const/16 v48, 0x12a

    const-string/jumbo v49, "1"

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 570
    :cond_20
    invoke-virtual/range {p3 .. p3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_b

    .line 574
    .end local v6    # "attendeeEmail":Ljava/lang/String;
    .end local v7    # "attendeeName":Ljava/lang/String;
    .end local v31    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v32    # "ncvUri":Landroid/net/Uri;
    .end local v33    # "ncvValues":Landroid/content/ContentValues;
    .end local v40    # "relationship":Ljava/lang/Integer;
    :cond_21
    if-eqz v22, :cond_22

    .line 575
    invoke-virtual/range {p3 .. p3}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 579
    :cond_22
    const-string/jumbo v48, "availability"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 580
    .local v8, "availability":I
    invoke-static {v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->busyStatusFromAvailability(I)I

    move-result v9

    .line 581
    .local v9, "busyStatus":I
    const/16 v48, 0x10d

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 585
    if-nez v34, :cond_23

    const-string/jumbo v48, "organizer"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_23

    .line 586
    const-string/jumbo v48, "organizer"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 588
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_27

    .line 589
    const/16 v49, 0x118

    if-eqz v22, :cond_26

    const-string/jumbo v48, "1"

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v49

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 595
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getProtocolVersion()D

    move-result-wide v48

    const-wide/high16 v50, 0x4028000000000000L

    cmpl-double v48, v48, v50

    if-gez v48, :cond_24

    if-nez v25, :cond_25

    :cond_24
    if-eqz v35, :cond_25

    .line 597
    const/16 v48, 0x11a

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 602
    :cond_25
    const-string/jumbo v48, "accessLevel"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 603
    .local v47, "visibility":Ljava/lang/Integer;
    if-eqz v47, :cond_28

    .line 604
    const/16 v48, 0x125

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v49

    invoke-static/range {v49 .. v49}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->decodeVisibility(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 609
    :goto_e
    return-void

    .line 589
    .end local v47    # "visibility":Ljava/lang/Integer;
    :cond_26
    const-string/jumbo v48, "0"

    goto :goto_c

    .line 591
    :cond_27
    const/16 v48, 0x118

    const-string/jumbo v49, "3"

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_d

    .line 607
    .restart local v47    # "visibility":Ljava/lang/Integer;
    :cond_28
    const/16 v48, 0x125

    const-string/jumbo v49, "1"

    move-object/from16 v0, p3

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_e

    .line 437
    .end local v8    # "availability":I
    .end local v9    # "busyStatus":I
    .end local v15    # "earliestReminder":I
    .end local v16    # "endTime":J
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v28    # "loc":Ljava/lang/String;
    .end local v34    # "organizerEmail":Ljava/lang/String;
    .end local v35    # "organizerName":Ljava/lang/String;
    .end local v45    # "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v47    # "visibility":Ljava/lang/Integer;
    .restart local v12    # "duration":Lcom/android/calendarcommon2/Duration;
    .restart local v13    # "durationMillis":J
    :catch_0
    move-exception v48

    goto/16 :goto_a
.end method

.method private updateAttendeesAndSendMail(Landroid/content/Entity;Landroid/content/ContentValues;ZJLjava/lang/String;)V
    .locals 28
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "entityValues"    # Landroid/content/ContentValues;
    .param p3, "selfOrganizer"    # Z
    .param p4, "eventId"    # J
    .param p6, "clientId"    # Ljava/lang/String;

    .prologue
    .line 729
    const/4 v10, 0x0

    .line 730
    .local v10, "attendeeString":Ljava/lang/String;
    const-wide/16 v11, -0x1

    .line 731
    .local v11, "attendeeStringId":J
    const/16 v25, 0x0

    .line 732
    .local v25, "userAttendeeStatus":Ljava/lang/String;
    const-wide/16 v26, -0x1

    .line 733
    .local v26, "userAttendeeStatusId":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Entity$NamedContentValues;

    .line 734
    .local v18, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 736
    .local v19, "ncvValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 737
    .local v22, "propertyName":Ljava/lang/String;
    const-string/jumbo v2, "attendees"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 738
    const-string/jumbo v2, "value"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 739
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_0

    .line 740
    :cond_1
    const-string/jumbo v2, "userAttendeeStatus"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    const-string/jumbo v2, "value"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 742
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto :goto_0

    .line 750
    .end local v18    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v19    # "ncvValues":Landroid/content/ContentValues;
    .end local v22    # "propertyName":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_9

    const-string/jumbo v2, "dirty"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v3, p4

    move-object/from16 v6, p6

    invoke-static/range {v2 .. v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 754
    .local v17, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v17, :cond_3

    .line 755
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Queueing invitation to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_3
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v21, "originalAttendeeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_4

    .line 761
    new-instance v23, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "\\"

    move-object/from16 v0, v23

    invoke-direct {v0, v10, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .local v23, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 764
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 767
    .end local v23    # "st":Ljava/util/StringTokenizer;
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .local v20, "newTokenizedAttendees":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Entity$NamedContentValues;

    .line 771
    .restart local v18    # "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 772
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string/jumbo v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 774
    .local v9, "attendeeEmail":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 775
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string/jumbo v2, "\\"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 782
    .end local v9    # "attendeeEmail":Ljava/lang/String;
    .end local v18    # "ncv":Landroid/content/Entity$NamedContentValues;
    :cond_6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 783
    .local v15, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    if-eqz v10, :cond_8

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v15, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 795
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 797
    .local v8, "removedAttendee":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v3, p4

    move-object/from16 v6, p6

    invoke-static/range {v2 .. v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    .line 800
    .local v13, "cancelMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v13, :cond_7

    .line 802
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Queueing cancellation to removed attendee %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 789
    .end local v8    # "removedAttendee":Ljava/lang/String;
    .end local v13    # "cancelMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_8
    const-string/jumbo v2, "name"

    const-string/jumbo v3, "attendees"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string/jumbo v2, "event_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 806
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v17    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v20    # "newTokenizedAttendees":Ljava/lang/StringBuilder;
    .end local v21    # "originalAttendeeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-nez p3, :cond_b

    .line 810
    const-string/jumbo v2, "selfAttendeeStatus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 811
    .local v14, "currentStatus":I
    const/16 v24, 0x0

    .line 812
    .local v24, "syncStatus":I
    if-eqz v25, :cond_a

    .line 814
    :try_start_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    .line 819
    :cond_a
    :goto_5
    move/from16 v0, v24

    if-eq v14, v0, :cond_b

    if-eqz v14, :cond_b

    .line 823
    packed-switch v14, :pswitch_data_0

    .line 834
    :pswitch_0
    const/4 v5, 0x0

    .line 838
    .local v5, "messageFlag":I
    :goto_6
    if-eqz v5, :cond_b

    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-ltz v2, :cond_b

    .line 840
    new-instance v15, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 841
    .restart local v15    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v15, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v3, p4

    move-object/from16 v6, p6

    invoke-static/range {v2 .. v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 848
    .restart local v17    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v17, :cond_b

    .line 849
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "Queueing invitation reply to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v5    # "messageFlag":I
    .end local v14    # "currentStatus":I
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v17    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v24    # "syncStatus":I
    :cond_b
    return-void

    .line 825
    .restart local v14    # "currentStatus":I
    .restart local v24    # "syncStatus":I
    :pswitch_1
    const/16 v5, 0x40

    .line 826
    .restart local v5    # "messageFlag":I
    goto :goto_6

    .line 828
    .end local v5    # "messageFlag":I
    :pswitch_2
    const/16 v5, 0x80

    .line 829
    .restart local v5    # "messageFlag":I
    goto :goto_6

    .line 831
    .end local v5    # "messageFlag":I
    :pswitch_3
    const/16 v5, 0x100

    .line 832
    .restart local v5    # "messageFlag":I
    goto :goto_6

    .line 815
    .end local v5    # "messageFlag":I
    :catch_0
    move-exception v2

    goto :goto_5

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 1036
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f100016

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1040
    return-void
.end method


# virtual methods
.method protected cleanup(I)V
    .locals 8
    .param p1, "syncResult"    # I

    .prologue
    const/4 v7, 0x0

    .line 998
    const/4 v5, -0x1

    if-eq p1, v5, :cond_2

    .line 1000
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1001
    new-instance v0, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1002
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1003
    const-string/jumbo v5, "sync_data8"

    const-string/jumbo v6, "0"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1005
    .local v1, "eventId":J
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "eventId":J
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1011
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1012
    .restart local v1    # "eventId":J
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1017
    .end local v1    # "eventId":J
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1018
    .local v4, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0, v5, v4}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->sendMessage(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_2

    .line 1022
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    .line 1023
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1024
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1025
    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1027
    :cond_3
    return-void
.end method

.method protected getFolderClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string/jumbo v0, "Calendar"

    return-object v0
.end method

.method protected getParser(Ljava/io/InputStream;)Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-wide v7, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mCalendarId:J

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;J)V

    return-object v0
.end method

.method protected getTrafficFlag()I
    .locals 1

    .prologue
    .line 173
    const/high16 v0, 0x80000

    return v0
.end method

.method protected setInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 0
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method protected setNonInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;I)V
    .locals 3
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "numWindows"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x200

    .line 215
    mul-int/lit8 v0, p2, 0xa

    .line 216
    .local v0, "windowSize":I
    const/16 v2, 0x20a

    if-le v0, v2, :cond_0

    .line 217
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Max window size reached and still no data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    const-string/jumbo v2, "4"

    if-ge v0, v1, :cond_1

    .end local v0    # "windowSize":I
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->setPimSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;Ljava/lang/String;I)V

    .line 221
    return-void

    .restart local v0    # "windowSize":I
    :cond_1
    move v0, v1

    .line 219
    goto :goto_0
.end method

.method protected setUpsyncCommands(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 11
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 966
    iget-wide v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mCalendarId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 967
    .local v7, "calendarIdString":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v4, v0

    .line 969
    .local v4, "calendarIdArgument":[Ljava/lang/String;
    invoke-direct {p0, v7, v4}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->markParentsOfDirtyEvents(Ljava/lang/String;[Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "(dirty=1 OR sync_data8= 1) AND original_id ISNULL AND calendar_id=?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 974
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 994
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v0}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v9

    .line 980
    .local v9, "eventIterator":Landroid/content/EntityIterator;
    const/4 v10, 0x1

    .line 981
    .local v10, "first":Z
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    invoke-direct {p0, p1, v0, v7, v10}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->handleEntity(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/Entity;Ljava/lang/String;Z)Z

    move-result v6

    .line 984
    .local v6, "addedCommand":Z
    if-eqz v6, :cond_1

    .line 985
    const/4 v10, 0x0

    goto :goto_1

    .line 988
    .end local v6    # "addedCommand":Z
    :cond_2
    if-nez v10, :cond_3

    .line 989
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :cond_3
    invoke-interface {v9}, Landroid/content/EntityIterator;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method
