.class public Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;
.super Landroid/widget/CursorAdapter;
.source "RecipientAlternatesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;,
        Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;
    }
.end annotation


# static fields
.field static final MAX_LOOKUPS:I = 0x32

.field public static final QUERY_TYPE_EMAIL:I = 0x0

.field public static final QUERY_TYPE_PHONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecipAlternates"


# instance fields
.field private mCheckedItemChangedListener:Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

.field private mCheckedItemPosition:I

.field private final mCurrentId:J

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mQuery:Lcom/kingsoft/ex/chips/Queries$Query;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJILcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "currentId"    # J
    .param p6, "queryMode"    # I
    .param p7, "listener"    # Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-static {p1, p2, p3, p6}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getCursorForConstruction(Landroid/content/Context;JI)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 340
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 341
    iput-wide p4, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    .line 342
    iput-object p7, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .line 344
    if-nez p6, :cond_0

    .line 345
    sget-object v0, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    .line 352
    :goto_0
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    .line 347
    sget-object v0, Lcom/kingsoft/ex/chips/Queries;->PHONE:Lcom/kingsoft/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    goto :goto_0

    .line 349
    :cond_1
    sget-object v0, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    iput-object v0, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    .line 350
    const-string/jumbo v0, "RecipAlternates"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;JJLcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "currentId"    # J
    .param p6, "listener"    # Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    .prologue
    .line 334
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;-><init>(Landroid/content/Context;JJILcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;)V

    .line 335
    return-void
.end method

.method private static doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;Landroid/accounts/Account;Landroid/content/ContentResolver;Lcom/kingsoft/ex/chips/Queries$Query;)Landroid/database/Cursor;
    .locals 8
    .param p0, "constraint"    # Ljava/lang/CharSequence;
    .param p1, "limit"    # I
    .param p2, "directoryId"    # Ljava/lang/Long;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "resolver"    # Landroid/content/ContentResolver;
    .param p5, "query"    # Lcom/kingsoft/ex/chips/Queries$Query;

    .prologue
    const/4 v3, 0x0

    .line 313
    invoke-virtual {p5}, Lcom/kingsoft/ex/chips/Queries$Query;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    add-int/lit8 v2, p1, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 319
    .local v6, "builder":Landroid/net/Uri$Builder;
    if-eqz p2, :cond_0

    .line 320
    const-string/jumbo v0, "directory"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 323
    :cond_0
    if-eqz p3, :cond_1

    .line 324
    const-string/jumbo v0, "name_for_primary_account"

    iget-object v1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 325
    const-string/jumbo v0, "type_for_primary_account"

    iget-object v1, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 327
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p5}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v0, p4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 329
    .local v7, "cursor":Landroid/database/Cursor;
    return-object v7
.end method

.method static getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 2
    .param p0, "entry1"    # Lcom/kingsoft/ex/chips/RecipientEntry;
    .param p1, "entry2"    # Lcom/kingsoft/ex/chips/RecipientEntry;

    .prologue
    .line 266
    if-nez p1, :cond_1

    move-object p1, p0

    .line 308
    .end local p1    # "entry2":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_0
    :goto_0
    return-object p1

    .line 270
    .restart local p1    # "entry2":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_1
    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p0

    .line 277
    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :cond_3
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p1, p0

    .line 288
    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-nez v0, :cond_7

    move-object p1, p0

    .line 299
    goto :goto_0

    .line 302
    :cond_7
    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0
.end method

