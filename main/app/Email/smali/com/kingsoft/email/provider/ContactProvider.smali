.class public Lcom/kingsoft/email/provider/ContactProvider;
.super Landroid/content/ContentProvider;
.source "ContactProvider.java"


# static fields
.field private static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTACT_ID:I = 0x1

.field public static final CONTENT_ACCOUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_NICK_URI:Landroid/net/Uri;

.field public static final CONTENT_SQL:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "com.android.provider.contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final CROWDSOURCING:Ljava/lang/String; = "crowdsourcing"

.field private static final CROWDSOURCING_ID:I = 0x5

.field public static final CROWDSOURCING_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final MAP:Ljava/lang/String; = "map"

.field public static final MAP_ID:I = 0x2

.field private static final MARK:Ljava/lang/String; = " by hua"

.field private static final NICK:Ljava/lang/String; = "nick"

.field public static final NICK_ID:I = 0x3

.field private static final SQL:Ljava/lang/String; = "sql"

.field public static final SQL_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ContactProvider"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/kingsoft/email/provider/ContactDBHelper;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    const-string/jumbo v0, "content://com.android.provider.contact/sql"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_SQL:Landroid/net/Uri;

    .line 49
    const-string/jumbo v0, "content://com.android.provider.contact/contact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    const-string/jumbo v0, "content://com.android.provider.contact/map"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    .line 62
    const-string/jumbo v0, "content://com.android.provider.contact/nick"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_NICK_URI:Landroid/net/Uri;

    .line 68
    const-string/jumbo v0, "content://com.android.provider.contact/crowdsourcing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/provider/ContactProvider;->CROWDSOURCING_URI:Landroid/net/Uri;

    .line 75
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 76
    sget-object v0, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.provider.contact"

    const-string/jumbo v2, "contact"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.provider.contact"

    const-string/jumbo v2, "map"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.provider.contact"

    const-string/jumbo v2, "nick"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.provider.contact"

    const-string/jumbo v2, "sql"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.provider.contact"

    const-string/jumbo v2, "crowdsourcing"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/kingsoft/email/provider/ContactProvider;->dbHelper:Lcom/kingsoft/email/provider/ContactDBHelper;

    .line 96
    iput-object v0, p0, Lcom/kingsoft/email/provider/ContactProvider;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private checkDatabase()V
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/provider/ContactProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 314
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/provider/ContactDBHelper;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/provider/ContactDBHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->dbHelper:Lcom/kingsoft/email/provider/ContactDBHelper;

    .line 315
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->dbHelper:Lcom/kingsoft/email/provider/ContactDBHelper;

    invoke-virtual {v1}, Lcom/kingsoft/email/provider/ContactDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 316
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 317
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    goto :goto_0
.end method

