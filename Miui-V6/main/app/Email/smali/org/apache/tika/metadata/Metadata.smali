.class public Lorg/apache/tika/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Lorg/apache/tika/metadata/ClimateForcast;
.implements Lorg/apache/tika/metadata/CreativeCommons;
.implements Lorg/apache/tika/metadata/DublinCore;
.implements Lorg/apache/tika/metadata/Geographic;
.implements Lorg/apache/tika/metadata/HttpHeaders;
.implements Lorg/apache/tika/metadata/MSOffice;
.implements Lorg/apache/tika/metadata/Message;
.implements Lorg/apache/tika/metadata/TIFF;
.implements Lorg/apache/tika/metadata/TikaMetadataKeys;
.implements Lorg/apache/tika/metadata/TikaMimeKeys;


# static fields
.field private static final iso8601Format:Ljava/text/DateFormat;

.field private static final iso8601InputFormats:[Ljava/text/DateFormat;


# instance fields
.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string/jumbo v1, "UTF"

    invoke-static {v0, v1}, Lorg/apache/tika/metadata/Metadata;->createDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    .line 46
    sput-object v0, Lorg/apache/tika/metadata/Metadata;->iso8601Format:Ljava/text/DateFormat;

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/text/DateFormat;

    const/4 v1, 0x0

    .line 59
    sget-object v2, Lorg/apache/tika/metadata/Metadata;->iso8601Format:Ljava/text/DateFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 60
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-static {v2, v4}, Lorg/apache/tika/metadata/Metadata;->createDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 61
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v2, v4}, Lorg/apache/tika/metadata/Metadata;->createDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 63
    const-string/jumbo v2, "yyyy-MM-dd\' \'HH:mm:ss\'Z\'"

    const-string/jumbo v3, "UTF"

    invoke-static {v2, v3}, Lorg/apache/tika/metadata/Metadata;->createDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 64
    const-string/jumbo v2, "yyyy-MM-dd\' \'HH:mm:ssZ"

    invoke-static {v2, v4}, Lorg/apache/tika/metadata/Metadata;->createDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 65
    const-string/jumbo v2, "yyyy-MM-dd\' \'HH:mm:ss"

    invoke-static {v2, v4}, Lorg/apache/tika/metadata/Metadata;->createDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    sput-object v0, Lorg/apache/tika/metadata/Metadata;->iso8601InputFormats:[Ljava/text/DateFormat;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    .line 122
    return-void
.end method

.method private _getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v1, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 230
    .local v0, "values":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 231
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 233
    :cond_0
    return-object v0
.end method

.method private static createDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 71
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz p1, :cond_0

    .line 72
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 74
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 114
    const-class v1, Lorg/apache/tika/metadata/Metadata;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/tika/metadata/Metadata;->iso8601Format:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 88
    const-class v3, Lorg/apache/tika/metadata/Metadata;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 89
    .local v1, "n":I
    add-int/lit8 v4, v1, -0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    .line 90
    add-int/lit8 v4, v1, -0x6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_0

    add-int/lit8 v4, v1, -0x6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 91
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x3

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    :cond_1
    sget-object v4, Lorg/apache/tika/metadata/Metadata;->iso8601InputFormats:[Ljava/text/DateFormat;

    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lt v2, v5, :cond_2

    .line 101
    const/4 v2, 0x0

    :goto_1
    monitor-exit v3

    return-object v2

    .line 95
    :cond_2
    :try_start_1
    aget-object v0, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .local v0, "format":Ljava/text/DateFormat;
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 98
    :catch_0
    move-exception v6

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "format":Ljava/text/DateFormat;
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v2, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 247
    .local v1, "values":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 248
    invoke-virtual {p0, p1, p2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 251
    .local v0, "newValues":[Ljava/lang/String;
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p2, v0, v2

    .line 253
    iget-object v2, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 365
    if-nez p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v8

    .line 369
    :cond_1
    const/4 v5, 0x0

    .line 371
    .local v5, "other":Lorg/apache/tika/metadata/Metadata;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/tika/metadata/Metadata;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    invoke-virtual {v5}, Lorg/apache/tika/metadata/Metadata;->size()I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/tika/metadata/Metadata;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Metadata;->names()[Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v4

    if-lt v2, v9, :cond_2

    .line 393
    const/4 v8, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "i":I
    .end local v4    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "cce":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 382
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    .restart local v2    # "i":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_2
    aget-object v9, v4, v2

    invoke-direct {v5, v9}, Lorg/apache/tika/metadata/Metadata;->_getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "otherValues":[Ljava/lang/String;
    aget-object v9, v4, v2

    invoke-direct {p0, v9}, Lorg/apache/tika/metadata/Metadata;->_getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "thisValues":[Ljava/lang/String;
    array-length v9, v6

    array-length v10, v7

    if-ne v9, v10, :cond_0

    .line 387
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v9, v6

    if-lt v3, v9, :cond_3

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    :cond_3
    aget-object v9, v6, v3

    aget-object v10, v7, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 154
    .local v0, "values":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public get(Lorg/apache/tika/metadata/Property;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Lorg/apache/tika/metadata/Property;

    .prologue
    .line 169
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Lorg/apache/tika/metadata/Property;)Ljava/util/Date;
    .locals 4
    .param p1, "property"    # Lorg/apache/tika/metadata/Property;

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v2

    sget-object v3, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    if-eq v2, v3, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v1

    .line 206
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v2

    sget-object v3, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    if-ne v2, v3, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lorg/apache/tika/metadata/Metadata;->get(Lorg/apache/tika/metadata/Property;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 211
    invoke-static {v0}, Lorg/apache/tika/metadata/Metadata;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public getInt(Lorg/apache/tika/metadata/Property;)Ljava/lang/Integer;
    .locals 5
    .param p1, "property"    # Lorg/apache/tika/metadata/Property;

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v3

    sget-object v4, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    if-eq v3, v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object v2

    .line 182
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v3

    sget-object v4, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    if-ne v3, v4, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lorg/apache/tika/metadata/Metadata;->get(Lorg/apache/tika/metadata/Property;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lorg/apache/tika/metadata/Metadata;->_getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultiValued(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public names()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public set(Lorg/apache/tika/metadata/Property;D)V
    .locals 3
    .param p1, "property"    # Lorg/apache/tika/metadata/Property;
    .param p2, "value"    # D

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v0

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    if-eq v0, v1, :cond_0

    .line 322
    new-instance v0, Lorg/apache/tika/metadata/PropertyTypeException;

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$PropertyType;)V

    throw v0

    .line 323
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v0

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    if-eq v0, v1, :cond_1

    .line 324
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v0

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->RATIONAL:Lorg/apache/tika/metadata/Property$ValueType;

    if-eq v0, v1, :cond_1

    .line 325
    new-instance v0, Lorg/apache/tika/metadata/PropertyTypeException;

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->REAL:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$ValueType;Lorg/apache/tika/metadata/Property$ValueType;)V

    throw v0

    .line 326
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public set(Lorg/apache/tika/metadata/Property;I)V
    .locals 3
    .param p1, "property"    # Lorg/apache/tika/metadata/Property;
    .param p2, "value"    # I

    .prologue
    .line 306
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v0

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    if-eq v0, v1, :cond_0

    .line 307
    new-instance v0, Lorg/apache/tika/metadata/PropertyTypeException;

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$PropertyType;)V

    throw v0

    .line 308
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v0

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    if-eq v0, v1, :cond_1

    .line 309
    new-instance v0, Lorg/apache/tika/metadata/PropertyTypeException;

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->INTEGER:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$ValueType;Lorg/apache/tika/metadata/Property$ValueType;)V

    throw v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public set(Lorg/apache/tika/metadata/Property;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Lorg/apache/tika/metadata/Property;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public set(Lorg/apache/tika/metadata/Property;Ljava/util/Date;)V
    .locals 3
    .param p1, "property"    # Lorg/apache/tika/metadata/Property;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 337
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v0

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    if-eq v0, v1, :cond_0

    .line 338
    new-instance v0, Lorg/apache/tika/metadata/PropertyTypeException;

    sget-object v1, Lorg/apache/tika/metadata/Property$PropertyType;->SIMPLE:Lorg/apache/tika/metadata/Property$PropertyType;

    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getPropertyType()Lorg/apache/tika/metadata/Property$PropertyType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$PropertyType;Lorg/apache/tika/metadata/Property$PropertyType;)V

    throw v0

    .line 339
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v0

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    if-eq v0, v1, :cond_1

    .line 340
    new-instance v0, Lorg/apache/tika/metadata/PropertyTypeException;

    sget-object v1, Lorg/apache/tika/metadata/Property$ValueType;->DATE:Lorg/apache/tika/metadata/Property$ValueType;

    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getValueType()Lorg/apache/tika/metadata/Property$ValueType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/metadata/PropertyTypeException;-><init>(Lorg/apache/tika/metadata/Property$ValueType;Lorg/apache/tika/metadata/Property$ValueType;)V

    throw v0

    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tika/metadata/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/tika/metadata/Metadata;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public setAll(Ljava/util/Properties;)V
    .locals 6
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 266
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 267
    .local v1, "names":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    return-void

    .line 268
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/tika/metadata/Metadata;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/tika/metadata/Metadata;->names()[Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 400
    :cond_0
    aget-object v5, v3, v1

    invoke-direct {p0, v5}, Lorg/apache/tika/metadata/Metadata;->_getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-lt v2, v5, :cond_1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_1
    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
