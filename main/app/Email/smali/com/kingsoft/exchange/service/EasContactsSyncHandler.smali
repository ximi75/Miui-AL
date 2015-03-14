.class public Lcom/kingsoft/exchange/service/EasContactsSyncHandler;
.super Lcom/kingsoft/exchange/service/EasSyncHandler;
.source "EasContactsSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/service/EasContactsSyncHandler$EasBusiness;,
        Lcom/kingsoft/exchange/service/EasContactsSyncHandler$EasPersonal;,
        Lcom/kingsoft/exchange/service/EasContactsSyncHandler$EasChildren;
    }
.end annotation


# static fields
.field private static final DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final EMAIL_TAGS:[I

.field private static final GROUPS_ID_PROJECTION:[Ljava/lang/String;

.field private static final GROUP_TITLE_PROJECTION:[Ljava/lang/String;

.field private static final HOME_ADDRESS_TAGS:[I

.field private static final HOME_PHONE_TAGS:[I

.field private static final IM_TAGS:[I

.field private static final MAX_EMAIL_ROWS:I = 0x3

.field private static final MAX_IM_ROWS:I = 0x3

.field private static final MAX_PHONE_ROWS:I = 0x2

.field private static final MIMETYPE_GROUP_MEMBERSHIP_AND_ID_EQUALS:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

.field private static final OTHER_ADDRESS_TAGS:[I

.field private static final SHORT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final WORK_ADDRESS_TAGS:[I

.field private static final WORK_PHONE_TAGS:[I


# instance fields
.field private final mAccountManagerAccount:Landroid/accounts/Account;

.field private final mDeletedContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mParser:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

.field private final mUpdatedContacts:Ljava/util/ArrayList;
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
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    .line 51
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->IM_TAGS:[I

    .line 57
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->EMAIL_TAGS:[I

    .line 63
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->WORK_PHONE_TAGS:[I

    .line 66
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->HOME_PHONE_TAGS:[I

    .line 70
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->HOME_ADDRESS_TAGS:[I

    .line 77
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->WORK_ADDRESS_TAGS:[I

    .line 84
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->OTHER_ADDRESS_TAGS:[I

    .line 327
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->SHORT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 328
    sget-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->SHORT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 331
    new-array v0, v5, [Ljava/text/DateFormat;

    sget-object v1, Lcom/kingsoft/exchange/Eas;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->SHORT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    .line 332
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x307
        0x308
        0x309
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x5b
        0x5c
        0x5d
    .end array-data

    .line 63
    :array_2
    .array-data 4
        0x53
        0x4c
    .end array-data

    .line 66
    :array_3
    .array-data 4
        0x67
        0x60
    .end array-data

    .line 70
    :array_4
    .array-data 4
        0x61
        0x62
        0x63
        0x64
        0x65
    .end array-data

    .line 77
    :array_5
    .array-data 4
        0x4d
        0x4e
        0x4f
        0x50
        0x51
    .end array-data

    .line 84
    :array_6
    .array-data 4
        0x61
        0x6e
        0x6f
        0x70
        0x71
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "accountManagerAccount"    # Landroid/accounts/Account;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p5, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p6, "syncExtras"    # Landroid/os/Bundle;
    .param p7, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/exchange/service/EasSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mDeletedContacts:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mUpdatedContacts:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mParser:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

    .line 139
    iput-object p3, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 140
    return-void
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private dirtyContactsWithinDirtyGroups()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 265
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 266
    .local v7, "emailAddress":Ljava/lang/String;
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "dirty=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 301
    :goto_0
    return-void

    .line 273
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 274
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    .line 275
    .local v10, "updateArgs":[Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v11, "updateValues":Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 281
    .local v8, "id":J
    const-string/jumbo v0, "data1"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 283
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

    invoke-virtual {v0, v1, v11, v2, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 297
    .end local v8    # "id":J
    .end local v10    # "updateArgs":[Ljava/lang/String;
    .end local v11    # "updateValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 287
    .restart local v10    # "updateArgs":[Ljava/lang/String;
    .restart local v11    # "updateValues":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "deleted=1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 292
    const-string/jumbo v0, "dirty"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .end local v10    # "updateArgs":[Ljava/lang/String;
    .end local v11    # "updateValues":Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static sendBirthday(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    const-string/jumbo v0, "data1"

    const/16 v1, 0x48

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendDateData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 616
    return-void
.end method

.method private static sendBusiness(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    const-string/jumbo v0, "data8"

    const/16 v1, 0x30c

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 414
    const-string/jumbo v0, "data6"

    const/16 v1, 0x305

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 415
    const-string/jumbo v0, "data7"

    const/16 v1, 0x306

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 416
    return-void
.end method

.method private static sendChildren(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x1

    .line 390
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 391
    sget-object v3, Lcom/kingsoft/exchange/service/EasContactsSyncHandler$EasChildren;->ROWS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 392
    .local v2, "row":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    if-eqz v0, :cond_0

    .line 394
    const/16 v3, 0x57

    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 395
    const/4 v0, 0x0

    .line 397
    :cond_0
    const/16 v3, 0x58

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 390
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "row":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 403
    :cond_3
    return-void
.end method

.method private static sendDateData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 7
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 349
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 353
    sget-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->DATE_FORMATS:[Ljava/text/DateFormat;

    .local v0, "arr$":[Ljava/text/DateFormat;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 355
    .local v2, "format":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 356
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_1

    .line 358
    sget-object v6, Lcom/kingsoft/exchange/Eas;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p3, v6}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0    # "arr$":[Ljava/text/DateFormat;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 361
    .restart local v0    # "arr$":[Ljava/text/DateFormat;
    .restart local v2    # "format":Ljava/text/DateFormat;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 353
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private sendEmail(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V
    .locals 7
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "count"    # I
    .param p4, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    const-string/jumbo v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "addr":Ljava/lang/String;
    const-string/jumbo v3, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 673
    if-eqz p4, :cond_2

    .line 674
    move-object v1, p4

    .line 680
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->getProtocolVersion()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028000000000000L

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 685
    move-object v2, v0

    .line 689
    .local v2, "value":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x3

    if-ge p3, v3, :cond_1

    .line 690
    sget-object v3, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->EMAIL_TAGS:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 693
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 676
    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 687
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method private static sendIm(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    const-string/jumbo v1, "data1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const/4 v1, 0x3

    if-ge p2, v1, :cond_0

    .line 603
    sget-object v1, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->IM_TAGS:[I

    aget v1, v1, p2

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private static sendNickname(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    const-string/jumbo v0, "data1"

    const/16 v1, 0x30d

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 379
    return-void
.end method

.method private sendNote(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    const-string/jumbo v0, ""

    .line 628
    .local v0, "note":Ljava/lang/String;
    const-string/jumbo v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const-string/jumbo v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->getProtocolVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028000000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 634
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 635
    const/16 v1, 0x446

    const-string/jumbo v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44b

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 636
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_1
    const/16 v1, 0x49

    invoke-virtual {p1, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private static sendOnePostal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "fieldNames"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    const-string/jumbo v0, "data7"

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 549
    const-string/jumbo v0, "data10"

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 550
    const-string/jumbo v0, "data9"

    const/4 v1, 0x2

    aget v1, p2, v1

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 551
    const-string/jumbo v0, "data8"

    const/4 v1, 0x3

    aget v1, p2, v1

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 552
    const-string/jumbo v0, "data4"

    const/4 v1, 0x4

    aget v1, p2, v1

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 553
    return-void
.end method

.method private static sendOrganization(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    const-string/jumbo v0, "data4"

    const/16 v1, 0x68

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 587
    const-string/jumbo v0, "data1"

    const/16 v1, 0x59

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 588
    const-string/jumbo v0, "data5"

    const/16 v1, 0x5a

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 589
    const-string/jumbo v0, "data9"

    const/16 v1, 0x6c

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 590
    return-void
.end method

.method private static sendPersonal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const-string/jumbo v0, "data2"

    const/16 v1, 0x45

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 437
    const-string/jumbo v0, "data4"

    const/16 v1, 0x5e

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 438
    return-void
.end method

.method private static sendPhone(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V
    .locals 3
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "workCount"    # I
    .param p3, "homeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 450
    const-string/jumbo v1, "data1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const-string/jumbo v1, "data2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 471
    :pswitch_1
    if-ge p3, v2, :cond_0

    .line 472
    sget-object v1, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->HOME_PHONE_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 454
    :pswitch_2
    if-ge p2, v2, :cond_0

    .line 455
    sget-object v1, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->WORK_PHONE_TAGS:[I

    aget v1, v1, p2

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 459
    :pswitch_3
    const/16 v1, 0x30e

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 462
    :pswitch_4
    const/16 v1, 0x47

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 465
    :pswitch_5
    const/16 v1, 0x52

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 468
    :pswitch_6
    const/16 v1, 0x30b

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 476
    :pswitch_7
    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 479
    :pswitch_8
    const/16 v1, 0x54

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 482
    :pswitch_9
    const/16 v1, 0x72

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 485
    :pswitch_a
    const/16 v1, 0x73

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 488
    :pswitch_b
    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static sendPhoto(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7c

    .line 649
    const-string/jumbo v2, "data15"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    const-string/jumbo v2, "data15"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 651
    .local v0, "bytes":[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, "pic":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 657
    .end local v0    # "bytes":[B
    .end local v1    # "pic":Ljava/lang/String;
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private static sendRelation(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const-string/jumbo v1, "data1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 505
    :cond_0
    const-string/jumbo v1, "data2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 507
    :sswitch_0
    const/16 v1, 0x46

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 510
    :sswitch_1
    const/16 v1, 0x30a

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 513
    :sswitch_2
    const/16 v1, 0x74

    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 505
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method private static sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-virtual {p0, p3, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 319
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static sendStructuredName(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    const-string/jumbo v0, "data3"

    const/16 v1, 0x69

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 531
    const-string/jumbo v0, "data2"

    const/16 v1, 0x5f

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 532
    const-string/jumbo v0, "data5"

    const/16 v1, 0x6a

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 533
    const-string/jumbo v0, "data6"

    const/16 v1, 0x75

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 534
    const-string/jumbo v0, "data7"

    const/16 v1, 0x79

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 535
    const-string/jumbo v0, "data9"

    const/16 v1, 0x7a

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 536
    const-string/jumbo v0, "data4"

    const/16 v1, 0x76

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 537
    return-void
.end method

.method private static sendStructuredPostal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    const-string/jumbo v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 576
    :goto_0
    return-void

    .line 565
    :pswitch_0
    sget-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->HOME_ADDRESS_TAGS:[I

    invoke-static {p0, p1, v0}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendOnePostal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 568
    :pswitch_1
    sget-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->WORK_ADDRESS_TAGS:[I

    invoke-static {p0, p1, v0}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendOnePostal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 571
    :pswitch_2
    sget-object v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->OTHER_ADDRESS_TAGS:[I

    invoke-static {p0, p1, v0}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendOnePostal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static sendWebpage(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    const-string/jumbo v0, "data1"

    const/16 v1, 0x77

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStringData(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 426
    return-void
.end method

.method private static uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    const-string/jumbo v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 923
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 925
    return-void
.end method


# virtual methods
.method protected cleanup(I)V
    .locals 13
    .param p1, "syncResult"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 866
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    new-instance v9, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    invoke-direct {v9}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;-><init>()V

    .line 873
    .local v9, "ops":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mUpdatedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 874
    .local v8, "id":Ljava/lang/Long;
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "caller_is_syncadapter"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v2, "dirty"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 881
    .end local v8    # "id":Ljava/lang/Long;
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mDeletedContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 882
    .restart local v8    # "id":Ljava/lang/Long;
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "caller_is_syncadapter"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_2

    .line 887
    .end local v8    # "id":Ljava/lang/Long;
    :cond_3
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->execute(Landroid/content/Context;)V

    .line 888
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mParser:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mParser:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->isGroupsUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 895
    .local v1, "groupsUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sourceid"

    aput-object v3, v2, v5

    const-string/jumbo v3, "title"

    aput-object v3, v2, v12

    const-string/jumbo v3, "title IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 898
    .local v6, "c":Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 899
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "group_visible"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    if-eqz v6, :cond_0

    .line 902
    :goto_3
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 903
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 904
    .local v10, "sourceId":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "sourceid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-virtual {v0, v2, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 910
    .end local v10    # "sourceId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected getFolderClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "Contacts"

    return-object v0
.end method

.method protected getParser(Ljava/io/InputStream;)Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mAccountManagerAccount:Landroid/accounts/Account;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;)V

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mParser:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

    .line 158
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mParser:Lcom/kingsoft/exchange/adapter/ContactsSyncParser;

    return-object v0
.end method

.method protected getTrafficFlag()I
    .locals 1

    .prologue
    .line 144
    const/high16 v0, 0x40000

    return v0
.end method

.method protected setInitialSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 166
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 167
    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 168
    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 169
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 170
    const/16 v0, 0x59

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 171
    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 172
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 173
    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 174
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 175
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 176
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 177
    const/16 v0, 0x30e

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 178
    const/16 v0, 0x52

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 179
    const/16 v0, 0x30b

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 180
    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 181
    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 182
    const/16 v0, 0x60

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 183
    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 184
    const/16 v0, 0x54

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 185
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 186
    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 187
    const/16 v0, 0x47

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 188
    const/16 v0, 0x307

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 189
    const/16 v0, 0x308

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 190
    const/16 v0, 0x309

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 191
    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 192
    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 193
    const/16 v0, 0x4f

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 194
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 195
    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 196
    const/16 v0, 0x61

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 197
    const/16 v0, 0x62

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 198
    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 199
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 200
    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 201
    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 202
    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 203
    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 204
    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 205
    const/16 v0, 0x71

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 206
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 207
    const/16 v0, 0x79

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 208
    const/16 v0, 0x7a

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 209
    const/16 v0, 0x30d

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 210
    const/16 v0, 0x46

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 211
    const/16 v0, 0x30a

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 212
    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 213
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 214
    const/16 v0, 0x76

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 215
    const/16 v0, 0x6c

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 216
    const/16 v0, 0x305

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 217
    const/16 v0, 0x306

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 218
    const/16 v0, 0x30c

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 219
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 220
    const/16 v0, 0x48

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 221
    const/16 v0, 0x77

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 222
    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->tag(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 223
    invoke-virtual {p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 224
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

    .line 228
    mul-int/lit8 v0, p2, 0xa

    .line 229
    .local v0, "windowSize":I
    const/16 v2, 0x20a

    if-le v0, v2, :cond_0

    .line 230
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Max window size reached and still no data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .end local v0    # "windowSize":I
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->setPimSyncOptions(Lcom/kingsoft/exchange/adapter/Serializer;Ljava/lang/String;I)V

    .line 233
    return-void

    .restart local v0    # "windowSize":I
    :cond_1
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method protected setUpsyncCommands(Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 41
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->dirtyContactsWithinDirtyGroups()V

    .line 701
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v7, v7, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 705
    .local v6, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const-string/jumbo v8, "dirty=1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 706
    .local v16, "cursor":Landroid/database/Cursor;
    if-nez v16, :cond_0

    .line 862
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v19

    .line 710
    .local v19, "ei":Landroid/content/EntityIterator;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 712
    .local v14, "cidValues":Landroid/content/ContentValues;
    const/16 v26, 0x1

    .line 713
    .local v26, "first":Z
    :try_start_0
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v37

    .line 715
    .local v37, "rawContactUri":Landroid/net/Uri;
    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 716
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Entity;

    .line 718
    .local v23, "entity":Landroid/content/Entity;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 721
    .local v24, "entityValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "sourceid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 723
    .local v38, "serverId":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->restoreMailboxServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 725
    .local v34, "mailboxId":Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 726
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 731
    :cond_2
    invoke-static/range {v38 .. v38}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->restoreOriginalContactServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 735
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v28, "groupIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v26, :cond_3

    .line 737
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 738
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v7, "Sending Contacts changes to the server"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 739
    const/16 v26, 0x0

    .line 741
    :cond_3
    if-nez v38, :cond_4

    .line 743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "new_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x5f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 745
    .local v15, "clientId":Ljava/lang/String;
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v7, "Creating new contact with clientId: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v8, v9

    invoke-static {v5, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 746
    const/4 v5, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v7, 0xc

    invoke-virtual {v5, v7, v15}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 748
    const-string/jumbo v5, "sync1"

    invoke-virtual {v14, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v37

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v14, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 763
    .end local v15    # "clientId":Ljava/lang/String;
    :goto_2
    const/16 v5, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 765
    const/16 v32, 0x0

    .line 766
    .local v32, "imCount":I
    const/16 v20, 0x0

    .line 767
    .local v20, "emailCount":I
    const/16 v29, 0x0

    .line 768
    .local v29, "homePhoneCount":I
    const/16 v40, 0x0

    .line 770
    .local v40, "workPhoneCount":I
    const/16 v18, 0x0

    .line 771
    .local v18, "displayName":Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v22, "emailValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    move/from16 v33, v32

    .end local v32    # "imCount":I
    .local v33, "imCount":I
    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Entity$NamedContentValues;

    .line 773
    .local v36, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    .line 774
    .local v17, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "mimetype"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 775
    .local v35, "mimeType":Ljava/lang/String;
    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 776
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    :goto_4
    move/from16 v33, v32

    .line 817
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    goto :goto_3

    .line 753
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v18    # "displayName":Ljava/lang/String;
    .end local v20    # "emailCount":I
    .end local v22    # "emailValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v29    # "homePhoneCount":I
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v33    # "imCount":I
    .end local v35    # "mimeType":Ljava/lang/String;
    .end local v36    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v40    # "workPhoneCount":I
    :cond_4
    const-string/jumbo v5, "deleted"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    .line 754
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v7, "Deleting contact with serverId: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v38, v8, v9

    invoke-static {v5, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 755
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v7, 0xd

    move-object/from16 v0, v38

    invoke-virtual {v5, v7, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 756
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mDeletedContacts:Ljava/util/ArrayList;

    const-string/jumbo v7, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 859
    .end local v23    # "entity":Landroid/content/Entity;
    .end local v24    # "entityValues":Landroid/content/ContentValues;
    .end local v28    # "groupIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v34    # "mailboxId":Ljava/lang/String;
    .end local v37    # "rawContactUri":Landroid/net/Uri;
    .end local v38    # "serverId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->close()V

    throw v5

    .line 760
    .restart local v23    # "entity":Landroid/content/Entity;
    .restart local v24    # "entityValues":Landroid/content/ContentValues;
    .restart local v28    # "groupIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v34    # "mailboxId":Ljava/lang/String;
    .restart local v37    # "rawContactUri":Landroid/net/Uri;
    .restart local v38    # "serverId":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v7, "Upsync change to contact with serverId: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v38, v8, v9

    invoke-static {v5, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 761
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v7, 0xd

    move-object/from16 v0, v38

    invoke-virtual {v5, v7, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 777
    .restart local v17    # "cv":Landroid/content/ContentValues;
    .restart local v18    # "displayName":Ljava/lang/String;
    .restart local v20    # "emailCount":I
    .restart local v22    # "emailValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v29    # "homePhoneCount":I
    .restart local v30    # "i$":Ljava/util/Iterator;
    .restart local v33    # "imCount":I
    .restart local v35    # "mimeType":Ljava/lang/String;
    .restart local v36    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v40    # "workPhoneCount":I
    :cond_6
    const-string/jumbo v5, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 778
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendNickname(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto :goto_4

    .line 779
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_7
    const-string/jumbo v5, "vnd.android.cursor.item/eas_children"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 780
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendChildren(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 781
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_8
    const-string/jumbo v5, "vnd.android.cursor.item/eas_business"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 782
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendBusiness(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 783
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_9
    const-string/jumbo v5, "vnd.android.cursor.item/website"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 784
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendWebpage(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 785
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_a
    const-string/jumbo v5, "vnd.android.cursor.item/eas_personal"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 786
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendPersonal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 787
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_b
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 788
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v40

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendPhone(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V

    .line 789
    const-string/jumbo v5, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 790
    .local v39, "type":I
    const/4 v5, 0x1

    move/from16 v0, v39

    if-ne v0, v5, :cond_c

    add-int/lit8 v29, v29, 0x1

    .line 791
    :cond_c
    const/4 v5, 0x3

    move/from16 v0, v39

    if-ne v0, v5, :cond_d

    add-int/lit8 v40, v40, 0x1

    :cond_d
    move/from16 v32, v33

    .line 792
    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .end local v32    # "imCount":I
    .end local v39    # "type":I
    .restart local v33    # "imCount":I
    :cond_e
    const-string/jumbo v5, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 793
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendRelation(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 794
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_f
    const-string/jumbo v5, "vnd.android.cursor.item/name"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 795
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStructuredName(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 796
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_10
    const-string/jumbo v5, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 797
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendStructuredPostal(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 798
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_11
    const-string/jumbo v5, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 799
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendOrganization(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 800
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_12
    const-string/jumbo v5, "vnd.android.cursor.item/im"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 801
    add-int/lit8 v32, v33, 0x1

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendIm(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V

    goto/16 :goto_4

    .line 802
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_13
    const-string/jumbo v5, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 803
    const-string/jumbo v5, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    .line 804
    .local v25, "eventType":Ljava/lang/Integer;
    if-eqz v25, :cond_14

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 805
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendBirthday(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    :cond_14
    move/from16 v32, v33

    .line 807
    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .end local v25    # "eventType":Ljava/lang/Integer;
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_15
    const-string/jumbo v5, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 809
    const-string/jumbo v5, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 810
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_16
    const-string/jumbo v5, "vnd.android.cursor.item/note"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 811
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendNote(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 812
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_17
    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 813
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendPhoto(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 815
    .end local v32    # "imCount":I
    .restart local v33    # "imCount":I
    :cond_18
    const-string/jumbo v5, "Exchange"

    const-string/jumbo v7, "Contacts upsync, unknown data: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v35, v8, v9

    invoke-static {v5, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move/from16 v32, v33

    .end local v33    # "imCount":I
    .restart local v32    # "imCount":I
    goto/16 :goto_4

    .line 821
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v32    # "imCount":I
    .end local v35    # "mimeType":Ljava/lang/String;
    .end local v36    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v33    # "imCount":I
    :cond_19
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    move/from16 v21, v20

    .end local v20    # "emailCount":I
    .local v21, "emailCount":I
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    .line 822
    .restart local v17    # "cv":Landroid/content/ContentValues;
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "emailCount":I
    .restart local v20    # "emailCount":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v21

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->sendEmail(Lcom/kingsoft/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V

    move/from16 v21, v20

    .line 823
    .end local v20    # "emailCount":I
    .restart local v21    # "emailCount":I
    goto :goto_5

    .line 826
    .end local v17    # "cv":Landroid/content/ContentValues;
    :cond_1a
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 827
    const/16 v27, 0x1

    .line 828
    .local v27, "groupFirst":Z
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_1b
    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 830
    .local v31, "id":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v31

    int-to-long v8, v0

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 833
    .local v13, "c":Landroid/database/Cursor;
    if-eqz v13, :cond_1b

    .line 836
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 837
    if-eqz v27, :cond_1c

    .line 838
    const/16 v5, 0x55

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 839
    const/16 v27, 0x0

    .line 841
    :cond_1c
    const/16 v5, 0x56

    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 844
    :cond_1d
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 848
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v31    # "id":I
    :cond_1e
    if-nez v27, :cond_1f

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 852
    .end local v27    # "groupFirst":Z
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 853
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->mUpdatedContacts:Ljava/util/ArrayList;

    const-string/jumbo v7, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 855
    .end local v18    # "displayName":Ljava/lang/String;
    .end local v21    # "emailCount":I
    .end local v22    # "emailValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v23    # "entity":Landroid/content/Entity;
    .end local v24    # "entityValues":Landroid/content/ContentValues;
    .end local v28    # "groupIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "homePhoneCount":I
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v33    # "imCount":I
    .end local v34    # "mailboxId":Ljava/lang/String;
    .end local v38    # "serverId":Ljava/lang/String;
    .end local v40    # "workPhoneCount":I
    :cond_20
    if-nez v26, :cond_21

    .line 856
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    :cond_21
    invoke-interface/range {v19 .. v19}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_0
.end method
