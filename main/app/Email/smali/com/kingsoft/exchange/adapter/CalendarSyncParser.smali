.class public Lcom/kingsoft/exchange/adapter/CalendarSyncParser;
.super Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
.source "CalendarSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    }
.end annotation


# static fields
.field private static final ATTENDEES_EXCEPT_ORGANIZER:Ljava/lang/String; = "event_id=? AND attendeeRelationship!=2"

.field private static final ATTENDEE_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final BOGUS_ORGANIZER_EMAIL:Ljava/lang/String; = "upload_disallowed@uploadisdisallowed.aaa"

.field private static final CATEGORY_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final CLIENT_ID_SELECTION:Ljava/lang/String; = "sync_data2=?"

.field private static final EVENT_ID_AND_NAME:Ljava/lang/String; = "event_id=? AND name=?"

.field private static final EVENT_SAVED_TIMEZONE_COLUMN:Ljava/lang/String; = "sync_data1"

.field private static final EXTENDED_PROPERTY_ATTENDEES:Ljava/lang/String; = "attendees"

.field private static final EXTENDED_PROPERTY_ATTENDEES_REDACTED:Ljava/lang/String; = "attendeesRedacted"

.field private static final EXTENDED_PROPERTY_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final EXTENDED_PROPERTY_DTSTAMP:Ljava/lang/String; = "dtstamp"

.field private static final EXTENDED_PROPERTY_ID:I = 0x0

.field private static final EXTENDED_PROPERTY_MEETING_STATUS:Ljava/lang/String; = "meeting_status"

.field private static final EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

.field private static final EXTENDED_PROPERTY_UPSYNC_PROHIBITED:Ljava/lang/String; = "upsyncProhibited"

.field private static final EXTENDED_PROPERTY_USER_ATTENDEE_STATUS:Ljava/lang/String; = "userAttendeeStatus"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MAX_OPS_BEFORE_EXCEPTION_ATTENDEE_REDACTION:I = 0x1f4

.field private static final MAX_SYNCED_ATTENDEES:I = 0x32

.field private static final PLACEHOLDER_OPERATION:Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

.field private static final SEPARATOR_ID:J = 0x7fffffffffffffffL

.field private static final SERVER_ID_AND_CALENDAR_ID:Ljava/lang/String; = "_sync_id=? AND original_sync_id ISNULL AND calendar_id=?"

.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private final mAccountManagerAccount:Landroid/accounts/Account;

.field private final mAsSyncAdapterAttendees:Landroid/net/Uri;

.field private final mAsSyncAdapterEvents:Landroid/net/Uri;

