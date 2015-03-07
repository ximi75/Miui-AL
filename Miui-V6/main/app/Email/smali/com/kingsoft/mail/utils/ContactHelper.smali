.class public Lcom/kingsoft/mail/utils/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;
    }
.end annotation


# static fields
.field private static final CACHE_COUNT_PER_ACCOUNT:I = 0x5dc

.field public static final CONTACT_TABLE:Ljava/lang/String; = "contact_table"

.field private static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMAIL_URI:Landroid/net/Uri;

.field private static final MERGED_ACCOUNT_EMAIL:Ljava/lang/String; = "merged_account"

.field private static final NN_LEV_1:I = 0x1

.field private static final NN_LEV_2:I = 0x2

.field private static final NN_LEV_3:I = 0x3

.field private static final NN_LEV_4:I = 0x4

.field private static cachedAccount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static displayNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContexttx:Landroid/content/Context;

.field private static mCrowdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/provider/CrowdSourcingObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "[^\\s@]+@([^\\s@\\.]+\\.)+[a-zA-z][a-zA-Z][a-zA-Z]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 62
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->EMAIL_URI:Landroid/net/Uri;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->mCrowdMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->cachedAccount:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object p1, Lcom/kingsoft/mail/utils/ContactHelper;->mContexttx:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    return-object v0
.end method

