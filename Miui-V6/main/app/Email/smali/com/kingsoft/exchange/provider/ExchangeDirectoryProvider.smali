.class public Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;
.super Landroid/content/ContentProvider;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$1;,
        Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;,
        Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;,
        Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;,
        Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;,
        Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTACT_ID:I = 0x1

.field private static final DEFAULT_LOOKUP_LIMIT:I = 0x14

.field public static final EXCHANGE_GAL_AUTHORITY:Ljava/lang/String; = "com.android.exchange.directory.provider"

.field private static final GAL_BASE:I = 0x0

.field private static final GAL_CONTACT:I = 0x2

.field private static final GAL_CONTACT_WITH_ID:I = 0x3

.field private static final GAL_DIRECTORIES:I = 0x0

.field private static final GAL_EMAIL_FILTER:I = 0x4

.field private static final GAL_FILTER:I = 0x1

.field private static final GAL_PHONE_FILTER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field final mAccountIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 80
    sget-object v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.exchange.directory.provider"

    const-string/jumbo v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.exchange.directory.provider"

    const-string/jumbo v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.exchange.directory.provider"

    const-string/jumbo v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.exchange.directory.provider"

    const-string/jumbo v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.exchange.directory.provider"

    const-string/jumbo v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.exchange.directory.provider"

    const-string/jumbo v2, "data/phones/filter/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    .line 593
    return-void
.end method