.field private final mBindArgument:[Ljava/lang/String;

.field private final mCalendarId:J

.field private final mLocalTimeZone:Ljava/util/TimeZone;

.field private final mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    sput-object v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p6, "accountManagerAccount"    # Landroid/accounts/Account;
    .param p7, "calendarId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 32
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 33
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 98
    iput-wide p7, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    .line 99
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    .line 101
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v2, "com.android.exchange"

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    .line 103
    new-instance v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v5, "com.android.exchange"

    invoke-static {v1, v4, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v6, "com.android.exchange"

    invoke-static {v1, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    .line 108
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private static addOrganizerToAttendees(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "ops"    # Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    .param p1, "eventId"    # J
    .param p3, "organizerName"    # Ljava/lang/String;
    .param p4, "organizerEmail"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 239
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 240
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v0, "attendeeCv":Landroid/content/ContentValues;
    if-eqz p3, :cond_1

    .line 242
    const-string/jumbo v1, "attendeeName"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_1
    if-eqz p4, :cond_2

    .line 245
    const-string/jumbo v1, "attendeeEmail"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    const-string/jumbo v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string/jumbo v1, "attendeeType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string/jumbo v1, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_4

    .line 251
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    .line 256
    .end local v0    # "attendeeCv":Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void

    .line 253
    .restart local v0    # "attendeeCv":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto :goto_0
.end method

.method protected static addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    new-instance v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    .line 1345
    .local v0, "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    .line 1346
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    return-void
.end method

.method private static applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .param p3, "result"    # [Landroid/content/ContentProviderResult;
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1275
    .local p2, "mini":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    :goto_0
    return-void

    .line 1277
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 1280
    .local v0, "miniResult":[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1281
    .end local v0    # "miniResult":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;I)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1258
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/ContentProviderResult;

    .line 1265
    :goto_0
    return-object v3

    .line 1261
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v0, "cpos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 1263
    .local v2, "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    invoke-static {v2, p3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->operationToContentProviderOperation(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1265
    .end local v2    # "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->execute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    goto :goto_0
.end method

.method private static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 231
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

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private attachmentsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    :goto_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 933
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 938
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 935
    :pswitch_0
    const/16 v0, 0x12b

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipParser(I)V

    goto :goto_0

    .line 941
    :cond_0
    return-void

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x12b
        :pswitch_0
    .end packed-switch
.end method

.method private attendeeParser()Landroid/content/ContentValues;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x3

    .line 970
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 971
    .local v0, "cv":Landroid/content/ContentValues;
    :goto_0
    const/16 v3, 0x108

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v3

    if-eq v3, v7, :cond_4

    .line 972
    iget v3, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    sparse-switch v3, :sswitch_data_0

    .line 1002
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 974
    :sswitch_0
    const-string/jumbo v3, "attendeeEmail"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 977
    :sswitch_1
    const-string/jumbo v3, "attendeeName"

    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :sswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v1

    .line 981
    .local v1, "status":I
    const-string/jumbo v8, "attendeeStatus"

    if-ne v1, v6, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-ne v1, v7, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    move v3, v7

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 989
    .end local v1    # "status":I
    :sswitch_3
    const/4 v2, 0x0

    .line 991
    .local v2, "type":I
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 999
    :goto_2
    const-string/jumbo v3, "attendeeType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 993
    :pswitch_0
    const/4 v2, 0x1

    .line 994
    goto :goto_2

    .line 996
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_2

    .line 1005
    .end local v2    # "type":I
    :cond_4
    const-string/jumbo v3, "attendeeRelationship"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    return-object v0

    .line 972
    nop

    :sswitch_data_0
    .sparse-switch
        0x109 -> :sswitch_0
        0x10a -> :sswitch_1
        0x129 -> :sswitch_2
        0x12a -> :sswitch_3
    .end sparse-switch

    .line 991
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attendeesParser()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "attendeeCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v1, "attendeeValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const/16 v3, 0x107

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 948
    iget v3, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 962
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 950
    :pswitch_0
    invoke-direct {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->attendeeParser()Landroid/content/ContentValues;

    move-result-object v2

    .line 954
    .local v2, "cv":Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    .line 957
    const/16 v3, 0x33

    if-gt v0, v3, :cond_0

    .line 958
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 965
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_1
    return-object v1

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x108
        :pswitch_0
    .end packed-switch
.end method

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "body":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1012
    iget v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 1017
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1014
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1015
    goto :goto_0

    .line 1022
    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v1, ""

    .line 1024
    :goto_1
    return-object v1

    :cond_1
    const-string/jumbo v1, "\r\n"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v0, "categories":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v1, 0x10e

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 914
    iget v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 922
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 918
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string/jumbo v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 914
    :pswitch_data_0
    .packed-switch 0x10f
        :pswitch_0
    .end packed-switch
.end method

.method private static encodeVisibility(I)I
    .locals 1
    .param p0, "easVisibility"    # I

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "visibility":I
    packed-switch p0, :pswitch_data_0

    .line 893
    :goto_0
    return v0

    .line 881
    :pswitch_0
    const/4 v0, 0x0

    .line 882
    goto :goto_0

    .line 884
    :pswitch_1
    const/4 v0, 0x3

    .line 885
    goto :goto_0

    .line 887
    :pswitch_2
    const/4 v0, 0x2

    .line 888
    goto :goto_0

    .line 890
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private exceptionParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 16
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    .param p2, "parentCv"    # Landroid/content/ContentValues;
    .param p4, "reminderMins"    # I
    .param p5, "busyStatus"    # I
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    .local p3, "attendeeValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 749
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "calendar_id"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    const-string/jumbo v2, "organizer"

    const-string/jumbo v4, "organizer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string/jumbo v2, "title"

    const-string/jumbo v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string/jumbo v2, "description"

    const-string/jumbo v4, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string/jumbo v2, "originalAllDay"

    const-string/jumbo v4, "allDay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    const-string/jumbo v2, "eventLocation"

    const-string/jumbo v4, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string/jumbo v2, "accessLevel"

    const-string/jumbo v4, "accessLevel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v2, "eventTimezone"

    const-string/jumbo v4, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string/jumbo v2, "hasAttendeeData"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const/4 v8, 0x0

    .line 769
    .local v8, "allDayEvent":I
    const-string/jumbo v2, "original_sync_id"

    const-string/jumbo v4, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string/jumbo v13, "_noStartTime"

    .line 772
    .local v13, "exceptionStartTime":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    .line 773
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 775
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->attachmentsParser()V

    goto :goto_0

    .line 778
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 779
    const-string/jumbo v2, "originalInstanceTime"

    invoke-static {v13}, Lcom/kingsoft/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 783
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 784
    const-string/jumbo v2, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 788
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v8

    .line 789
    const-string/jumbo v2, "allDay"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 792
    :sswitch_4
    const-string/jumbo v2, "description"

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :sswitch_5
    const-string/jumbo v2, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p6

    .line 799
    goto :goto_0

    .line 801
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p8

    .line 802
    goto :goto_0

    .line 804
    :sswitch_8
    const-string/jumbo v2, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v15

    .line 808
    .local v15, "rrule":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 809
    const-string/jumbo v2, "rrule"

    invoke-virtual {v3, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    .end local v15    # "rrule":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v2, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :sswitch_b
    const-string/jumbo v2, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v4

    invoke-static {v4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->encodeVisibility(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 819
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result p5

    .line 822
    goto/16 :goto_0

    .line 836
    :cond_1
    const-string/jumbo v2, "_sync_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 840
    invoke-virtual/range {v2 .. v8}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 843
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 875
    :cond_2
    :goto_1
    return-void

    .line 846
    :cond_3
    move-object/from16 v0, p1

    iget v12, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 847
    .local v12, "exceptionStart":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newException(Landroid/content/ContentValues;)V

    .line 849
    const/4 v11, 0x0

    .line 850
    .local v11, "attendeesRedacted":Z
    if-eqz p3, :cond_6

    .line 851
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 853
    .local v9, "attValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "attendeeEmail"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 857
    .local v10, "attendeeEmail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 858
    const-string/jumbo v2, "attendeeStatus"

    invoke-static/range {p5 .. p5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 861
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->size()I

    move-result v2

    const/16 v4, 0x1f4

    if-ge v2, v4, :cond_5

    .line 862
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 864
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 869
    .end local v9    # "attValues":Landroid/content/ContentValues;
    .end local v10    # "attendeeEmail":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_6
    if-lez p4, :cond_7

    .line 870
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newReminder(II)V

    .line 872
    :cond_7
    if-eqz v11, :cond_2

    .line 873
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v4, "Attendees redacted in this exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 773
    :sswitch_data_0
    .sparse-switch
        0x106 -> :sswitch_3
        0x10b -> :sswitch_5
        0x10d -> :sswitch_c
        0x112 -> :sswitch_7
        0x115 -> :sswitch_2
        0x116 -> :sswitch_1
        0x117 -> :sswitch_8
        0x11b -> :sswitch_9
        0x125 -> :sswitch_b
        0x126 -> :sswitch_a
        0x127 -> :sswitch_6
        0x12c -> :sswitch_0
        0x44a -> :sswitch_4
    .end sparse-switch
.end method

.method private exceptionsParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 2
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p4, "reminderMins"    # I
    .param p5, "busyStatus"    # I
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    .local p3, "attendeeValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    const/16 v0, 0x114

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 900
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 906
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 902
    :pswitch_0
    invoke-direct/range {p0 .. p9}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->exceptionParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto :goto_0

    .line 909
    :cond_0
    return-void

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x113
        :pswitch_0
    .end packed-switch
.end method

.method private static execute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 1221
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1223
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1230
    :goto_0
    return-object v1

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "Exchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquireContentProviderClient for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " returns null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1230
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-array v1, v5, [Landroid/content/ContentProviderResult;

    goto :goto_0
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1051
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sync_data2=?"

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_sync_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 655
    sget-boolean v3, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_1

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Event invalid, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", skipping: Columns = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 659
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 662
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Exchange"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 664
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method static operationToContentProviderOperation(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p0, "op"    # Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    .param p1, "offset"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    if-eqz v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mOp:Landroid/content/ContentProviderOperation;

    .line 1248
    :goto_0
    return-object v1

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    if-nez v1, :cond_1

    .line 1242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Operation must have CPO.Builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 1245
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1246
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mColumnName:Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mOffset:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1248
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_0
.end method

.method protected static safeExecute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    const/4 v9, 0x0

    .line 1301
    const/4 v7, 0x0

    .line 1304
    .local v7, "result":[Landroid/content/ContentProviderResult;
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v8}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->applyBatch(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;I)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 1336
    :goto_0
    return-object v8

    .line 1305
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "e":Landroid/os/TransactionTooLargeException;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v3, "mini":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Landroid/content/ContentProviderResult;

    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, "count":I
    const/4 v5, 0x0

    .line 1313
    .local v5, "offset":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 1314
    .local v6, "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    iget-boolean v8, v6, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-eqz v8, :cond_0

    .line 1316
    invoke-static {p0, p1, v3, v7, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .line 1317
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1320
    add-int/lit8 v5, v0, 0x1

    .line 1324
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 1325
    goto :goto_1

    .line 1322
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1327
    .end local v6    # "op":Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1328
    .local v4, "miniSize":I
    if-lez v4, :cond_3

    const/4 v8, 0x1

    if-ne v4, v8, :cond_2

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-boolean v8, v8, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;->mSeparator:Z

    if-nez v8, :cond_3

    .line 1329
    :cond_2
    invoke-static {p0, p1, v3, v7, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->applyAndCopyResults(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;I)V

    .end local v0    # "count":I
    .end local v1    # "e":Landroid/os/TransactionTooLargeException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mini":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;>;"
    .end local v4    # "miniSize":I
    .end local v5    # "offset":I
    :cond_3
    :goto_3
    move-object v8, v7

    .line 1336
    goto :goto_0

    .line 1331
    :catch_1
    move-exception v1

    .line 1332
    .local v1, "e":Landroid/os/RemoteException;
    throw v1

    .line 1333
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    goto :goto_3
.end method


# virtual methods
.method public addEvent(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;Ljava/lang/String;Z)V
    .locals 49
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "calendar_id"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mCalendarId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string/jumbo v5, "_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v5, "hasAttendeeData"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string/jumbo v5, "sync_data2"

    const-string/jumbo v6, "0"

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/16 v21, 0x0

    .line 335
    .local v21, "allDayEvent":I
    const/16 v43, 0x0

    .line 336
    .local v43, "organizerName":Ljava/lang/String;
    const/16 v42, 0x0

    .line 337
    .local v42, "organizerEmail":Ljava/lang/String;
    const/16 v33, -0x1

    .line 338
    .local v33, "eventOffset":I
    const/16 v29, -0x1

    .line 339
    .local v29, "deleteOffset":I
    const/4 v10, 0x1

    .line 340
    .local v10, "busyStatus":I
    const/16 v44, 0x0

    .line 342
    .local v44, "responseType":I
    const/16 v34, 0x1

    .line 343
    .local v34, "firstTag":Z
    const-wide/16 v31, -0x1

    .line 344
    .local v31, "eventId":J
    const-wide/16 v11, -0x1

    .line 345
    .local v11, "startTime":J
    const-wide/16 v13, -0x1

    .line 346
    .local v13, "endTime":J
    const/16 v48, 0x0

    .line 349
    .local v48, "timeZone":Ljava/util/TimeZone;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v8, "attendeeValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, -0x1

    .line 351
    .local v9, "reminderMins":I
    const/16 v30, 0x0

    .line 352
    .local v30, "dtStamp":Ljava/lang/String;
    const/16 v41, 0x0

    .line 354
    .local v41, "organizerAdded":Z
    :cond_0
    :goto_0
    const/16 v5, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_d

    .line 355
    if-eqz p3, :cond_8

    if-eqz v34, :cond_8

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 358
    .local v25, "c":Landroid/database/Cursor;
    const-wide/16 v38, -0x1

    .line 360
    .local v38, "id":J
    if-eqz v25, :cond_1

    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v38

    .line 364
    :cond_1
    if-eqz v25, :cond_2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, v38, v5

    if-lez v5, :cond_7

    .line 368
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    const/16 v6, 0x111

    if-ne v5, v6, :cond_4

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 370
    goto :goto_0

    .line 364
    :catchall_0
    move-exception v5

    if-eqz v25, :cond_3

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .line 371
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    const/16 v6, 0x107

    if-ne v5, v6, :cond_6

    .line 374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    .line 375
    new-instance v5, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string/jumbo v15, "event_id=? AND attendeeRelationship!=2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 378
    move-wide/from16 v31, v38

    .line 397
    .end local v25    # "c":Landroid/database/Cursor;
    .end local v38    # "id":J
    :cond_5
    :goto_1
    const/16 v34, 0x0

    .line 398
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    sparse-switch v5, :sswitch_data_0

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 381
    .restart local v25    # "c":Landroid/database/Cursor;
    .restart local v38    # "id":J
    :cond_6
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v15, "Changing (delete/add) event "

    aput-object v15, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newDelete(JLjava/lang/String;)I

    move-result v29

    .line 385
    sget-object v5, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newEvent(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v33

    goto :goto_1

    .line 389
    :cond_7
    sget-object v5, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newEvent(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v33

    .line 390
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v15, "Exchange"

    aput-object v15, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v15, "Changed item not found; treating as new."

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 392
    .end local v25    # "c":Landroid/database/Cursor;
    .end local v38    # "id":J
    :cond_8
    if-eqz v34, :cond_5

    .line 395
    sget-object v5, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->PLACEHOLDER_OPERATION:Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newEvent(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)I

    move-result v33

    goto :goto_1

    .line 400
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v21

    .line 401
    if-eqz v21, :cond_a

    if-eqz v48, :cond_a

    .line 404
    new-instance v26, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 405
    .local v26, "cal":Ljava/util/GregorianCalendar;
    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 406
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "All-day event arrived in: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 407
    const/16 v5, 0xb

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-nez v5, :cond_9

    const/16 v5, 0xc

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_a

    .line 409
    :cond_9
    const/16 v21, 0x0

    .line 410
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not an all-day event locally: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 413
    .end local v26    # "cal":Ljava/util/GregorianCalendar;
    :cond_a
    const-string/jumbo v5, "allDay"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 416
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->attachmentsParser()V

    goto/16 :goto_0

    .line 420
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->attendeesParser()Ljava/util/ArrayList;

    move-result-object v8

    .line 421
    goto/16 :goto_0

    .line 423
    :sswitch_3
    const-string/jumbo v5, "description"

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :sswitch_4
    const-string/jumbo v5, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v48

    .line 430
    if-nez v48, :cond_b

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v48, v0

    .line 433
    :cond_b
    const-string/jumbo v5, "eventTimezone"

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v11

    .line 437
    goto/16 :goto_0

    .line 439
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v13

    .line 440
    goto/16 :goto_0

    .line 444
    :sswitch_8
    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    move-object/from16 v3, v43

    move-object/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->addOrganizerToAttendees(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 445
    const/16 v41, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 446
    invoke-direct/range {v5 .. v14}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->exceptionsParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto/16 :goto_0

    .line 450
    :sswitch_9
    const-string/jumbo v5, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->recurrenceParser()Ljava/lang/String;

    move-result-object v45

    .line 454
    .local v45, "rrule":Ljava/lang/String;
    if-eqz v45, :cond_0

    .line 455
    const-string/jumbo v5, "rrule"

    move-object/from16 v0, v45

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    .end local v45    # "rrule":Ljava/lang/String;
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v42

    .line 460
    const-string/jumbo v5, "organizer"

    move-object/from16 v0, v42

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :sswitch_c
    const-string/jumbo v5, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :sswitch_d
    const-string/jumbo v5, "accessLevel"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->encodeVisibility(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 469
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v43

    .line 470
    goto/16 :goto_0

    .line 474
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->noContent:Z

    if-nez v5, :cond_c

    const/16 v35, 0x1

    .line 475
    .local v35, "hasContent":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v9

    .line 476
    if-eqz v35, :cond_0

    .line 477
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newReminder(I)V

    .line 478
    const-string/jumbo v5, "hasAlarm"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 474
    .end local v35    # "hasContent":Z
    :cond_c
    const/16 v35, 0x0

    goto :goto_2

    .line 484
    :sswitch_10
    const-string/jumbo v5, "sync_data2"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 488
    goto/16 :goto_0

    .line 490
    :sswitch_12
    const-string/jumbo v5, "meeting_status"

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v10

    .line 497
    goto/16 :goto_0

    .line 501
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v44

    .line 502
    goto/16 :goto_0

    .line 504
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->categoriesParser()Ljava/lang/String;

    move-result-object v27

    .line 505
    .local v27, "categories":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 506
    const-string/jumbo v5, "categories"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v27    # "categories":Ljava/lang/String;
    :cond_d
    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    .line 515
    invoke-virtual/range {v15 .. v21}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 518
    const-string/jumbo v5, "availability"

    invoke-static {v10}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->availabilityFromBusyStatus(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    if-nez v41, :cond_e

    .line 522
    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    move-object/from16 v3, v43

    move-object/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->addOrganizerToAttendees(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    .line 532
    .local v47, "selfOrganizer":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 533
    .local v40, "numAttendees":I
    const/16 v5, 0x32

    move/from16 v0, v40

    if-le v0, v5, :cond_15

    .line 539
    const-wide/16 v5, 0x0

    cmp-long v5, v31, v5

    if-gez v5, :cond_14

    .line 540
    const-string/jumbo v5, "attendeesRedacted"

    const-string/jumbo v6, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    if-eqz v47, :cond_f

    .line 542
    const-string/jumbo v5, "upsyncProhibited"

    const-string/jumbo v6, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_f
    :goto_3
    if-eqz v47, :cond_10

    .line 552
    const-string/jumbo v42, "upload_disallowed@uploadisdisallowed.aaa"

    .line 553
    const-string/jumbo v5, "organizer"

    move-object/from16 v0, v42

    invoke-virtual {v7, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_10
    const-string/jumbo v5, "hasAttendeeData"

    const-string/jumbo v6, "0"

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v6, "Maximum number of attendees exceeded; redacting"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v5, v6, v15}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 619
    :cond_11
    :goto_4
    if-ltz v33, :cond_13

    .line 621
    if-eqz v30, :cond_12

    .line 622
    const-string/jumbo v5, "dtstamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 626
    new-instance v5, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_13
    :goto_5
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->addSeparatorOperation(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 652
    return-void

    .line 545
    :cond_14
    const-string/jumbo v5, "attendeesRedacted"

    const-string/jumbo v6, "1"

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 546
    if-eqz v47, :cond_f

    .line 547
    const-string/jumbo v5, "upsyncProhibited"

    const-string/jumbo v6, "1"

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    .line 558
    :cond_15
    if-lez v40, :cond_11

    .line 559
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .local v46, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ContentValues;

    .line 561
    .local v22, "attendee":Landroid/content/ContentValues;
    const-string/jumbo v5, "attendeeEmail"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 562
    .local v23, "attendeeEmail":Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v5, "\\"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 568
    if-eqz v44, :cond_18

    .line 569
    invoke-static/range {v44 .. v44}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->attendeeStatusFromResponseType(I)I

    move-result v24

    .line 581
    .local v24, "attendeeStatus":I
    :goto_7
    const-string/jumbo v5, "attendeeStatus"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    if-eqz v42, :cond_16

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 590
    :cond_16
    const-wide/16 v5, 0x0

    cmp-long v5, v31, v5

    if-gez v5, :cond_1a

    .line 591
    const-string/jumbo v5, "userAttendeeStatus"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .end local v24    # "attendeeStatus":I
    :cond_17
    :goto_8
    const-wide/16 v5, 0x0

    cmp-long v5, v31, v5

    if-gez v5, :cond_1b

    .line 601
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    goto :goto_6

    .line 571
    :cond_18
    if-nez p3, :cond_19

    .line 574
    const/16 v24, 0x0

    .restart local v24    # "attendeeStatus":I
    goto :goto_7

    .line 578
    .end local v24    # "attendeeStatus":I
    :cond_19
    invoke-static {v10}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v24

    .restart local v24    # "attendeeStatus":I
    goto :goto_7

    .line 594
    :cond_1a
    const-string/jumbo v5, "userAttendeeStatus"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_8

    .line 603
    .end local v24    # "attendeeStatus":I
    :cond_1b
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto/16 :goto_6

    .line 606
    .end local v22    # "attendee":Landroid/content/ContentValues;
    .end local v23    # "attendeeEmail":Ljava/lang/String;
    :cond_1c
    const-wide/16 v5, 0x0

    cmp-long v5, v31, v5

    if-gez v5, :cond_1d

    .line 607
    const-string/jumbo v5, "attendees"

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string/jumbo v5, "attendeesRedacted"

    const-string/jumbo v6, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string/jumbo v5, "upsyncProhibited"

    const-string/jumbo v6, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 611
    :cond_1d
    const-string/jumbo v5, "attendees"

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 613
    const-string/jumbo v5, "attendeesRedacted"

    const-string/jumbo v6, "0"

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 614
    const-string/jumbo v5, "upsyncProhibited"

    const-string/jumbo v6, "0"

    move-object/from16 v0, p1

    move-wide/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 632
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v46    # "sb":Ljava/lang/StringBuilder;
    :cond_1e
    move-object/from16 v0, p1

    iget v5, v0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    sub-int v28, v5, v33

    .line 633
    .local v28, "cnt":I
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v15, "Exchange"

    aput-object v15, v5, v6

    const/4 v6, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Removing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " inserts from mOps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 634
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_9
    move/from16 v0, v36

    move/from16 v1, v28

    if-ge v0, v1, :cond_1f

    .line 635
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 634
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 637
    :cond_1f
    move/from16 v0, v33

    move-object/from16 v1, p1

    iput v0, v1, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    .line 640
    if-ltz v29, :cond_13

    .line 642
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 644
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 645
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v15, "Exchange"

    aput-object v15, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v15, "Removing deletion ops from mOps"

    aput-object v15, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 646
    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->mCount:I

    goto/16 :goto_5

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_5
        0x106 -> :sswitch_0
        0x107 -> :sswitch_2
        0x10b -> :sswitch_4
        0x10d -> :sswitch_13
        0x10e -> :sswitch_15
        0x111 -> :sswitch_11
        0x112 -> :sswitch_7
        0x114 -> :sswitch_8
        0x117 -> :sswitch_9
        0x118 -> :sswitch_12
        0x119 -> :sswitch_b
        0x11a -> :sswitch_e
        0x11b -> :sswitch_a
        0x124 -> :sswitch_f
        0x125 -> :sswitch_d
        0x126 -> :sswitch_c
        0x127 -> :sswitch_6
        0x128 -> :sswitch_10
        0x12c -> :sswitch_1
        0x136 -> :sswitch_14
        0x44a -> :sswitch_3
    .end sparse-switch
.end method

.method public addParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;)V
    .locals 3
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, "serverId":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1030
    iget v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1038
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1032
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1033
    goto :goto_0

    .line 1035
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->addEvent(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1041
    :cond_0
    return-void

    .line 1030
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1134
    const/4 v5, 0x0

    .line 1135
    .local v5, "serverId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1136
    .local v1, "clientId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1137
    .local v6, "status":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1138
    .local v2, "cv":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 1139
    iget v7, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 1153
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1141
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1142
    goto :goto_0

    .line 1144
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1145
    goto :goto_0

    .line 1147
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v6

    .line 1148
    if-eq v6, v11, :cond_0

    .line 1149
    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Attempt to add event failed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_1
    if-nez v1, :cond_2

    .line 1178
    :goto_1
    return-void

    .line 1158
    :cond_2
    if-nez v5, :cond_3

    .line 1160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FAIL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1163
    :cond_3
    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1165
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1166
    const-string/jumbo v7, "_sync_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v7, "sync_data2"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1170
    .local v3, "id":J
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    new-instance v8, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v9, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAsSyncAdapterEvents:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {v7, v8}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1173
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " was given serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    .end local v3    # "id":J
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1139
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;)V
    .locals 6
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, "serverId":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1087
    iget v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1096
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1089
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1090
    goto :goto_0

    .line 1092
    :sswitch_1
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Changing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0, p1, v0, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->addEvent(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1099
    :cond_0
    return-void

    .line 1087
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, "serverId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1183
    .local v1, "status":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1184
    iget v2, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1192
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1186
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1187
    goto :goto_0

    .line 1189
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1190
    goto :goto_0

    .line 1195
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1196
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Changed event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1198
    :cond_1
    return-void

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1104
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->addParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;)V

    goto :goto_0

    .line 1106
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->deleteParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;)V

    goto :goto_0

    .line 1108
    :cond_1
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->changeParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;)V

    goto :goto_0

    .line 1111
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1113
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1117
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Calendar SyncKey saved as: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    new-instance v2, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;

    sget-object v3, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v5, "com.android.exchange"

    invoke-static {v3, v4, v5}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation;)V

    invoke-virtual {v1, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->add(Lcom/kingsoft/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 1127
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "com.android.calendar"

    iget-object v3, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mOps:Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->safeExecute(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Remote exception caught; will retry"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteParser(Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;)V
    .locals 5
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1057
    iget v2, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1072
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1059
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, "serverId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1063
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1065
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser$CalendarOperations;->delete(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1075
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_1
    return-void

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method isValidEventValues(Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 667
    const-string/jumbo v4, "originalInstanceTime"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 669
    .local v2, "isException":Z
    const-string/jumbo v4, "dtstart"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 670
    const-string/jumbo v4, "DTSTART missing"

    invoke-direct {p0, p1, v4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 696
    :cond_0
    :goto_0
    return v3

    .line 673
    :cond_1
    if-nez v2, :cond_2

    const-string/jumbo v4, "sync_data2"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 674
    const-string/jumbo v4, "_SYNC_DATA missing"

    invoke-direct {p0, p1, v4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_2
    if-nez v2, :cond_3

    const-string/jumbo v4, "dtend"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 679
    const-string/jumbo v4, "DTEND/DURATION missing"

    invoke-direct {p0, p1, v4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_3
    if-eqz v2, :cond_4

    const-string/jumbo v4, "dtend"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 683
    const-string/jumbo v4, "Exception missing DTEND"

    invoke-direct {p0, p1, v4}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_4
    const-string/jumbo v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 687
    const-string/jumbo v4, "duration"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "duration":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 689
    const-string/jumbo v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 690
    const-string/jumbo v4, "allDay"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 691
    .local v0, "ade":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "D"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 696
    .end local v0    # "ade":Ljava/lang/Integer;
    .end local v1    # "duration":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public recurrenceParser()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, -0x1

    .line 702
    .local v0, "type":I
    const/4 v1, -0x1

    .line 703
    .local v1, "occurrences":I
    const/4 v2, -0x1

    .line 704
    .local v2, "interval":I
    const/4 v3, -0x1

    .line 705
    .local v3, "dow":I
    const/4 v4, -0x1

    .line 706
    .local v4, "dom":I
    const/4 v5, -0x1

    .line 707
    .local v5, "wom":I
    const/4 v6, -0x1

    .line 708
    .local v6, "moy":I
    const/4 v7, 0x0

    .line 710
    .local v7, "until":Ljava/lang/String;
    :goto_0
    const/16 v8, 0x11b

    invoke-virtual {p0, v8}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 711
    iget v8, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    packed-switch v8, :pswitch_data_0

    .line 737
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 713
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v0

    .line 714
    goto :goto_0

    .line 716
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v2

    .line 717
    goto :goto_0

    .line 719
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v1

    .line 720
    goto :goto_0

    .line 722
    :pswitch_3
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v3

    .line 723
    goto :goto_0

    .line 725
    :pswitch_4
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v4

    .line 726
    goto :goto_0

    .line 728
    :pswitch_5
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v5

    .line 729
    goto :goto_0

    .line 731
    :pswitch_6
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValueInt()I

    move-result v6

    .line 732
    goto :goto_0

    .line 734
    :pswitch_7
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 735
    goto :goto_0

    .line 741
    :cond_0
    invoke-static/range {v0 .. v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x11c
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1205
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 1207
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1208
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1212
    :cond_2
    return-void
.end method

.method setTimeRelatedValues(Landroid/content/ContentValues;JJI)V
    .locals 13
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "allDayEvent"    # I

    .prologue
    .line 277
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-gez v7, :cond_0

    .line 324
    :goto_0
    return-void

    .line 280
    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-gez v7, :cond_1

    const-wide/32 v7, 0x1b7740

    add-long p4, p2, v7

    .line 283
    :cond_1
    if-eqz p6, :cond_2

    .line 284
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-wide v0, p2

    invoke-static {v0, v1, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p2

    .line 285
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p4

    .line 286
    const-string/jumbo v7, "eventTimezone"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "originalTimeZone":Ljava/lang/String;
    const-string/jumbo v7, "sync_data1"

    invoke-virtual {p1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v7, "eventTimezone"

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v6    # "originalTimeZone":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "originalInstanceTime"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "originalAllDay"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 295
    const-string/jumbo v7, "originalAllDay"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 296
    .local v2, "ade":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    .line 297
    const-string/jumbo v7, "originalInstanceTime"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 298
    .local v4, "exceptionTime":J
    new-instance v3, Ljava/util/GregorianCalendar;

    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-direct {v3, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 299
    .local v3, "cal":Ljava/util/GregorianCalendar;
    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mLocalTimeZone:Ljava/util/TimeZone;

    invoke-static {v4, v5, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v4

    .line 301
    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 302
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 303
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 304
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 305
    const-string/jumbo v7, "originalInstanceTime"

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    .end local v2    # "ade":Ljava/lang/Integer;
    .end local v3    # "cal":Ljava/util/GregorianCalendar;
    .end local v4    # "exceptionTime":J
    :cond_3
    const-string/jumbo v7, "dtstart"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 312
    const-string/jumbo v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 313
    if-eqz p6, :cond_4

    .line 314
    const-string/jumbo v7, "duration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    const-wide/32 v11, 0x5265c00

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "D"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :cond_4
    const-string/jumbo v7, "duration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, p4, p2

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "M"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_5
    const-string/jumbo v7, "dtend"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    const-string/jumbo v7, "lastDate"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method protected wipe()V
    .locals 6

    .prologue
    .line 1351
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Wiping calendar for account %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1352
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/CalendarSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 1354
    return-void
.end method
