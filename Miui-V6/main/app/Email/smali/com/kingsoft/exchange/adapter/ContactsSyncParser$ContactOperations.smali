.class public Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;
.super Ljava/util/ArrayList;
.source "ContactsSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/adapter/ContactsSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactBackValue:I

.field private final mContactIndexArray:[I

.field private mContactIndexCount:I

.field private mCount:I

.field private mResults:[Landroid/content/ContentProviderResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 833
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    iput v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mCount:I

    .line 836
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mCount:I

    iput v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactBackValue:I

    .line 838
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexArray:[I

    .line 839
    iput v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexCount:I

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)[Landroid/content/ContentProviderResult;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    .prologue
    .line 833
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;)[I
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexArray:[I

    return-object v0
.end method

.method private static cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cv"    # Landroid/content/ContentValues;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1052
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    :cond_0
    :goto_0
    return v0

    .line 1056
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;
    .locals 7
    .param p1, "contentItemType"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "stringType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Entity$NamedContentValues;"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/4 v4, 0x0

    .line 900
    .local v4, "result":Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 901
    .local v3, "namedContentValues":Landroid/content/Entity$NamedContentValues;
    iget-object v5, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 902
    .local v5, "uri":Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 903
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 904
    const-string/jumbo v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 906
    if-eqz p3, :cond_1

    .line 907
    const-string/jumbo v6, "data1"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 908
    move-object v4, v3

    goto :goto_0

    .line 914
    :cond_1
    if-ltz p2, :cond_2

    const-string/jumbo v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "data2"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p2, :cond_0

    .line 916
    :cond_2
    move-object v4, v3

    goto :goto_0

    .line 924
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v4, :cond_4

    .line 925
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 929
    :cond_4
    return-object v4
.end method

.method private static findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "type"    # I
    .param p2, "contentItemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 946
    .local v3, "namedContentValues":Landroid/content/Entity$NamedContentValues;
    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 947
    .local v6, "uri":Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 948
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 949
    const-string/jumbo v8, "mimetype"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 951
    const/4 v8, -0x1

    if-eq p1, v8, :cond_1

    .line 952
    const-string/jumbo v8, "data2"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 953
    .local v5, "subtype":I
    if-ne p1, v5, :cond_0

    .line 957
    .end local v5    # "subtype":I
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 964
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 965
    .local v7, "values":Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 969
    .end local v7    # "values":Landroid/content/Entity$NamedContentValues;
    :cond_3
    return-object v4
.end method

.method private newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1023
    iget v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactBackValue:I

    .line 1024
    .local v1, "contactId":I
    if-eqz p1, :cond_0

    .line 1025
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1029
    :cond_0
    new-instance v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    .line 1032
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    if-nez p1, :cond_1

    .line 1033
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValueBackReference(Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1039
    :goto_0
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1040
    return-object v0

    .line 1035
    :cond_1
    const-string/jumbo v2, "raw_contact_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    goto :goto_0
.end method

.method private typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 1
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1013
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method private untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 2
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1017
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .locals 1
    .param p1, "op"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 844
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    iget v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mCount:I

    .line 846
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 833
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public addBirthday(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 9
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "birthday"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    .line 1079
    const-string/jumbo v6, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p1, v6, v8}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1081
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1082
    .local v2, "cv":Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    const-string/jumbo v6, "data1"

    invoke-static {v2, v6, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1086
    :cond_0
    invoke-static {p2}, Lcom/kingsoft/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    .line 1087
    .local v3, "millis":J
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string/jumbo v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1088
    .local v1, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1089
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    if-lt v6, v7, :cond_1

    .line 1090
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 1092
    :cond_1
    invoke-static {v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->calendarToBirthdayString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v5

    .line 1093
    .local v5, "realBirthday":Ljava/lang/String;
    const-string/jumbo v6, "data1"

    invoke-virtual {v0, v6, v5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1094
    const-string/jumbo v6, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1095
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addBusiness(Landroid/content/Entity;Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "business"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;

    .prologue
    .line 1137
    const-string/jumbo v2, "vnd.android.cursor.item/eas_business"

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1138
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1139
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string/jumbo v2, "data8"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->accountName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "data6"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->customerId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "data7"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    const-string/jumbo v2, "data8"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1148
    const-string/jumbo v2, "data6"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->customerId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1149
    const-string/jumbo v2, "data7"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1150
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "entity"    # Landroid/content/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "vnd.android.cursor.item/eas_children"

    invoke-direct {p0, p1, v5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1064
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    const/4 v2, 0x0

    .line 1065
    .local v2, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1066
    .local v1, "child":Ljava/lang/String;
    sget-object v5, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasChildren;->ROWS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget-object v5, v5, v2

    invoke-virtual {v0, v5, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move v2, v3

    .line 1067
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1068
    .end local v1    # "child":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1069
    return-void
.end method

.method public addGroup(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 1072
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1074
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    const-string/jumbo v1, "group_sourceid"

    invoke-virtual {v0, v1, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1075
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1076
    return-void
.end method

.method public addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;
    .param p4, "familyName"    # Ljava/lang/String;
    .param p5, "middleName"    # Ljava/lang/String;
    .param p6, "suffix"    # Ljava/lang/String;
    .param p7, "yomiFirstName"    # Ljava/lang/String;
    .param p8, "yomiLastName"    # Ljava/lang/String;

    .prologue
    .line 1100
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1101
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1102
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "data2"

    invoke-static {v1, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data3"

    invoke-static {v1, v2, p4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data5"

    invoke-static {v1, v2, p5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data4"

    invoke-static {v1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data7"

    invoke-static {v1, v2, p7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data9"

    invoke-static {v1, v2, p8}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data6"

    invoke-static {v1, v2, p6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1111
    :cond_0
    const-string/jumbo v2, "data2"

    invoke-virtual {v0, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1112
    const-string/jumbo v2, "data3"

    invoke-virtual {v0, v2, p4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1113
    const-string/jumbo v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1114
    const-string/jumbo v2, "data6"

    invoke-virtual {v0, v2, p6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1115
    const-string/jumbo v2, "data7"

    invoke-virtual {v0, v2, p7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1116
    const-string/jumbo v2, "data9"

    invoke-virtual {v0, v2, p8}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1117
    const-string/jumbo v2, "data4"

    invoke-virtual {v0, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1118
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNickname(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1196
    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1198
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1199
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "data1"

    invoke-static {v1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1202
    :cond_0
    const-string/jumbo v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1203
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1204
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNote(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 7
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "note"    # Ljava/lang/String;

    .prologue
    .line 1322
    const-string/jumbo v5, "vnd.android.cursor.item/note"

    const/4 v6, -0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1323
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v2, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1324
    .local v2, "cv":Landroid/content/ContentValues;
    if-nez p2, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    const-string/jumbo v5, "\r\n"

    const-string/jumbo v6, "\n"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1326
    if-eqz v2, :cond_2

    const-string/jumbo v5, "data1"

    invoke-static {v2, v5, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1332
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1333
    .local v4, "len":I
    const/4 v3, 0x0

    .line 1334
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1335
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1336
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1340
    .end local v1    # "c":C
    :cond_3
    if-eq v3, v4, :cond_0

    .line 1342
    const-string/jumbo v5, "data1"

    invoke-virtual {v0, v5, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1343
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 1334
    .restart local v1    # "c":C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "type"    # I
    .param p3, "company"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "department"    # Ljava/lang/String;
    .param p6, "yomiCompanyName"    # Ljava/lang/String;
    .param p7, "officeLocation"    # Ljava/lang/String;

    .prologue
    .line 1303
    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1304
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1305
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "data1"

    invoke-static {v1, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data8"

    invoke-static {v1, v2, p6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data5"

    invoke-static {v1, v2, p5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data4"

    invoke-static {v1, v2, p4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data9"

    invoke-static {v1, v2, p7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1312
    :cond_0
    const-string/jumbo v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1313
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1314
    const-string/jumbo v2, "data4"

    invoke-virtual {v0, v2, p4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1315
    const-string/jumbo v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1316
    const-string/jumbo v2, "data8"

    invoke-virtual {v0, v2, p6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1317
    const-string/jumbo v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1318
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPersonal(Landroid/content/Entity;Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "personal"    # Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;

    .prologue
    .line 1122
    const-string/jumbo v2, "vnd.android.cursor.item/eas_personal"

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1123
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1124
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string/jumbo v2, "data2"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "data4"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    invoke-virtual {p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1131
    const-string/jumbo v2, "data4"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1132
    const-string/jumbo v2, "data2"

    iget-object v3, p2, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1133
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhone(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "type"    # I
    .param p3, "phone"    # Ljava/lang/String;

    .prologue
    .line 1163
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1164
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1165
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "data1"

    invoke-static {v1, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    :goto_0
    return-void

    .line 1168
    :cond_0
    const-string/jumbo v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1169
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1170
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhoto(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "photo"    # Ljava/lang/String;

    .prologue
    .line 1154
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1157
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1158
    .local v1, "pic":[B
    const-string/jumbo v2, "data15"

    invoke-virtual {v0, v2, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1159
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1160
    return-void
.end method

.method public addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "type"    # I
    .param p3, "street"    # Ljava/lang/String;
    .param p4, "city"    # Ljava/lang/String;
    .param p5, "state"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .param p7, "code"    # Ljava/lang/String;

    .prologue
    .line 1209
    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1211
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1212
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "data7"

    invoke-static {v1, v2, p4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data4"

    invoke-static {v1, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data10"

    invoke-static {v1, v2, p6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data9"

    invoke-static {v1, v2, p7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data8"

    invoke-static {v1, v2, p5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    :goto_0
    return-void

    .line 1219
    :cond_0
    const-string/jumbo v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1220
    const-string/jumbo v2, "data7"

    invoke-virtual {v0, v2, p4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1221
    const-string/jumbo v2, "data4"

    invoke-virtual {v0, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1222
    const-string/jumbo v2, "data10"

    invoke-virtual {v0, v2, p6}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1223
    const-string/jumbo v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1224
    const-string/jumbo v2, "data8"

    invoke-virtual {v0, v2, p5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1225
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addRelation(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1185
    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    invoke-direct {p0, p1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1186
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1187
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "data1"

    invoke-static {v1, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1190
    :cond_0
    const-string/jumbo v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1191
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1192
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 18
    .param p1, "entity"    # Landroid/content/Entity;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "maxRows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1237
    .local p2, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;>;"
    # getter for: Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;
    invoke-static {}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->access$400()Ljava/util/ArrayList;

    move-result-object v12

    .line 1238
    .local v12, "oldValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    # getter for: Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;
    invoke-static {}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->access$400()Ljava/util/ArrayList;

    move-result-object v6

    .line 1239
    .local v6, "entityValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz p1, :cond_0

    .line 1240
    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v6, v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    .line 1245
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .local v15, "rowsToReplace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1249
    .local v11, "numRows":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;

    .line 1250
    .local v13, "row":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;
    const/4 v7, 0x0

    .line 1252
    .local v7, "found":Z
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity$NamedContentValues;

    .line 1253
    .local v10, "ncv":Landroid/content/Entity$NamedContentValues;
    iget-object v4, v10, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1254
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v16, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1255
    .local v5, "data":Ljava/lang/String;
    const/4 v14, -0x1

    .line 1256
    .local v14, "rowType":I
    const-string/jumbo v16, "data2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1257
    const-string/jumbo v16, "data2"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1259
    :cond_3
    invoke-interface {v13, v14, v5}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;->isSameAs(ILjava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1260
    const-string/jumbo v16, "com.android.exchange.FOUND_ROW"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1262
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1263
    const/4 v7, 0x1

    .line 1267
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "data":Ljava/lang/String;
    .end local v10    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v14    # "rowType":I
    :cond_4
    if-nez v7, :cond_1

    .line 1269
    move/from16 v0, p5

    if-ge v11, v0, :cond_5

    .line 1271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v3

    .line 1272
    .local v3, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    invoke-interface {v13, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;->addValues(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;)V

    .line 1273
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1274
    add-int/lit8 v11, v11, 0x1

    .line 1275
    goto :goto_0

    .line 1277
    .end local v3    # "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    :cond_5
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1283
    .end local v7    # "found":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "row":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;

    .line 1284
    .restart local v13    # "row":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity$NamedContentValues;

    .line 1285
    .restart local v10    # "ncv":Landroid/content/Entity$NamedContentValues;
    iget-object v4, v10, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1287
    .restart local v4    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v16, "com.android.exchange.FOUND_ROW"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 1289
    new-instance v3, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    invoke-static {v10}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v10}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1294
    .restart local v3    # "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    invoke-interface {v13, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;->addValues(Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;)V

    .line 1295
    invoke-virtual {v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 1299
    .end local v3    # "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v13    # "row":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$UntypedRow;
    :cond_9
    return-void
.end method

.method public addWebpage(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 4
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1174
    const-string/jumbo v2, "vnd.android.cursor.item/website"

    invoke-direct {p0, p1, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1175
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    iget-object v1, v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1176
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "data1"

    invoke-static {v1, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1179
    :cond_0
    const-string/jumbo v2, "data2"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1180
    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .line 1181
    invoke-virtual {v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    .locals 3
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "stringType"    # Ljava/lang/String;

    .prologue
    .line 989
    const/4 v0, 0x0

    .line 991
    .local v0, "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    if-eqz p1, :cond_0

    .line 992
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, p2, p3, p4}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;

    move-result-object v1

    .line 994
    .local v1, "ncv":Landroid/content/Entity$NamedContentValues;
    if-eqz v1, :cond_0

    .line 995
    new-instance v0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    .end local v0    # "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    invoke-static {v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1003
    .end local v1    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v0    # "builder":Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;
    :cond_0
    if-nez v0, :cond_1

    .line 1004
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/kingsoft/exchange/adapter/ContactsSyncParser$RowBuilder;

    move-result-object v0

    .line 1009
    :cond_1
    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 861
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 867
    return-void
.end method

.method public execute(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 871
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "problem inserting contact during server update"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 878
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 880
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "problem inserting contact during server update"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 881
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "problem inserting contact during server update"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public newContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 850
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    # invokes: Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v2, p2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser;->access$300(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 852
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "sourceid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 855
    iget v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mCount:I

    iput v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactBackValue:I

    .line 856
    iget-object v2, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexArray:[I

    iget v3, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mContactIndexCount:I

    iget v4, p0, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->mCount:I

    aput v4, v2, v3

    .line 857
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/exchange/adapter/ContactsSyncParser$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 858
    return-void
.end method