.method private refreshNickName(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 22
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "isUpdate"    # Z

    .prologue
    .line 222
    const-string/jumbo v17, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    if-eqz p4, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string/jumbo v17, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "displayName":Ljava/lang/String;
    const-string/jumbo v17, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "email":Ljava/lang/String;
    if-eqz p4, :cond_4

    .line 230
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz p2, :cond_4

    .line 231
    const-string/jumbo v17, "email"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 232
    .local v6, "emailPos":I
    if-ltz v6, :cond_0

    .line 235
    const-string/jumbo v17, "myemail"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 236
    .local v11, "myEmailPos":I
    const/4 v10, 0x0

    .line 237
    .local v10, "myEmail":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 238
    move-object/from16 v3, p3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v15, v3, v7

    .line 239
    .local v15, "sa":Ljava/lang/String;
    invoke-static {v15}, Lcom/kingsoft/mail/utils/ContactHelper;->isValid(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 240
    if-ltz v11, :cond_2

    if-ge v6, v11, :cond_9

    .line 241
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 254
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v15    # "sa":Ljava/lang/String;
    :cond_3
    const-string/jumbo v17, "email"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 255
    .local v8, "index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, "subStr":Ljava/lang/String;
    const-string/jumbo v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 260
    .end local v6    # "emailPos":I
    .end local v8    # "index":I
    .end local v10    # "myEmail":Ljava/lang/String;
    .end local v11    # "myEmailPos":I
    .end local v16    # "subStr":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 264
    :cond_5
    if-eqz p4, :cond_6

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const-string/jumbo v18, "nick_table"

    const-string/jumbo v19, "email=?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v5, v20, v21

    invoke-virtual/range {v17 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 270
    invoke-static {v4, v5}, Lcom/kingsoft/mail/utils/ContactHelper;->getFrendlyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    :cond_7
    const-string/jumbo v17, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {v4}, Lcom/kingsoft/mail/ui/HanZiToPinYin;->toPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, "py":Ljava/lang/String;
    const-string/jumbo v17, "pinyin"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {v4}, Lcom/kingsoft/mail/ui/HanZiToPinYin;->getFirstHanyuPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, "pyh":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v12, "nickvalues":Landroid/content/ContentValues;
    const-string/jumbo v17, "key"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v17, "email"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v17, "len"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const-string/jumbo v18, "nick_table"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 282
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 283
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 284
    const-string/jumbo v17, "key"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v17, "email"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v17, "len"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const-string/jumbo v18, "nick_table"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 288
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 289
    const-string/jumbo v17, "key"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v17, "email"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v17, "len"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const-string/jumbo v18, "nick_table"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 294
    :cond_8
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 295
    const-string/jumbo v17, "key"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v17, "email"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v17, "len"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const-string/jumbo v18, "nick_table"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 244
    .end local v12    # "nickvalues":Landroid/content/ContentValues;
    .end local v13    # "py":Ljava/lang/String;
    .end local v14    # "pyh":Ljava/lang/String;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "emailPos":I
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "myEmail":Ljava/lang/String;
    .restart local v11    # "myEmailPos":I
    .restart local v15    # "sa":Ljava/lang/String;
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 245
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 238
    :cond_a
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 248
    :cond_b
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static final showLog(Ljava/lang/Object;)V
    .locals 0
    .param p0, "log"    # Ljava/lang/Object;

    .prologue
    .line 93
    return-void
.end method

.method public static final showLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/kingsoft/email/provider/ContactProvider;->checkDatabase()V

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "num":I
    sget-object v2, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 117
    :goto_0
    return v0

    .line 104
    :pswitch_0
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "contact_table"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 105
    const-string/jumbo v1, "delete from nick_table where nick_table.email not in ( select email from contact_table)"

    .line 108
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v1    # "sql":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "map_table"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v2, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "nick_table"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/provider/ContactProvider;->checkDatabase()V

    .line 129
    const-wide/16 v16, 0x0

    .line 130
    .local v16, "id":J
    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 206
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-gez v3, :cond_4

    .line 207
    const/4 v3, 0x0

    .line 210
    :goto_1
    return-object v3

    .line 132
    :pswitch_0
    const-string/jumbo v3, "email"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 136
    .local v15, "emailString":Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/mail/utils/ContactHelper;->getCrowdMap()Ljava/util/HashMap;

    move-result-object v13

    .line 137
    .local v13, "csoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/provider/CrowdSourcingObject;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 138
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/kingsoft/email/provider/CrowdSourcingObject;

    .line 139
    .local v12, "cso":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    if-eqz v12, :cond_0

    .line 140
    invoke-virtual {v12}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->getSourceTypeId()I

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v15, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "contact_table"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v16

    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/kingsoft/email/provider/ContactProvider;->refreshNickName(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 149
    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 155
    .end local v12    # "cso":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    :cond_0
    const-string/jumbo v3, "myemail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 156
    .local v18, "myemail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "contact_table"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isenable"

    aput-object v7, v5, v6

    const-string/jumbo v6, "email=?  COLLATE NOCASE and myemail=? COLLATE NOCASE"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    const/4 v8, 0x1

    aput-object v18, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 161
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_3

    .line 162
    :cond_1
    const-string/jumbo v3, "isenable"

    const-string/jumbo v4, "1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/kingsoft/email/provider/ContactProvider;->refreshNickName(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "contact_table"

    const-string/jumbo v5, "id"

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 165
    if-eqz v14, :cond_2

    .line 166
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_2
    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    .line 170
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    const-string/jumbo v3, "isenable"

    const-string/jumbo v4, "1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/kingsoft/email/provider/ContactProvider;->refreshNickName(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "contact_table"

    const-string/jumbo v5, "email=? COLLATE NOCASE and myemail=? COLLATE NOCASE"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "email"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "myemail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 184
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 189
    .end local v13    # "csoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/provider/CrowdSourcingObject;>;"
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "emailString":Ljava/lang/String;
    .end local v18    # "myemail":Ljava/lang/String;
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "map_table"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v16

    goto/16 :goto_0

    .line 198
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "nick_table"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 199
    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_NICK_URI:Landroid/net/Uri;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 210
    :cond_4
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    .line 200
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 190
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/provider/ContactProvider;->checkDatabase()V

    .line 324
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 366
    const/4 v15, 0x0

    :goto_0
    return-object v15

    .line 330
    :pswitch_0
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 331
    .local v18, "email":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v20, p4, v1

    .line 332
    .local v20, "key":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 333
    const-string/jumbo v1, "\'"

    const-string/jumbo v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 335
    :cond_0
    const/4 v1, 0x1

    const-string/jumbo v2, "nick_table"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "email"

    aput-object v6, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lower(key) LIKE \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 336
    .local v19, "emailsWithMatchingKey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lower(email) in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") AND lower("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "myemail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "whereKeyAndEmail":Ljava/lang/String;
    const/4 v1, 0x1

    const-string/jumbo v2, "contact_table"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 338
    .local v13, "contactsWithKeyAndEmail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "contact_table"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_0

    .line 340
    .end local v4    # "whereKeyAndEmail":Ljava/lang/String;
    .end local v13    # "contactsWithKeyAndEmail":Ljava/lang/String;
    .end local v18    # "email":Ljava/lang/String;
    .end local v19    # "emailsWithMatchingKey":Ljava/lang/String;
    .end local v20    # "key":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "contact_table"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_0

    .line 343
    :pswitch_2
    const/4 v15, 0x0

    .line 345
    .local v15, "cursor1":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "map_table"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    goto/16 :goto_0

    .line 348
    :catch_0
    move-exception v17

    .line 350
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 355
    .end local v15    # "cursor1":Landroid/database/Cursor;
    .end local v17    # "e":Ljava/lang/Exception;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "nick_table"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .local v16, "cursor2":Landroid/database/Cursor;
    move-object/from16 v15, v16

    .line 358
    goto/16 :goto_0

    .line 360
    .end local v16    # "cursor2":Landroid/database/Cursor;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "crowdsourcing"

    sget-object v7, Lcom/kingsoft/email/provider/ContactContent$Crowdsourcing;->CROWDSOURCING_PROJECTCION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .local v14, "crowdCursor":Landroid/database/Cursor;
    move-object v15, v14

    .line 363
    goto/16 :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/kingsoft/email/provider/ContactProvider;->checkDatabase()V

    .line 373
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 416
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 375
    :pswitch_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "contact_table"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/kingsoft/email/provider/ContactProvider;->refreshNickName(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 382
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/provider/ContactProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "map_table"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
