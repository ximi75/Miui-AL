.class public Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.super Lcom/kingsoft/exchange/adapter/AbstractSyncParser;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ImRow;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasChildren;,
        Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ServerChange;
    }
.end annotation


# static fields
.field private static final CLIENT_ID_SELECTION:Ljava/lang/String; = "sync1=?"

.field private static final COMMON_DATA_ROW:Ljava/lang/String; = "data1"

.field private static final COMMON_TYPE_ROW:Ljava/lang/String; = "data2"

.field private static final EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOUND_DATA_ROW:Ljava/lang/String; = "com.android.exchange.FOUND_ROW"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MAX_EMAIL_ROWS:I = 0x3

.field private static final MAX_IM_ROWS:I = 0x3

.field private static final MAX_PHONE_ROWS:I = 0x2

.field private static final SERVER_ID_SELECTION:Ljava/lang/String; = "sourceid=?"

.field private static final TAG:Ljava/lang/String; = "Exchange"


# instance fields
.field private final mAccountManagerAccount:Landroid/accounts/Account;

.field private final mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field private mGroupsUsed:Z

.field ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/accounts/Account;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p6, "accountManagerAccount"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/kingsoft/exchange/adapter/AbstractSyncParser;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/io/InputStream;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;)V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    invoke-direct {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mGroupsUsed:Z

    .line 63
    iput-object p6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 64
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 66
    return-void
.end method

.method static synthetic access$300(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 657
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

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "body":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 414
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 419
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 416
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 417
    goto :goto_0

    .line 422
    :cond_0
    return-object v0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;Landroid/content/Entity;)V
    .locals 2
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;
    .param p2, "entity"    # Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    :goto_0
    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 387
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 392
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 389
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addGroup(Landroid/content/Entity;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_0
    return-void

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method private childrenParser(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 399
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 406
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 401
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_1
    return-void

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method public static dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .locals 5
    .param p0, "ncv"    # Landroid/content/Entity$NamedContentValues;

    .prologue
    .line 668
    iget-object v3, p0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 669
    .local v1, "id":J
    iget-object v3, p0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 670
    .local v0, "dataUri":Landroid/net/Uri;
    return-object v0
.end method

.method public static generateNewContactServerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mailboxServerId"    # Ljava/lang/String;
    .param p1, "originServerId"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    .end local p1    # "originServerId":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 84
    .restart local p1    # "originServerId":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "newServerId":Ljava/lang/String;
    move-object p1, v0

    .line 85
    goto :goto_0
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 450
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sync1=?"

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->generateNewContactServerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 443
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 444
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    sget-object v2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "sourceid=?"

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static restoreMailboxServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "contactServerId"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    .end local p0    # "contactServerId":Ljava/lang/String;
    .local v0, "pos":I
    :goto_0
    return-object p0

    .line 111
    .end local v0    # "pos":I
    .restart local p0    # "contactServerId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 112
    .restart local v0    # "pos":I
    if-lez v0, :cond_1

    .line 113
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static restoreOriginalContactServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "newServerId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    .end local p0    # "newServerId":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 97
    .restart local p0    # "newServerId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "pos":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 649
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


# virtual methods
.method public addData(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;Landroid/content/Entity;)V
    .locals 42
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "ops"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;
    .param p3, "entity"    # Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v5, 0x0

    .line 121
    .local v5, "prefix":Ljava/lang/String;
    const/4 v6, 0x0

    .line 122
    .local v6, "firstName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 123
    .local v7, "lastName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 124
    .local v8, "middleName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 125
    .local v9, "suffix":Ljava/lang/String;
    const/16 v25, 0x0

    .line 126
    .local v25, "companyName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 127
    .local v10, "yomiFirstName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 128
    .local v11, "yomiLastName":Ljava/lang/String;
    const/16 v41, 0x0

    .line 129
    .local v41, "yomiCompanyName":Ljava/lang/String;
    const/16 v37, 0x0

    .line 130
    .local v37, "title":Ljava/lang/String;
    const/16 v26, 0x0

    .line 131
    .local v26, "department":Ljava/lang/String;
    const/16 v34, 0x0

    .line 132
    .local v34, "officeLocation":Ljava/lang/String;
    new-instance v27, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;

    invoke-direct/range {v27 .. v27}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;-><init>()V

    .line 133
    .local v27, "home":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;
    new-instance v39, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;

    invoke-direct/range {v39 .. v39}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;-><init>()V

    .line 134
    .local v39, "work":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;
    new-instance v35, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;

    invoke-direct/range {v35 .. v35}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;-><init>()V

    .line 135
    .local v35, "other":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;
    new-instance v23, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;

    invoke-direct/range {v23 .. v23}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;-><init>()V

    .line 136
    .local v23, "business":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;
    new-instance v36, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;

    invoke-direct/range {v36 .. v36}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;-><init>()V

    .line 137
    .local v36, "personal":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v24, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v14, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v30, "ims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v28, "homePhones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;>;"
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v40, "workPhones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;>;"
    if-nez p3, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->generateNewContactServerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 144
    .local v33, "newServerId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->newContact(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v33    # "newServerId":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v3, 0x1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    sparse-switch v3, :sswitch_data_0

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 150
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 151
    goto :goto_0

    .line 153
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 154
    goto :goto_0

    .line 156
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 157
    goto :goto_0

    .line 159
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 160
    goto :goto_0

    .line 162
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 163
    goto :goto_0

    .line 165
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v37

    .line 166
    goto :goto_0

    .line 170
    :sswitch_6
    new-instance v3, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EmailRow;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :sswitch_7
    new-instance v3, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x3

    invoke-direct {v3, v4, v12}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :sswitch_8
    const/16 v3, 0x14

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto :goto_0

    .line 180
    :sswitch_9
    const/4 v3, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto :goto_0

    .line 183
    :sswitch_a
    const/16 v3, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto :goto_0

    .line 186
    :sswitch_b
    const/4 v3, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :sswitch_c
    new-instance v3, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    invoke-direct {v3, v4, v12}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$PhoneRow;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 193
    :sswitch_d
    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :sswitch_e
    const/16 v3, 0x9

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :sswitch_f
    const/16 v3, 0xe

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :sswitch_10
    const/4 v3, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :sswitch_11
    const/16 v3, 0x13

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :sswitch_12
    new-instance v3, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ImRow;

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ImRow;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 219
    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 222
    :sswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 231
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 234
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 237
    :sswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 240
    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 243
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    :sswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 249
    :sswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 252
    :sswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 255
    :sswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 259
    :sswitch_22
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->childrenParser(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 263
    :sswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v41

    .line 264
    goto/16 :goto_0

    .line 266
    :sswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 267
    goto/16 :goto_0

    .line 269
    :sswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 270
    goto/16 :goto_0

    .line 273
    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addNickname(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :sswitch_27
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :sswitch_28
    const/4 v3, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :sswitch_29
    const/16 v3, 0xe

    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :sswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v26

    .line 287
    goto/16 :goto_0

    .line 289
    :sswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 290
    goto/16 :goto_0

    .line 294
    :sswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v34

    .line 295
    goto/16 :goto_0

    .line 297
    :sswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->customerId:Ljava/lang/String;

    goto/16 :goto_0

    .line 300
    :sswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->governmentId:Ljava/lang/String;

    goto/16 :goto_0

    .line 303
    :sswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->accountName:Ljava/lang/String;

    goto/16 :goto_0

    .line 308
    :sswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    iput-object v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->anniversary:Ljava/lang/String;

    goto/16 :goto_0

    .line 311
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addBirthday(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    :sswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addWebpage(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :sswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPhoto(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :sswitch_34
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :sswitch_35
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :sswitch_36
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mGroupsUsed:Z

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->categoriesParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;Landroid/content/Entity;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 338
    invoke-virtual/range {v3 .. v11}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addBusiness(Landroid/content/Entity;Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;)V

    .line 341
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPersonal(Landroid/content/Entity;Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;)V

    .line 343
    const-string/jumbo v15, "vnd.android.cursor.item/email_v2"

    const/16 v16, -0x1

    const/16 v17, 0x3

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v12 .. v17}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 344
    const-string/jumbo v18, "vnd.android.cursor.item/im"

    const/16 v19, -0x1

    const/16 v20, 0x3

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, v30

    invoke-virtual/range {v15 .. v20}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 345
    const-string/jumbo v18, "vnd.android.cursor.item/phone_v2"

    const/16 v19, 0x1

    const/16 v20, 0x2

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, v28

    invoke-virtual/range {v15 .. v20}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 347
    const-string/jumbo v18, "vnd.android.cursor.item/phone_v2"

    const/16 v19, 0x3

    const/16 v20, 0x2

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, v40

    invoke-virtual/range {v15 .. v20}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 350
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 351
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V

    .line 354
    :cond_2
    invoke-virtual/range {v39 .. v39}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->hasData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    const/16 v17, 0x2

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->street:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->city:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->state:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->country:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->code:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v15 .. v22}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_3
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->hasData()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    const/16 v17, 0x1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->street:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->city:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->state:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->country:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->code:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v15 .. v22}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_4
    invoke-virtual/range {v35 .. v35}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->hasData()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 363
    const/16 v17, 0x3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->street:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->city:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->state:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->country:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$Address;->code:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v15 .. v22}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_5
    if-eqz v25, :cond_6

    .line 368
    const/16 v17, 0x1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v18, v25

    move-object/from16 v19, v37

    move-object/from16 v20, v26

    move-object/from16 v21, v41

    move-object/from16 v22, v34

    invoke-virtual/range {v15 .. v22}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_6
    if-eqz p3, :cond_7

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v32

    .line 376
    .local v32, "ncvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Entity$NamedContentValues;

    .line 378
    .local v31, "ncv":Landroid/content/Entity$NamedContentValues;
    invoke-static/range {v31 .. v31}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v38

    .line 379
    .local v38, "u":Landroid/net/Uri;
    invoke-static/range {v38 .. v38}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 383
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v31    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v32    # "ncvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v38    # "u":Landroid/net/Uri;
    :cond_7
    return-void

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_30
        0x46 -> :sswitch_27
        0x47 -> :sswitch_11
        0x48 -> :sswitch_31
        0x49 -> :sswitch_35
        0x4c -> :sswitch_7
        0x4d -> :sswitch_13
        0x4e -> :sswitch_14
        0x4f -> :sswitch_15
        0x50 -> :sswitch_16
        0x51 -> :sswitch_17
        0x52 -> :sswitch_9
        0x53 -> :sswitch_7
        0x54 -> :sswitch_e
        0x55 -> :sswitch_36
        0x57 -> :sswitch_22
        0x59 -> :sswitch_4
        0x5a -> :sswitch_2a
        0x5b -> :sswitch_6
        0x5c -> :sswitch_6
        0x5d -> :sswitch_6
        0x5f -> :sswitch_0
        0x60 -> :sswitch_c
        0x61 -> :sswitch_18
        0x62 -> :sswitch_19
        0x63 -> :sswitch_1a
        0x64 -> :sswitch_1b
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_5
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_d
        0x6c -> :sswitch_2c
        0x6d -> :sswitch_1d
        0x6e -> :sswitch_1e
        0x6f -> :sswitch_1f
        0x70 -> :sswitch_20
        0x71 -> :sswitch_21
        0x72 -> :sswitch_10
        0x73 -> :sswitch_f
        0x74 -> :sswitch_29
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2b
        0x77 -> :sswitch_32
        0x78 -> :sswitch_23
        0x79 -> :sswitch_24
        0x7a -> :sswitch_25
        0x7c -> :sswitch_33
        0x305 -> :sswitch_2d
        0x306 -> :sswitch_2e
        0x307 -> :sswitch_12
        0x308 -> :sswitch_12
        0x309 -> :sswitch_12
        0x30a -> :sswitch_28
        0x30b -> :sswitch_a
        0x30c -> :sswitch_2f
        0x30d -> :sswitch_26
        0x30e -> :sswitch_8
        0x44a -> :sswitch_34
    .end sparse-switch
.end method

.method public addParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)V
    .locals 3
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "serverId":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 428
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 436
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 430
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 431
    goto :goto_0

    .line 433
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addData(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;Landroid/content/Entity;)V

    goto :goto_0

    .line 439
    :cond_0
    return-void

    .line 428
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, "serverId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 574
    .local v1, "clientId":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v2, "cv":Landroid/content/ContentValues;
    :goto_0
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 576
    iget v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    packed-switch v4, :pswitch_data_0

    .line 587
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 578
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 579
    goto :goto_0

    .line 581
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 582
    goto :goto_0

    .line 584
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 592
    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    .line 612
    :cond_1
    :goto_1
    return-void

    .line 594
    :cond_2
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->generateNewContactServerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 598
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 599
    const-string/jumbo v4, "sourceid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 607
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New contact "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " was given serverId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)V
    .locals 12
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v11, 0x0

    .line 493
    .local v11, "serverId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 494
    .local v8, "entity":Landroid/content/Entity;
    :cond_0
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 495
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 526
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 497
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 498
    invoke-direct {p0, v11}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 500
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 504
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "entity"

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 506
    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v9

    .line 508
    .local v9, "entityIterator":Landroid/content/EntityIterator;
    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/Entity;

    move-object v8, v0

    .line 511
    :cond_1
    invoke-interface {v9}, Landroid/content/EntityIterator;->close()V

    .line 512
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Changing contact "

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v11, v1, v3

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v9    # "entityIterator":Landroid/content/EntityIterator;
    :cond_2
    if-eqz v7, :cond_0

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 514
    :catch_0
    move-exception v10

    .line 515
    .local v10, "ie":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v1, "Exchange"

    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    if-eqz v7, :cond_0

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 517
    .end local v10    # "ie":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 523
    .end local v7    # "c":Landroid/database/Cursor;
    :sswitch_1
    invoke-virtual {p0, v11, p1, v8}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addData(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;Landroid/content/Entity;)V

    goto/16 :goto_0

    .line 529
    :cond_4
    return-void

    .line 495
    nop

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
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "serverId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 617
    .local v1, "status":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 618
    iget v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 626
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 620
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 621
    goto :goto_0

    .line 623
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 624
    goto :goto_0

    .line 629
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 630
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Changed contact "

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

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 632
    :cond_1
    return-void

    .line 618
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
    .line 533
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 534
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)V

    goto :goto_0

    .line 536
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->deleteParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)V

    goto :goto_0

    .line 538
    :cond_1
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 539
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->changeParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)V

    goto :goto_0

    .line 541
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 543
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 548
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "Contacts SyncKey saved as: "

    aput-object v7, v6, v10

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 549
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    sget-object v7, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v9, v9, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 553
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    iget-object v7, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->execute(Landroid/content/Context;)V

    .line 555
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    # getter for: Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->access$000(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 556
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "dirty"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    # getter for: Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexCount:I
    invoke-static {v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->access$100(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 559
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    # getter for: Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexArray:[I
    invoke-static {v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->access$200(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)[I

    move-result-object v6

    aget v3, v6, v1

    .line 560
    .local v3, "index":I
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    # getter for: Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->access$000(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->ops:Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    # getter for: Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    invoke-static {v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->access$000(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    aget-object v6, v6, v3

    iget-object v4, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 561
    .local v4, "u":Landroid/net/Uri;
    :goto_1
    if-eqz v4, :cond_0

    .line 562
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "idString":Ljava/lang/String;
    iget-object v6, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v0, v8, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    .end local v2    # "idString":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "u":Landroid/net/Uri;
    :cond_1
    move-object v4, v5

    .line 560
    goto :goto_1

    .line 569
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "i":I
    .end local v3    # "index":I
    :cond_2
    return-void
.end method

.method public deleteParser(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)V
    .locals 5
    .param p1, "ops"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 456
    iget v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 471
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 458
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "serverId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 462
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 464
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 474
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_1
    return-void

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public isGroupsUsed()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mGroupsUsed:Z

    return v0
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 639
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 641
    :cond_0
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 646
    :cond_2
    return-void
.end method

.method protected wipe()V
    .locals 6

    .prologue
    .line 1349
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Wiping contacts for account %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1350
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 1352
    return-void
.end method