.method public static checkoutChenBoStyle(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 657
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 658
    const-string/jumbo p0, ""

    .line 685
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 661
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 670
    move-object v0, p0

    .line 672
    .local v0, "bac":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 673
    .local v2, "i":I
    const-string/jumbo v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 674
    .local v3, "j":I
    const/4 v4, -0x1

    if-le v2, v4, :cond_2

    if-le v3, v6, :cond_2

    add-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_2

    .line 675
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 676
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 677
    .local v1, "f":C
    if-le v1, v6, :cond_2

    const/16 v4, 0x80

    if-ge v1, v4, :cond_2

    .line 679
    move-object v0, p0

    .end local v1    # "f":C
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    :goto_1
    move-object p0, v0

    .line 685
    goto :goto_0

    .line 663
    .end local v0    # "bac":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v4, "["

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 664
    .restart local v2    # "i":I
    if-lez v2, :cond_0

    .line 665
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 682
    .end local v2    # "i":I
    .restart local v0    # "bac":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteAccountAndContacts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "accountEmail"    # Ljava/lang/String;

    .prologue
    .line 541
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 544
    .local v0, "deleteAccountOp":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v4, "email=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 546
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v4, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 549
    .local v1, "deleteContactsOp":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v4, "myemail=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 551
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "com.android.provider.contact"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    .end local v0    # "deleteAccountOp":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "deleteContactsOp":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 560
    .local v2, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fillCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "myEmail"    # Ljava/lang/String;

    .prologue
    .line 81
    const/16 v0, 0x5dc

    invoke-static {p0, p1, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->fillCache(Landroid/content/Context;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public static fillCache(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "merged_account"

    .line 86
    .local v0, "myEmail":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->cachedAccount:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :goto_1
    return-void

    .end local v0    # "myEmail":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 85
    goto :goto_0

    .line 89
    .restart local v0    # "myEmail":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->cachedAccount:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/kingsoft/mail/utils/ContactHelper$1;

    invoke-direct {v1, p1, v0, p2, p0}, Lcom/kingsoft/mail/utils/ContactHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kingsoft/mail/utils/ContactHelper$1;->start()V

    goto :goto_1
.end method

.method public static getAllAddressFuzzybykey(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 527
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_SQL:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v5, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object p1, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 529
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getAllAddressbyHostEmail(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 498
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "id"

    aput-object v3, v2, v10

    const-string/jumbo v3, "email"

    aput-object v3, v2, v9

    const/4 v3, 0x2

    const-string/jumbo v4, "myemail"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "fristpinyin"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "pinyin"

    aput-object v4, v2, v3

    const-string/jumbo v3, "myemail=? COLLATE NOCASE"

    new-array v4, v9, [Ljava/lang/String;

    sget-object v9, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    aput-object v9, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 507
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    if-nez v6, :cond_0

    .line 522
    :goto_0
    return-object v5

    .line 510
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    :try_start_0
    new-instance v7, Lcom/kingsoft/email/provider/EmailSmallBean;

    const-string/jumbo v1, "email"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v7, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 517
    .end local v7    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    :catch_0
    move-exception v7

    .line 518
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 521
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v8

    .line 522
    goto :goto_0
.end method

.method public static getAllAddressbyHostEmailCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "id"

    aput-object v3, v2, v7

    const-string/jumbo v3, "email"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "myemail"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "fristpinyin"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "pinyin"

    aput-object v4, v2, v3

    const-string/jumbo v3, "myemail=? COLLATE NOCASE"

    new-array v4, v5, [Ljava/lang/String;

    sget-object v5, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string/jumbo v5, "email ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getContactNameByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "senderEmail"    # Ljava/lang/String;
    .param p1, "myEmail"    # Ljava/lang/String;
    .param p2, "defaultName"    # Ljava/lang/String;
    .param p3, "mContext"    # Landroid/content/Context;

    .prologue
    .line 130
    const-string/jumbo v1, ""

    .line 131
    .local v1, "senderString":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 132
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 161
    .end local v1    # "senderString":Ljava/lang/String;
    .local v2, "senderString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 136
    .end local v2    # "senderString":Ljava/lang/String;
    .restart local v1    # "senderString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz p1, :cond_1

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_1
    sget-object v3, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "senderString":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 141
    .restart local v1    # "senderString":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p3}, Lcom/kingsoft/mail/utils/ContactHelper;->queryDisplayNameBySendEMailAndMyEmail(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    const-string/jumbo v3, "Email"

    const-string/jumbo v4, "getContactNameByEmail from contact table failed and use mimeDecode for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    invoke-static {p2}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    sget-object v3, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_2
    if-nez v1, :cond_3

    .line 159
    const-string/jumbo v1, ""

    :cond_3
    move-object v2, v1

    .line 161
    .end local v1    # "senderString":Ljava/lang/String;
    .restart local v2    # "senderString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getContactSyncInfo(Landroid/content/Context;)V
    .locals 17
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 271
    const/4 v10, 0x0

    .line 272
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/utils/AccountUtils;->getAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;

    move-result-object v9

    .line 274
    .local v9, "allAccounts":[Lcom/kingsoft/mail/providers/Account;
    sget-object v16, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 275
    .local v16, "uri":Landroid/net/Uri;
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "display_name"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "account_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "data1"

    aput-object v2, v3, v1

    .line 279
    .local v3, "projection":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 280
    .local v8, "accBuffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v1, v9

    if-ge v13, v1, :cond_1

    .line 283
    aget-object v7, v9, v13

    .line 284
    .local v7, "acc":Lcom/kingsoft/mail/providers/Account;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    if-eq v13, v1, :cond_0

    .line 286
    const-string/jumbo v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 289
    .end local v7    # "acc":Lcom/kingsoft/mail/providers/Account;
    :cond_1
    const-string/jumbo v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "account_name in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "data1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "display_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "selection":Ljava/lang/String;
    const-string/jumbo v6, "display_name COLLATE LOCALIZED ASC"

    .line 298
    .local v6, "sortOrder":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 300
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    const-string/jumbo v1, "data1"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 303
    .local v12, "email":Ljava/lang/String;
    const-string/jumbo v1, "display_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 306
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v1, "account_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 309
    .local v14, "myemail":Ljava/lang/String;
    new-instance v11, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-direct {v11, v12, v15}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .local v11, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v14, v1, v2}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmllBeanOnly(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 313
    .end local v11    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v12    # "email":Ljava/lang/String;
    .end local v14    # "myemail":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 315
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 321
    :cond_2
    :goto_2
    return-void

    .line 315
    :cond_3
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 318
    :catch_1
    move-exception v1

    goto :goto_2

    .line 315
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 317
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 318
    :cond_4
    :goto_3
    throw v1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_3
.end method

.method public static getCrowdMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/provider/CrowdSourcingObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->mCrowdMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Lcom/kingsoft/mail/utils/ContactHelper;->refreshCrowdList()V

    .line 370
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/utils/ContactHelper;->mCrowdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 423
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "the info is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-ge v9, v10, :cond_1

    .line 336
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 355
    :cond_0
    return-object v5

    .line 338
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 341
    .local v6, "mRfc822Tokens":[Landroid/text/util/Rfc822Token;
    move-object v0, v6

    .local v0, "arr$":[Landroid/text/util/Rfc822Token;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v8, v0, v3

    .line 343
    .local v8, "rfc":Landroid/text/util/Rfc822Token;
    :try_start_0
    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "emailString":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 346
    :cond_2
    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 348
    :cond_3
    new-instance v1, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-direct {v1, v2, v7}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .local v1, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v2    # "emailString":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 351
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public static getEmailSmallBean(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 9
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "tags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the info is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_1

    .line 399
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 414
    :cond_0
    :goto_0
    return-object v4

    .line 401
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;I)[Landroid/text/util/Rfc822Token;

    move-result-object v5

    .line 406
    .local v5, "mRfc822Tokens":[Landroid/text/util/Rfc822Token;
    move-object v0, v5

    .local v0, "arr$":[Landroid/text/util/Rfc822Token;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 407
    .local v6, "rfc":Landroid/text/util/Rfc822Token;
    new-instance v1, Lcom/kingsoft/email/provider/EmailSmallBean;

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/kingsoft/email/provider/EmailSmallBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .local v1, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v0    # "arr$":[Landroid/text/util/Rfc822Token;
    .end local v1    # "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "mRfc822Tokens":[Landroid/text/util/Rfc822Token;
    .end local v6    # "rfc":Landroid/text/util/Rfc822Token;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static getFrendlyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-object p0

    .line 884
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 885
    move-object p0, p1

    .line 888
    :cond_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    :cond_3
    move-object p0, p1

    .line 890
    move-object v0, p1

    .line 891
    .local v0, "tmpEmail":Ljava/lang/String;
    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 892
    .local v1, "tmpIndex":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 893
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getNNPriority(Ljava/lang/String;)I
    .locals 11
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 745
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_0

    .line 766
    :goto_0
    return v9

    .line 747
    :cond_0
    const-string/jumbo v7, "[a-zA-Z]"

    .line 748
    .local v7, "regExEn":Ljava/lang/String;
    const-string/jumbo v6, "[\u4e00-\u9fff]"

    .line 749
    .local v6, "regExCn":Ljava/lang/String;
    const-string/jumbo v8, "[0-9]"

    .line 750
    .local v8, "regExNum":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 751
    .local v4, "patternEnAndCn":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 754
    .local v1, "mEn":Ljava/util/regex/Matcher;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 755
    .local v3, "patternCn":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 757
    .local v0, "mCn":Ljava/util/regex/Matcher;
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 758
    .local v5, "patternNum":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 759
    .local v2, "mNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 760
    const/4 v9, 0x1

    goto :goto_0

    .line 761
    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 762
    const/4 v9, 0x2

    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 764
    const/4 v9, 0x3

    goto :goto_0

    .line 766
    :cond_3
    const/4 v9, 0x4

    goto :goto_0
.end method

.method public static getNameList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 330
    :goto_0
    return-object v1

    .line 327
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "arr":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 330
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static getNoEnNamefromNick(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 230
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :cond_0
    const-string/jumbo v9, ""

    .line 265
    :cond_1
    :goto_0
    return-object v9

    .line 232
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 233
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "key"

    aput-object v0, v2, v1

    const-string/jumbo v0, "len"

    aput-object v0, v2, v5

    .line 234
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "email=? COLLATE NOCASE"

    .line 235
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 236
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 237
    .local v7, "full_name":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 238
    .local v10, "noEngName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_NICK_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_3

    move-object v9, p1

    .line 242
    goto :goto_0

    .line 245
    :cond_3
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 248
    .local v8, "len":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v8, v0, :cond_4

    .line 249
    move-object v7, v9

    .line 251
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 252
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 253
    .local v11, "x":I
    const/16 v0, 0x7f

    if-le v11, v0, :cond_3

    .line 261
    if-eqz v6, :cond_1

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 261
    .end local v8    # "len":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "x":I
    :cond_5
    if-eqz v6, :cond_6

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    move-object v9, v7

    .line 265
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 261
    if-eqz v6, :cond_6

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private static getTrueEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 728
    const-string/jumbo v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 730
    .end local p0    # "info":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static insert2ContactByCursor(Landroid/content/ContentValues;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "c"    # Landroid/content/ContentValues;
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "hostemail"    # Ljava/lang/String;

    .prologue
    .line 690
    const-wide/16 v7, 0x0

    .line 691
    .local v7, "time":J
    const-string/jumbo v10, "fromList"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 693
    .local v6, "fromlistString":Ljava/lang/String;
    const-string/jumbo v10, "ccList"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "cclistString":Ljava/lang/String;
    const-string/jumbo v10, "timeStamp"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 701
    const-string/jumbo v10, "bccList"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "bcclistString":Ljava/lang/String;
    const-string/jumbo v10, "toList"

    invoke-virtual {p0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 712
    .local v9, "tolist":Ljava/lang/String;
    invoke-static {v6}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 714
    .local v4, "eBeanlistFrom":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-static {v1}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 716
    .local v3, "eBeanlistCC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-static {v0}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 718
    .local v2, "eBeanlistBCC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-static {v9}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 720
    .local v5, "eBeanlistTo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    invoke-static {p1, v4, p2, v7, v8}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmallBean(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 721
    invoke-static {p1, v3, p2, v7, v8}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmallBean(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 722
    invoke-static {p1, v2, p2, v7, v8}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmallBean(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 723
    invoke-static {p1, v5, p2, v7, v8}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmallBean(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 725
    return-void
.end method

.method private static insertByEmailSmallBean(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/provider/EmailSmallBean;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p1, "elist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/provider/EmailSmallBean;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 974
    :cond_0
    return-void

    .line 963
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 964
    .local v0, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/mail/utils/ContactHelper;->getTrueEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    .line 965
    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 967
    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 969
    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 971
    invoke-static {p0, v0, p2, p3, p4}, Lcom/kingsoft/mail/utils/ContactHelper;->insertByEmailSmllBeanOnly(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static insertByEmailSmllBeanOnly(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/kingsoft/email/provider/EmailSmallBean;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 910
    iget-object v2, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/mail/utils/ContactHelper;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 915
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "timeStamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "email=? COLLATE NOCASE and myemail=? COLLATE NOCASE"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 921
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kingsoft/mail/utils/ContactHelper;->isNeedInsert(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 927
    .local v0, "contentvalues":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    iget-object v3, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string/jumbo v2, "email"

    iget-object v3, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string/jumbo v2, "myemail"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string/jumbo v2, "timeStamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    .end local v0    # "contentvalues":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isExistByMailHost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "myemail"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 167
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return v9

    .line 171
    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 173
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v8, "selection":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "email"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "=? COLLATE NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "myemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "=? COLLATE NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 181
    .local v7, "isExist":Z
    if-eqz v6, :cond_1

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v7, v9

    .line 183
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v9, v7

    .line 185
    goto :goto_0

    :cond_2
    move v7, v10

    .line 182
    goto :goto_1
.end method

.method public static isExistByNick(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;)Z
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/kingsoft/email/provider/EmailSmallBean;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 189
    new-array v4, v9, [Ljava/lang/String;

    iget-object v0, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 190
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v8, "selection":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "email"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "=? COLLATE NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_NICK_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 197
    .local v7, "isExist":Z
    if-eqz v6, :cond_0

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v7, v9

    .line 199
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_0
    return v7

    :cond_1
    move v7, v10

    .line 198
    goto :goto_0
.end method

.method private static isNeedInsert(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;Ljava/lang/String;J)Z
    .locals 25
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/kingsoft/email/provider/EmailSmallBean;
    .param p2, "myMail"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 773
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 774
    .local v20, "pos":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    add-int/lit8 v3, v20, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 776
    .local v13, "domain":Ljava/lang/String;
    const/16 v16, 0x0

    .line 777
    .local v16, "isRobot":Z
    const/16 v22, -0x1

    .line 779
    .local v22, "signature_type":I
    invoke-static {}, Lcom/kingsoft/mail/utils/ContactHelper;->getCrowdMap()Ljava/util/HashMap;

    move-result-object v10

    .line 780
    .local v10, "csoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/provider/CrowdSourcingObject;>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 781
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kingsoft/email/provider/CrowdSourcingObject;

    .line 782
    .local v9, "csoEmail":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    if-eqz v9, :cond_2

    .line 783
    invoke-virtual {v9}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->getSourceTypeId()I

    move-result v2

    if-nez v2, :cond_0

    .line 784
    const/16 v16, 0x1

    .line 795
    .end local v9    # "csoEmail":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .line 797
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x2

    :try_start_0
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 799
    .local v6, "selectionArgs":[Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 800
    .local v21, "selection":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "email"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "=? COLLATE NOCASE and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    const-string/jumbo v2, "myemail"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "=? COLLATE NOCASE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/kingsoft/email/provider/ContactContent$ContactColumns;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 807
    .local v17, "key":Ljava/lang/String;
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 808
    if-eqz v16, :cond_4

    .line 809
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 810
    .local v23, "userName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 811
    const/4 v2, 0x0

    .line 874
    if-eqz v11, :cond_1

    .line 875
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v21    # "selection":Ljava/lang/StringBuffer;
    .end local v23    # "userName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 787
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "csoEmail":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    :cond_2
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/email/provider/CrowdSourcingObject;

    .line 788
    .local v8, "csoDomain":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->getSourceTypeId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 790
    invoke-virtual {v8}, Lcom/kingsoft/email/provider/CrowdSourcingObject;->getData2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto/16 :goto_0

    .line 813
    .end local v8    # "csoDomain":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    .end local v9    # "csoEmail":Lcom/kingsoft/email/provider/CrowdSourcingObject;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v21    # "selection":Ljava/lang/StringBuffer;
    .restart local v23    # "userName":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/ContactHelper;->updateContactTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    sget-object v2, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 815
    const/4 v2, 0x0

    .line 874
    if-eqz v11, :cond_1

    .line 875
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 818
    .end local v23    # "userName":Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->checkoutChenBoStyle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 819
    .local v18, "newName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/kingsoft/mail/utils/ContactHelper;->getFrendlyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 821
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 822
    .local v12, "displayName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 823
    sget-object v2, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :goto_2
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v19, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v12, :cond_5

    invoke-static/range {v18 .. v18}, Lcom/kingsoft/mail/utils/ContactHelper;->getNNPriority(Ljava/lang/String;)I

    move-result v2

    invoke-static {v12}, Lcom/kingsoft/mail/utils/ContactHelper;->getNNPriority(Ljava/lang/String;)I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 833
    :cond_5
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 834
    .local v24, "values":Landroid/content/ContentValues;
    if-eqz v12, :cond_8

    .line 835
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/ContactHelper;->updateContactTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :goto_3
    sget-object v2, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 847
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "com.android.provider.contact"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 856
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_6
    :goto_4
    const/4 v2, 0x0

    .line 874
    if-eqz v11, :cond_1

    .line 875
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 825
    .end local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_7
    :try_start_4
    sget-object v2, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 870
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "newName":Ljava/lang/String;
    .end local v21    # "selection":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v14

    .line 872
    .local v14, "e2":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 874
    if-eqz v11, :cond_1

    .line 875
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 838
    .end local v14    # "e2":Ljava/lang/Exception;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "displayName":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "newName":Ljava/lang/String;
    .restart local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v21    # "selection":Ljava/lang/StringBuffer;
    .restart local v24    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 839
    const-string/jumbo v2, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string/jumbo v2, "email"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string/jumbo v2, "myemail"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string/jumbo v2, "timeStamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 874
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "newName":Ljava/lang/String;
    .end local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v21    # "selection":Ljava/lang/StringBuffer;
    .end local v24    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_9

    .line 875
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 849
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "displayName":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "newName":Ljava/lang/String;
    .restart local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v21    # "selection":Ljava/lang/StringBuffer;
    .restart local v24    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v15

    .line 850
    .local v15, "exception":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 851
    .end local v15    # "exception":Landroid/os/RemoteException;
    :catch_2
    move-exception v15

    .line 852
    .local v15, "exception":Landroid/content/OperationApplicationException;
    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_4

    .line 859
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v15    # "exception":Landroid/content/OperationApplicationException;
    .end local v18    # "newName":Ljava/lang/String;
    .end local v19    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v24    # "values":Landroid/content/ContentValues;
    :cond_a
    const/16 v18, 0x0

    .line 860
    .restart local v18    # "newName":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 861
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 866
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    .line 867
    sget-object v2, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 868
    const/4 v2, 0x1

    .line 874
    if-eqz v11, :cond_1

    .line 875
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 863
    :cond_b
    :try_start_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/kingsoft/mail/utils/ContactHelper;->checkoutChenBoStyle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 864
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/kingsoft/mail/utils/ContactHelper;->getFrendlyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v18

    goto :goto_5
.end method

.method public static isValid(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 990
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 995
    :goto_0
    return v2

    .line 994
    :cond_0
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 995
    .local v0, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v3, v0

    if-ne v3, v1, :cond_1

    sget-object v3, Lcom/kingsoft/mail/utils/ContactHelper;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static putDisplaynameToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "senderEmail"    # Ljava/lang/String;
    .param p1, "myEmail"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    return-void
.end method

.method private static putOneEntry(Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 14
    .param p0, "entry"    # Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;

    .prologue
    .line 205
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 206
    .local v13, "entryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Long;Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;>;"
    iget-wide v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->contactId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 207
    .local v12, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/ex/chips/RecipientEntry;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->displayName:Ljava/lang/String;

    iget v1, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->displayNameSource:I

    iget-object v2, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destination:Ljava/lang/String;

    iget v3, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destinationType:I

    iget-object v4, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    iget-wide v5, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->contactId:J

    iget-wide v7, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->dataId:J

    iget-object v9, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;->isGalContact:Z

    invoke-static/range {v0 .. v11}, Lcom/kingsoft/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;ZZ)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public static queryAccountMap(Landroid/content/Context;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 567
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string/jumbo v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 570
    .local v7, "x":J
    const-string/jumbo v0, "email"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_0

    .line 573
    .end local v7    # "x":J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 574
    return-void
.end method

.method public static queryDisplayNameBySendEMailAndMyEmail(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "senderEMail"    # Ljava/lang/String;
    .param p1, "myEMail"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 608
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 609
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 610
    .local v7, "displayName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    invoke-static {p0, p2}, Lcom/kingsoft/mail/utils/ContactHelper;->queryDisplayNameBySenderEMail(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 630
    :cond_0
    :goto_0
    return-object v5

    .line 612
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 613
    .local v8, "key":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "displayName":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 614
    .restart local v7    # "displayName":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 615
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v9

    const-string/jumbo v3, "email=? COLLATE NOCASE and myemail=? COLLATE NOCASE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v9

    aput-object p1, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 620
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 623
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 626
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 628
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object v5, v7

    .line 630
    goto :goto_0
.end method

.method public static queryDisplayNameBySenderEMail(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "senderEMail"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 635
    const/4 v6, 0x0

    .line 636
    .local v6, "displayName":Ljava/lang/String;
    move-object v7, p0

    .line 637
    .local v7, "key":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "displayName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 638
    .restart local v6    # "displayName":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 639
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 640
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v9

    const-string/jumbo v3, "email=? COLLATE NOCASE"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 644
    .local v8, "otherCursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 653
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "otherCursor":Landroid/database/Cursor;
    :goto_0
    return-object v5

    .line 646
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "otherCursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 649
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 650
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->displayNameCache:Ljava/util/Map;

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "otherCursor":Landroid/database/Cursor;
    :cond_2
    move-object v5, v6

    .line 653
    goto :goto_0
.end method

.method public static queryEmailbyKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "email"

    aput-object v3, v2, v5

    const-string/jumbo v3, "key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 582
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 583
    .local v8, "mail":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 585
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 586
    const-string/jumbo v0, "email"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .line 594
    .end local v8    # "mail":Ljava/lang/String;
    .local v9, "mail":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 588
    .end local v9    # "mail":Ljava/lang/String;
    .restart local v8    # "mail":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 591
    .local v7, "e":Ljava/lang/Exception;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v9, v8

    .end local v8    # "mail":Ljava/lang/String;
    .restart local v9    # "mail":Ljava/lang/String;
    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mail":Ljava/lang/String;
    .restart local v8    # "mail":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move-object v9, v8

    .line 594
    .end local v8    # "mail":Ljava/lang/String;
    .restart local v9    # "mail":Ljava/lang/String;
    goto :goto_0
.end method

.method public static queryEmailsByESB(Landroid/content/Context;Lcom/kingsoft/email/provider/EmailSmallBean;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/kingsoft/email/provider/EmailSmallBean;

    .prologue
    const-wide v2, 0x408f400000000000L

    .line 487
    if-nez p1, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 492
    :goto_0
    return-object v0

    .line 489
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    double-to-long v6, v0

    .line 490
    .local v6, "id":J
    iget-wide v0, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 491
    iput-wide v6, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->id:J

    .line 492
    :cond_1
    new-instance v0, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;

    iget-wide v1, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->id:J

    iget-object v3, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/kingsoft/email/provider/EmailSmallBean;->email:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/kingsoft/mail/utils/ContactHelper;->putOneEntry(Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public static queryEmailsByname(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/ex/chips/RecipientEntry;
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 455
    invoke-static {p1}, Lcom/kingsoft/mail/utils/ContactHelper;->getEmailSmallBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingsoft/email/provider/EmailSmallBean;

    .line 456
    .local v8, "e":Lcom/kingsoft/email/provider/EmailSmallBean;
    if-nez v8, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-object v5

    .line 458
    :cond_1
    iget-object v9, v8, Lcom/kingsoft/email/provider/EmailSmallBean;->name:Ljava/lang/String;

    .line 459
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ComposeActivity.from_email     "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/kingsoft/mail/compose/ComposeActivity;->from_email:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/email/provider/ContactProvider;->showLog(Ljava/lang/String;)V

    .line 462
    sget-object v1, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "id"

    aput-object v4, v2, v6

    const-string/jumbo v4, "email"

    aput-object v4, v2, v10

    const-string/jumbo v3, "name = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v9, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 467
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 468
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 469
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 477
    const-string/jumbo v1, "email"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, "mail":Ljava/lang/String;
    const-string/jumbo v1, "id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 480
    .local v2, "id":J
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 481
    new-instance v1, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/kingsoft/mail/utils/ContactHelper;->putOneEntry(Lcom/kingsoft/mail/utils/ContactHelper$TemporaryEntry;)Lcom/kingsoft/ex/chips/RecipientEntry;

    move-result-object v5

    goto :goto_0

    .line 471
    .end local v2    # "id":J
    .end local v5    # "mail":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static refreshCrowdList()V
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/EmailApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 390
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/data/CrowdSourcingFromXml;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/data/CrowdSourcingFromXml;->parse()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->mCrowdMap:Ljava/util/HashMap;

    .line 391
    return-void
.end method

.method public static setCrowdMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/provider/CrowdSourcingObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "crowdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/provider/CrowdSourcingObject;>;"
    sput-object p0, Lcom/kingsoft/mail/utils/ContactHelper;->mCrowdMap:Ljava/util/HashMap;

    .line 78
    return-void
.end method

.method private static updateContactTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 939
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 940
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/email/provider/ContactProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "email = ? COLLATE NOCASE"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 946
    return-void
.end method


# virtual methods
.method public add2contact4Provider()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 430
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->mContexttx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 431
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v7, "values":Landroid/content/ContentValues;
    sget-object v1, Lcom/kingsoft/mail/utils/ContactHelper;->EMAIL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 435
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "data1"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 438
    .local v6, "cursor":Landroid/database/Cursor;
    return-void
.end method

.method public add2contact4db()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
