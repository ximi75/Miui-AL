.class public Lorg/apache/commons/lang3/time/FastDateParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/lang3/time/DateParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$TextStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final MILLISECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/apache/commons/lang3/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final formatPattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final century:I

.field private transient currentFormatField:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private transient nextStrategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private transient parsePattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;

.field private final startYear:I

.field private transient strategies:[Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 68
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "ja"

    const-string/jumbo v2, "JP"

    const-string/jumbo v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    .line 451
    const-string/jumbo v0, "D+|E+|F+|G+|H+|K+|M+|S+|W+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|\'\'|\'[^\']++(\'\'[^\']*+)*+\'|[^\'A-Za-z]++"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    .line 510
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    .line 689
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$1;

    invoke-direct {v0, v4}, Lorg/apache/commons/lang3/time/FastDateParser$1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 799
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$2;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 805
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v4}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 806
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 807
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 808
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 809
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 810
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 811
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 812
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$3;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/time/FastDateParser$3;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 818
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$4;

    invoke-direct {v0, v5}, Lorg/apache/commons/lang3/time/FastDateParser$4;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 824
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v5}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 825
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MINUTE_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 826
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->SECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 827
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "centuryStart"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    .line 111
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    .line 113
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 115
    .local v1, "definingCalendar":Ljava/util/Calendar;
    if-eqz p4, :cond_0

    .line 116
    invoke-virtual {v1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 117
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 127
    .local v0, "centuryStartYear":I
    :goto_0
    div-int/lit8 v2, v0, 0x64

    mul-int/lit8 v2, v2, 0x64

    iput v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->century:I

    .line 128
    iget v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->century:I

    sub-int v2, v0, v2

    iput v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->startYear:I

    .line 130
    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 131
    return-void

    .line 119
    .end local v0    # "centuryStartYear":I
    :cond_0
    sget-object v2, Lorg/apache/commons/lang3/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const/4 v0, 0x0

    .restart local v0    # "centuryStartYear":I
    goto :goto_0

    .line 124
    .end local v0    # "centuryStartYear":I
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 125
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, -0x50

    .restart local v0    # "centuryStartYear":I
    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/StringBuilder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/Calendar;
    .param p2, "x2"    # Ljava/util/Locale;

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->adjustYear(I)I

    move-result v0

    return v0
.end method

.method private adjustYear(I)I
    .locals 2
    .param p1, "twoDigitYear"    # I

    .prologue
    .line 392
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->century:I

    add-int v0, v1, p1

    .line 393
    .local v0, "trial":I
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->startYear:I

    if-lt p1, v1, :cond_0

    .end local v0    # "trial":I
    :goto_0
    return v0

    .restart local v0    # "trial":I
    :cond_0
    add-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method private static escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "regex"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "unquote"    # Z

    .prologue
    .line 335
    const-string/jumbo v2, "\\Q"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 337
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 338
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 368
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :sswitch_0
    if-eqz p2, :cond_0

    .line 341
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 371
    .end local v0    # "c":C
    :goto_2
    return-object p0

    .line 344
    .restart local v0    # "c":C
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 348
    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    const/16 v2, 0x45

    if-ne v0, v2, :cond_0

    .line 361
    const-string/jumbo v2, "E\\\\E\\"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/16 v0, 0x51

    goto :goto_1

    .line 370
    .end local v0    # "c":C
    :cond_2
    const-string/jumbo v2, "\\E"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 338
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .param p0, "field"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/apache/commons/lang3/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    sget-object v1, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 519
    :try_start_0
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 520
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v2, v0, p0

    .line 522
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    monitor-exit v1

    return-object v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .param p0, "field"    # I
    .param p1, "definingCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 4
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 533
    invoke-static {p1}, Lorg/apache/commons/lang3/time/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 534
    .local v0, "cache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/Locale;Lorg/apache/commons/lang3/time/FastDateParser$Strategy;>;"
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 535
    .local v2, "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    if-nez v2, :cond_1

    .line 536
    const/16 v3, 0xf

    if-ne p1, v3, :cond_0

    new-instance v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;

    .end local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    .line 539
    .restart local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v0, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 540
    .local v1, "inCache":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    if-eqz v1, :cond_1

    .line 544
    .end local v1    # "inCache":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :goto_1
    return-object v1

    .line 536
    :cond_0
    new-instance v2, Lorg/apache/commons/lang3/time/FastDateParser$TextStrategy;

    .end local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/commons/lang3/time/FastDateParser$TextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    goto :goto_0

    .restart local v2    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :cond_1
    move-object v1, v2

    .line 544
    goto :goto_1
.end method

.method private getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 3
    .param p1, "formatField"    # Ljava/lang/String;
    .param p2, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 468
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    .line 505
    :goto_0
    return-object v0

    .line 463
    :sswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 464
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :sswitch_1
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 472
    :sswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 474
    :sswitch_3
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 476
    :sswitch_4
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 478
    :sswitch_5
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 480
    :sswitch_6
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 482
    :sswitch_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 484
    :sswitch_8
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 486
    :sswitch_9
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 488
    :sswitch_a
    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 490
    :sswitch_b
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 492
    :sswitch_c
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 494
    :sswitch_d
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 496
    :sswitch_e
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->MINUTE_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 498
    :sswitch_f
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->SECOND_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 500
    :sswitch_10
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 502
    :sswitch_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    goto :goto_0

    .line 505
    :sswitch_12
    const/16 v0, 0xf

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    .line 461
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x44 -> :sswitch_1
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x47 -> :sswitch_4
        0x48 -> :sswitch_5
        0x4b -> :sswitch_6
        0x4d -> :sswitch_7
        0x53 -> :sswitch_8
        0x57 -> :sswitch_9
        0x5a -> :sswitch_12
        0x61 -> :sswitch_a
        0x64 -> :sswitch_b
        0x68 -> :sswitch_c
        0x6b -> :sswitch_d
        0x6d -> :sswitch_e
        0x73 -> :sswitch_f
        0x77 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
    .end sparse-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .locals 9
    .param p1, "definingCalendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x0

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v4, "regex":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "collector":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/lang3/time/FastDateParser$Strategy;>;"
    sget-object v5, Lorg/apache/commons/lang3/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 145
    .local v3, "patternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal pattern character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/lang3/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 151
    iget-object v5, p0, Lorg/apache/commons/lang3/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v1

    .line 153
    .local v1, "currentStrategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 154
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    iput-object v7, p0, Lorg/apache/commons/lang3/time/FastDateParser;->nextStrategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 166
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 167
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" ; gave up at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "nextFormatField":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/lang3/time/FastDateParser;->nextStrategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 160
    invoke-virtual {v1, p0, v4}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->addRegex(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    iput-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->nextStrategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 165
    goto :goto_0

    .line 169
    .end local v2    # "nextFormatField":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, p0, v4}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->addRegex(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_4
    iput-object v7, p0, Lorg/apache/commons/lang3/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    iput-object v5, p0, Lorg/apache/commons/lang3/time/FastDateParser;->strategies:[Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/lang3/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    .line 175
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 264
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, "definingCalendar":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser;->init(Ljava/util/Calendar;)V

    .line 266
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 222
    instance-of v2, p1, Lorg/apache/commons/lang3/time/FastDateParser;

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 225
    check-cast v0, Lorg/apache/commons/lang3/time/FastDateParser;

    .line 226
    .local v0, "other":Lorg/apache/commons/lang3/time/FastDateParser;
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method getFieldWidth()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method isNextNumber()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->nextStrategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->nextStrategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 281
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v4}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 282
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_1

    .line 284
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v2, Lorg/apache/commons/lang3/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " locale does not support dates before 1868 AD)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Unparseable date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" does not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 289
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unparseable date: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" does not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 291
    :cond_1
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 307
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 308
    .local v4, "offset":I
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 309
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_0

    .line 310
    const/4 v6, 0x0

    .line 321
    :goto_0
    return-object v6

    .line 313
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v7, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 314
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser;->strategies:[Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 317
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser;->strategies:[Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v5, v6, v1

    .line 318
    .local v5, "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v0, v6}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    move v1, v2

    .line 319
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 320
    .end local v5    # "strategy":Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 321
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