.method private static getCursorForConstruction(Landroid/content/Context;JI)Landroid/database/Cursor;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J
    .param p3, "queryType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 356
    if-nez p3, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {v1}, Lcom/kingsoft/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {v4}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 371
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-static {v6}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 364
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/ex/chips/Queries;->PHONE:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {v1}, Lcom/kingsoft/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/ex/chips/Queries;->PHONE:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {v2}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingsoft/ex/chips/Queries;->PHONE:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {v4}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " =?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;ILandroid/accounts/Account;Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adapter"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p3, "addressType"    # I
    .param p4, "account"    # Landroid/accounts/Account;
    .param p5, "callback"    # Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/ex/chips/BaseRecipientAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/accounts/Account;",
            "Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "inAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    .line 98
    sget-object v27, Lcom/kingsoft/ex/chips/Queries;->EMAIL:Lcom/kingsoft/ex/chips/Queries$Query;

    .line 102
    .local v27, "query":Lcom/kingsoft/ex/chips/Queries$Query;
    :goto_0
    const/16 v3, 0x32

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 103
    .local v16, "addressesSize":I
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v15, "addresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v17, "bindString":Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 107
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v29

    .line 108
    .local v29, "tokens":[Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v29

    array-length v3, v0

    if-lez v3, :cond_2

    const/4 v3, 0x0

    aget-object v3, v29, v3

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    const-string/jumbo v3, "?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v3, v16, -0x1

    move/from16 v0, v22

    if-ge v0, v3, :cond_0

    .line 111
    const-string/jumbo v3, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 100
    .end local v15    # "addresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "addressesSize":I
    .end local v17    # "bindString":Ljava/lang/StringBuilder;
    .end local v22    # "i":I
    .end local v27    # "query":Lcom/kingsoft/ex/chips/Queries$Query;
    .end local v29    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    sget-object v27, Lcom/kingsoft/ex/chips/Queries;->PHONE:Lcom/kingsoft/ex/chips/Queries$Query;

    .restart local v27    # "query":Lcom/kingsoft/ex/chips/Queries$Query;
    goto :goto_0

    .line 108
    .restart local v15    # "addresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "addressesSize":I
    .restart local v17    # "bindString":Ljava/lang/StringBuilder;
    .restart local v22    # "i":I
    .restart local v29    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 119
    .end local v29    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_3
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    .line 120
    .local v7, "addressArray":[Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    const/16 v28, 0x0

    .line 122
    .local v28, "recipientEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    const/16 v18, 0x0

    .line 125
    .local v18, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " IN ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 130
    invoke-static/range {v18 .. v18}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->processContactEntries(Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v28

    .line 131
    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesFound(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v18, :cond_4

    .line 134
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_4
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v25, "matchesNotFound":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 142
    const/16 v20, 0x0

    .line 144
    .local v20, "directoryCursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v10, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    .line 146
    if-nez v20, :cond_8

    .line 147
    const/16 v26, 0x0

    .line 153
    .local v26, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :goto_3
    if-eqz v20, :cond_5

    .line 154
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_5
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 159
    .local v30, "unresolvedAddresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 160
    .local v14, "address":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 161
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 133
    .end local v14    # "address":Ljava/lang/String;
    .end local v20    # "directoryCursor":Landroid/database/Cursor;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "matchesNotFound":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    .end local v30    # "unresolvedAddresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_7

    .line 134
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    .line 149
    .restart local v20    # "directoryCursor":Landroid/database/Cursor;
    .restart local v25    # "matchesNotFound":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v26

    .restart local v26    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    goto :goto_3

    .line 153
    .end local v26    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    :catchall_1
    move-exception v3

    if-eqz v20, :cond_9

    .line 154
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    .line 165
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v26    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    .restart local v30    # "unresolvedAddresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    if-eqz v26, :cond_e

    .line 168
    const/16 v19, 0x0

    .line 169
    .local v19, "directoryContactsCursor":Landroid/database/Cursor;
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 170
    .local v8, "unresolvedAddress":Ljava/lang/String;
    const/16 v22, 0x0

    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_c

    .line 172
    const/4 v9, 0x1

    :try_start_3
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v3, v3, Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v11, p4

    move-object/from16 v13, v27

    invoke-static/range {v8 .. v13}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;Landroid/accounts/Account;Landroid/content/ContentResolver;Lcom/kingsoft/ex/chips/Queries$Query;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v19

    .line 176
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_c

    .line 178
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 179
    const/16 v19, 0x0

    .line 170
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 176
    :catchall_2
    move-exception v3

    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_c

    .line 178
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 179
    const/16 v19, 0x0

    throw v3

    .line 185
    :cond_c
    if-eqz v19, :cond_b

    .line 187
    :try_start_4
    invoke-static/range {v19 .. v19}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->processContactEntries(Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v21

    .line 190
    .local v21, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 191
    .restart local v14    # "address":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    .line 196
    .end local v14    # "address":Ljava/lang/String;
    .end local v21    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .end local v24    # "i$":Ljava/util/Iterator;
    :catchall_3
    move-exception v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v3

    .line 194
    .restart local v21    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_d
    :try_start_5
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesFound(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 196
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 206
    .end local v8    # "unresolvedAddress":Ljava/lang/String;
    .end local v19    # "directoryContactsCursor":Landroid/database/Cursor;
    .end local v20    # "directoryCursor":Landroid/database/Cursor;
    .end local v21    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v26    # "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/BaseRecipientAdapter$DirectorySearchParams;>;"
    .end local v30    # "unresolvedAddresses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_e
    if-eqz p1, :cond_f

    .line 207
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;->getMatchingRecipients(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v21

    .line 209
    .restart local v21    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    if-eqz v21, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 210
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesFound(Ljava/util/Map;)V

    .line 211
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 212
    .restart local v14    # "address":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 216
    .end local v14    # "address":Ljava/lang/String;
    .end local v21    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesNotFound(Ljava/util/Set;)V

    .line 217
    return-void
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adapter"    # Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "callback"    # Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/ex/chips/BaseRecipientAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/accounts/Account;",
            "Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "inAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Lcom/kingsoft/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;ILandroid/accounts/Account;Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 81
    return-void
.end method

.method private newView()Landroid/view/View;
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static processContactEntries(Landroid/database/Cursor;)Ljava/util/HashMap;
    .locals 17
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v15, "recipientEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    if-eqz p0, :cond_2

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, "address":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v14

    .line 242
    .local v14, "newRecipientEntry":Lcom/kingsoft/ex/chips/RecipientEntry;
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/ex/chips/RecipientEntry;

    invoke-static {v1, v14}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/kingsoft/ex/chips/RecipientEntry;Lcom/kingsoft/ex/chips/RecipientEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v16

    .line 245
    .local v16, "recipientEntry":Lcom/kingsoft/ex/chips/RecipientEntry;
    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v1, "RecipAlternates"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    const-string/jumbo v1, "RecipAlternates"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received reverse look up information for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " RESULTS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CONTACT ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ADDRESS :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    .end local v13    # "address":Ljava/lang/String;
    .end local v14    # "newRecipientEntry":Lcom/kingsoft/ex/chips/RecipientEntry;
    .end local v16    # "recipientEntry":Lcom/kingsoft/ex/chips/RecipientEntry;
    :cond_2
    return-object v15
.end method

.method static removeDuplicateDestinations(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .param p0, "original"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 387
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 389
    .local v2, "result":Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v1, "destinationsSeen":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, -0x1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 392
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "destination":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 411
    .end local v0    # "destination":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 459
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 461
    .local v5, "position":I
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 462
    .local v2, "display":Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 463
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v5}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v3

    .line 464
    .local v3, "entry":Lcom/kingsoft/ex/chips/RecipientEntry;
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 465
    .local v0, "destination":Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    if-nez v5, :cond_1

    .line 467
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    invoke-virtual {v3}, Lcom/kingsoft/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 472
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    :goto_0
    const v6, 0x1020015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 479
    .local v1, "destinationType":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 480
    iget-object v6, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mQuery:Lcom/kingsoft/ex/chips/Queries$Query;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/kingsoft/ex/chips/Queries$Query;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_0
    return-void

    .line 474
    .end local v1    # "destinationType":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 417
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 420
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public getRecipientEntry(I)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 425
    .local v12, "c":Landroid/database/Cursor;
    invoke-interface {v12, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 426
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x5

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x6

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 442
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 443
    if-nez p2, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object p2

    .line 446
    :cond_0
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 447
    iput p1, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 448
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    iget v2, p0, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    invoke-interface {v1, v2}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;->onCheckedItemChanged(I)V

    .line 452
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 453
    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/kingsoft/ex/chips/RecipientAlternatesAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