.method private addPhoneInfo(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;-><init>(Ljava/lang/String;ILcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$1;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    return-void
.end method


# virtual methods
.method buildGalResultCursor([Ljava/lang/String;Lcom/kingsoft/exchange/provider/GalResult;ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 37
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "galResult"    # Lcom/kingsoft/exchange/provider/GalResult;
    .param p3, "isPhoneFilter"    # Z
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v12, -0x1

    .line 352
    .local v12, "displayNameIndex":I
    const/4 v13, -0x1

    .line 353
    .local v13, "displayNameSourceIndex":I
    const/4 v5, -0x1

    .line 354
    .local v5, "alternateDisplayNameIndex":I
    const/4 v14, -0x1

    .line 355
    .local v14, "emailIndex":I
    const/4 v15, -0x1

    .line 356
    .local v15, "emailTypeIndex":I
    const/16 v26, -0x1

    .line 357
    .local v26, "phoneNumberIndex":I
    const/16 v27, -0x1

    .line 358
    .local v27, "phoneTypeIndex":I
    const/16 v18, -0x1

    .line 359
    .local v18, "hasPhoneNumberIndex":I
    const/16 v22, -0x1

    .line 360
    .local v22, "idIndex":I
    const/4 v8, -0x1

    .line 361
    .local v8, "contactIdIndex":I
    const/16 v24, -0x1

    .line 363
    .local v24, "lookupIndex":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_c

    .line 364
    aget-object v6, p1, v19

    .line 365
    .local v6, "column":Ljava/lang/String;
    const-string/jumbo v35, "display_name"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_0

    const-string/jumbo v35, "display_name"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 367
    :cond_0
    move/from16 v12, v19

    .line 363
    :cond_1
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 368
    :cond_2
    const-string/jumbo v35, "display_name_alt"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 369
    move/from16 v5, v19

    goto :goto_1

    .line 370
    :cond_3
    const-string/jumbo v35, "display_name_source"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 371
    move/from16 v13, v19

    goto :goto_1

    .line 372
    :cond_4
    const-string/jumbo v35, "has_phone_number"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 373
    move/from16 v18, v19

    goto :goto_1

    .line 374
    :cond_5
    const-string/jumbo v35, "_id"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 375
    move/from16 v22, v19

    goto :goto_1

    .line 376
    :cond_6
    const-string/jumbo v35, "contact_id"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 377
    move/from16 v8, v19

    goto :goto_1

    .line 378
    :cond_7
    const-string/jumbo v35, "lookup"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 379
    move/from16 v24, v19

    goto :goto_1

    .line 380
    :cond_8
    if-eqz p3, :cond_a

    .line 381
    const-string/jumbo v35, "data1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 382
    move/from16 v26, v19

    goto :goto_1

    .line 383
    :cond_9
    const-string/jumbo v35, "data2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 384
    move/from16 v27, v19

    goto :goto_1

    .line 389
    :cond_a
    const-string/jumbo v35, "data1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 390
    move/from16 v14, v19

    goto/16 :goto_1

    .line 391
    :cond_b
    const-string/jumbo v35, "data2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 392
    move/from16 v15, v19

    goto/16 :goto_1

    .line 397
    .end local v6    # "column":Ljava/lang/String;
    :cond_c
    const-string/jumbo v35, "sort_key_alt"

    move-object/from16 v0, v35

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 399
    .local v34, "useAlternateSortKey":Z
    new-instance v32, Ljava/util/TreeMap;

    new-instance v35, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;

    invoke-direct/range {v35 .. v35}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$NameComparator;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 404
    .local v32, "sortedResultsMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;[Ljava/lang/Object;>;"
    const/16 v21, 0x1

    .line 409
    .local v21, "id":I
    const/4 v7, 0x1

    .line 411
    .local v7, "contactId":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    .line 412
    .local v30, "row":[Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/kingsoft/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 413
    .local v9, "count":I
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v9, :cond_21

    .line 414
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/kingsoft/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/kingsoft/exchange/provider/GalResult$GalData;

    .line 415
    .local v17, "galDataRow":Lcom/kingsoft/exchange/provider/GalResult$GalData;
    const-string/jumbo v35, "firstName"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 416
    .local v16, "firstName":Ljava/lang/String;
    const-string/jumbo v35, "lastName"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 417
    .local v23, "lastName":Ljava/lang/String;
    const-string/jumbo v35, "displayName"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 418
    .local v11, "displayName":Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v28, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;>;"
    const-string/jumbo v35, "workPhone"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->addPhoneInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 421
    const-string/jumbo v35, "office"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->addPhoneInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 422
    const-string/jumbo v35, "homePhone"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->addPhoneInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 423
    const-string/jumbo v35, "mobilePhone"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->addPhoneInfo(Ljava/util/List;Ljava/lang/String;I)V

    .line 426
    if-nez v11, :cond_d

    .line 427
    if-eqz v16, :cond_18

    if-eqz v23, :cond_18

    .line 428
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 435
    :cond_d
    :goto_3
    const-string/jumbo v35, "displayName"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v11}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v12, v0, :cond_e

    .line 438
    aput-object v11, v30, v12

    .line 444
    :cond_e
    if-eqz v16, :cond_1a

    if-eqz v23, :cond_1a

    .line 445
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "alternateDisplayName":Ljava/lang/String;
    :goto_4
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v5, v0, :cond_f

    .line 451
    aput-object v4, v30, v5

    .line 454
    :cond_f
    if-ltz v13, :cond_10

    .line 455
    const/16 v35, 0x28

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v30, v13

    .line 458
    :cond_10
    if-eqz v34, :cond_1b

    move-object/from16 v31, v4

    .line 460
    .local v31, "sortName":Ljava/lang/String;
    :goto_5
    if-ltz v18, :cond_11

    .line 461
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_11

    .line 462
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    aput-object v35, v30, v18

    .line 466
    :cond_11
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v8, v0, :cond_12

    .line 467
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v30, v8

    .line 470
    :cond_12
    const/16 v35, -0x1

    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_13

    .line 473
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->toPackedString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v30, v24

    .line 476
    :cond_13
    if-eqz p3, :cond_1c

    .line 477
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 479
    .local v33, "uniqueNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_20

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;

    .line 480
    .local v25, "phone":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;
    # getter for: Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mNumber:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->access$000(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 483
    if-ltz v26, :cond_15

    .line 484
    # getter for: Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mNumber:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->access$000(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v30, v26

    .line 486
    :cond_15
    if-ltz v27, :cond_16

    .line 487
    # getter for: Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mType:I
    invoke-static/range {v25 .. v25}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->access$100(Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v30, v27

    .line 489
    :cond_16
    const/16 v35, -0x1

    move/from16 v0, v22

    move/from16 v1, v35

    if-eq v0, v1, :cond_17

    .line 490
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v30, v22

    .line 492
    :cond_17
    new-instance v35, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v30 .. v30}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    add-int/lit8 v21, v21, 0x1

    .line 494
    goto :goto_6

    .line 429
    .end local v4    # "alternateDisplayName":Ljava/lang/String;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v25    # "phone":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;
    .end local v31    # "sortName":Ljava/lang/String;
    .end local v33    # "uniqueNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_18
    if-eqz v16, :cond_19

    .line 430
    move-object/from16 v11, v16

    goto/16 :goto_3

    .line 431
    :cond_19
    if-eqz v23, :cond_d

    .line 432
    move-object/from16 v11, v23

    goto/16 :goto_3

    .line 447
    :cond_1a
    move-object v4, v11

    .restart local v4    # "alternateDisplayName":Ljava/lang/String;
    goto/16 :goto_4

    :cond_1b
    move-object/from16 v31, v11

    .line 458
    goto/16 :goto_5

    .line 497
    .restart local v31    # "sortName":Ljava/lang/String;
    :cond_1c
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v14, v0, :cond_1d

    .line 498
    const-string/jumbo v35, "emailAddress"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v30, v14

    .line 500
    :cond_1d
    if-ltz v15, :cond_1e

    .line 501
    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v30, v15

    .line 504
    :cond_1e
    const/16 v35, -0x1

    move/from16 v0, v22

    move/from16 v1, v35

    if-eq v0, v1, :cond_1f

    .line 505
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v30, v22

    .line 507
    :cond_1f
    new-instance v35, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalSortKey;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v30 .. v30}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    add-int/lit8 v21, v21, 0x1

    .line 510
    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 413
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 512
    .end local v4    # "alternateDisplayName":Ljava/lang/String;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v16    # "firstName":Ljava/lang/String;
    .end local v17    # "galDataRow":Lcom/kingsoft/exchange/provider/GalResult$GalData;
    .end local v23    # "lastName":Ljava/lang/String;
    .end local v28    # "phones":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;>;"
    .end local v31    # "sortName":Ljava/lang/String;
    :cond_21
    new-instance v10, Landroid/database/MatrixCursor;

    invoke-virtual/range {v32 .. v32}, Ljava/util/TreeMap;->size()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-direct {v10, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 513
    .local v10, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual/range {v32 .. v32}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_22

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Ljava/lang/Object;

    .line 514
    .local v29, "result":[Ljava/lang/Object;
    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7

    .line 517
    .end local v29    # "result":[Ljava/lang/Object;
    :cond_22
    return-object v10
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    .line 191
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 192
    .local v8, "accountId":Ljava/lang/Long;
    if-nez v8, :cond_0

    .line 193
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "emailAddress=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    .line 196
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 528
    sget-object v1, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 529
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 533
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 531
    :pswitch_0
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 44
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string/jumbo v10, "Exchange"

    const-string/jumbo v11, "ExchangeDirectoryProvider: query: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    sget-object v10, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v40

    .line 213
    .local v40, "match":I
    packed-switch v40, :pswitch_data_0

    .line 346
    :goto_0
    const/4 v4, 0x0

    :cond_0
    :goto_1
    return-object v4

    .line 216
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string/jumbo v11, "com.android.exchange"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v22

    .line 218
    .local v22, "accounts":[Landroid/accounts/Account;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 219
    .local v4, "cursor":Landroid/database/MatrixCursor;
    if-eqz v22, :cond_0

    .line 220
    move-object/from16 v23, v22

    .local v23, "arr$":[Landroid/accounts/Account;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v35, 0x0

    .local v35, "i$":I
    :goto_2
    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    aget-object v18, v23, v35

    .line 221
    .local v18, "account":Landroid/accounts/Account;
    move-object/from16 v0, p2

    array-length v10, v0

    new-array v0, v10, [Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 223
    .local v43, "row":[Ljava/lang/Object;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_3
    move-object/from16 v0, p2

    array-length v10, v0

    move/from16 v0, v34

    if-ge v0, v10, :cond_9

    .line 224
    aget-object v28, p2, v34

    .line 225
    .local v28, "column":Ljava/lang/String;
    const-string/jumbo v10, "accountName"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 226
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v43, v34

    .line 223
    :cond_1
    :goto_4
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 227
    :cond_2
    const-string/jumbo v10, "accountType"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 228
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v10, v43, v34

    goto :goto_4

    .line 229
    :cond_3
    const-string/jumbo v10, "typeResourceId"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 230
    const-string/jumbo v21, "com.android.exchange"

    .line 231
    .local v21, "accountType":Ljava/lang/String;
    new-instance v10, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    const-string/jumbo v11, "com.android.exchange"

    invoke-virtual {v10, v11}, Lcom/android/emailcommon/service/AccountServiceProxy;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v25

    .line 234
    .local v25, "bundle":Landroid/os/Bundle;
    const v30, 0x7f1001a8

    .line 235
    .local v30, "exchangeName":I
    if-eqz v25, :cond_4

    const-string/jumbo v10, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    const/4 v11, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_4

    .line 238
    const v30, 0x7f1001a7

    .line 240
    :cond_4
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v43, v34

    goto :goto_4

    .line 241
    .end local v21    # "accountType":Ljava/lang/String;
    .end local v25    # "bundle":Landroid/os/Bundle;
    .end local v30    # "exchangeName":I
    :cond_5
    const-string/jumbo v10, "displayName"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 244
    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 245
    .local v8, "accountName":Ljava/lang/String;
    const/16 v10, 0x40

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    .line 246
    .local v24, "atIndex":I
    const/4 v10, -0x1

    move/from16 v0, v24

    if-eq v0, v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    move/from16 v0, v24

    if-ge v0, v10, :cond_6

    .line 247
    add-int/lit8 v10, v24, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v32

    .line 249
    .local v32, "firstLetter":C
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v24, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v43, v34

    goto/16 :goto_4

    .line 251
    .end local v32    # "firstLetter":C
    :cond_6
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v43, v34

    goto/16 :goto_4

    .line 253
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v24    # "atIndex":I
    :cond_7
    const-string/jumbo v10, "exportSupport"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 254
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v43, v34

    goto/16 :goto_4

    .line 255
    :cond_8
    const-string/jumbo v10, "shortcutSupport"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 256
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v43, v34

    goto/16 :goto_4

    .line 259
    .end local v28    # "column":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 220
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_2

    .line 268
    .end local v4    # "cursor":Landroid/database/MatrixCursor;
    .end local v18    # "account":Landroid/accounts/Account;
    .end local v22    # "accounts":[Landroid/accounts/Account;
    .end local v23    # "arr$":[Landroid/accounts/Account;
    .end local v34    # "i":I
    .end local v35    # "i$":I
    .end local v36    # "len$":I
    .end local v43    # "row":[Ljava/lang/Object;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v31

    .line 270
    .local v31, "filter":Ljava/lang/String;
    if-eqz v31, :cond_a

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_b

    .line 271
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 274
    :cond_b
    const-string/jumbo v10, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    .restart local v8    # "accountName":Ljava/lang/String;
    if-nez v8, :cond_c

    .line 276
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 280
    :cond_c
    const-string/jumbo v10, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 281
    .local v38, "limitString":Ljava/lang/String;
    const/16 v37, 0x14

    .line 282
    .local v37, "limit":I
    if-eqz v38, :cond_d

    .line 284
    :try_start_0
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v37

    .line 288
    :goto_5
    if-gtz v37, :cond_d

    .line 289
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Limit not valid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 285
    :catch_0
    move-exception v29

    .line 286
    .local v29, "e":Ljava/lang/NumberFormatException;
    const/16 v37, 0x0

    goto :goto_5

    .line 293
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 296
    .local v26, "callingId":J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v19

    .line 297
    .local v19, "accountId":J
    const-wide/16 v10, -0x1

    cmp-long v10, v19, v10

    if-nez v10, :cond_e

    .line 299
    const/4 v4, 0x0

    .line 310
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 303
    :cond_e
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move-wide/from16 v0, v19

    move-object/from16 v2, v31

    move/from16 v3, v37

    invoke-static {v10, v0, v1, v2, v3}, Lcom/kingsoft/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/kingsoft/exchange/provider/GalResult;

    move-result-object v33

    .line 305
    .local v33, "galResult":Lcom/kingsoft/exchange/provider/GalResult;
    if-eqz v33, :cond_10

    .line 306
    const/4 v10, 0x5

    move/from16 v0, v40

    if-ne v0, v10, :cond_f

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v33

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/kingsoft/exchange/provider/GalResult;ZLjava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 310
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 306
    :cond_f
    const/4 v10, 0x0

    goto :goto_6

    .line 310
    :cond_10
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v19    # "accountId":J
    .end local v33    # "galResult":Lcom/kingsoft/exchange/provider/GalResult;
    :catchall_0
    move-exception v10

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 317
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v26    # "callingId":J
    .end local v31    # "filter":Ljava/lang/String;
    .end local v37    # "limit":I
    .end local v38    # "limitString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v10, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .restart local v8    # "accountName":Ljava/lang/String;
    if-nez v8, :cond_11

    .line 319
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 322
    :cond_11
    new-instance v5, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;-><init>([Ljava/lang/String;)V

    .line 323
    .local v5, "galProjection":Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 325
    .restart local v4    # "cursor":Landroid/database/MatrixCursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v41

    .line 326
    .local v41, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x2

    move-object/from16 v0, v41

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 327
    .local v39, "lookupKey":Ljava/lang/String;
    const/4 v10, 0x3

    move/from16 v0, v40

    if-ne v0, v10, :cond_12

    const/4 v10, 0x3

    move-object/from16 v0, v41

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 330
    .local v6, "contactId":J
    :goto_7
    new-instance v42, Lcom/kingsoft/emailcommon/mail/PackedString;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 331
    .local v42, "ps":Lcom/kingsoft/emailcommon/mail/PackedString;
    const-string/jumbo v10, "displayName"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "displayName":Ljava/lang/String;
    const-string/jumbo v10, "emailAddress"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addEmailAddress(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/16 v16, 0x1

    const-string/jumbo v10, "homePhone"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v4

    move-object v11, v5

    move-wide v12, v6

    move-object v14, v9

    move-object v15, v9

    invoke-static/range {v10 .. v17}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    const/16 v16, 0x3

    const-string/jumbo v10, "workPhone"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v4

    move-object v11, v5

    move-wide v12, v6

    move-object v14, v9

    move-object v15, v9

    invoke-static/range {v10 .. v17}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    const/16 v16, 0x2

    const-string/jumbo v10, "mobilePhone"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v10, v4

    move-object v11, v5

    move-wide v12, v6

    move-object v14, v9

    move-object v15, v9

    invoke-static/range {v10 .. v17}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    const-string/jumbo v10, "firstName"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v10, "lastName"

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/kingsoft/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    move-object v11, v5

    move-wide v12, v6

    move-object v14, v9

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addNameRow(Landroid/database/MatrixCursor;Lcom/kingsoft/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 327
    .end local v6    # "contactId":J
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v42    # "ps":Lcom/kingsoft/emailcommon/mail/PackedString;
    :cond_12
    const-wide/16 v6, 0x1

    goto :goto_7

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 548
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
