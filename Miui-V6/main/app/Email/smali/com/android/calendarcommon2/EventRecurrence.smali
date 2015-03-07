.class public Lcom/android/calendarcommon2/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon2/EventRecurrence$1;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByMonth;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByMonthDay;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseInterval;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseCount;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseUntil;,
        Lcom/android/calendarcommon2/EventRecurrence$ParseFreq;,
        Lcom/android/calendarcommon2/EventRecurrence$PartParser;,
        Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field private static final ALLOW_LOWER_CASE:Z = true

.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field private static final ONLY_ONE_UNTIL_COUNT:Z = false

.field private static final PARSED_BYDAY:I = 0x80

.field private static final PARSED_BYHOUR:I = 0x40

.field private static final PARSED_BYMINUTE:I = 0x20

.field private static final PARSED_BYMONTH:I = 0x800

.field private static final PARSED_BYMONTHDAY:I = 0x100

.field private static final PARSED_BYSECOND:I = 0x10

.field private static final PARSED_BYSETPOS:I = 0x1000

.field private static final PARSED_BYWEEKNO:I = 0x400

.field private static final PARSED_BYYEARDAY:I = 0x200

.field private static final PARSED_COUNT:I = 0x4

.field private static final PARSED_FREQ:I = 0x1

.field private static final PARSED_INTERVAL:I = 0x8

.field private static final PARSED_UNTIL:I = 0x2

.field private static final PARSED_WKST:I = 0x2000

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field private static TAG:Ljava/lang/String; = null

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field private static final VALIDATE_UNTIL:Z = false

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7

.field private static final sParseFreqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParsePartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendarcommon2/EventRecurrence$PartParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final sParseWeekdayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string/jumbo v0, "EventRecur"

    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    .line 84
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FREQ"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseFreq;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseFreq;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "UNTIL"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseUntil;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseUntil;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "COUNT"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseCount;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseCount;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "INTERVAL"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseInterval;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseInterval;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYSECOND"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySecond;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMINUTE"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYHOUR"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByHour;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYDAY"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByDay;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMONTHDAY"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonthDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonthDay;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYYEARDAY"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByYearDay;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYWEEKNO"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByWeekNo;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYMONTH"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonth;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMonth;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "BYSETPOS"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string/jumbo v1, "WKST"

    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseWkst;-><init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    .line 119
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string/jumbo v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string/jumbo v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string/jumbo v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string/jumbo v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    .line 131
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SU"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MO"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TU"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string/jumbo v1, "WE"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TH"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FR"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SA"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    return-void
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/calendarcommon2/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p1, "s"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # I

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 314
    .local v0, "n":I
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/android/calendarcommon2/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "values"    # [I

    .prologue
    .line 300
    if-lez p2, :cond_1

    .line 301
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 p2, p2, -0x1

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 304
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static arraysEqual([II[II)Z
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "count1"    # I
    .param p2, "array2"    # [I
    .param p3, "count2"    # I

    .prologue
    const/4 v1, 0x0

    .line 458
    if-eq p1, p3, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 463
    aget v2, p0, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static calendarDay2Day(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 172
    packed-switch p0, :pswitch_data_0

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_0
    const/high16 v0, 0x10000

    .line 187
    :goto_0
    return v0

    .line 177
    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    .line 179
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 181
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 183
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 185
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 187
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 245
    sparse-switch p0, :sswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :sswitch_0
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 250
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 252
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 254
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 256
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 258
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 260
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method private static day2String(I)Ljava/lang/String;
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 277
    sparse-switch p0, :sswitch_data_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :sswitch_0
    const-string/jumbo v0, "SU"

    .line 291
    :goto_0
    return-object v0

    .line 281
    :sswitch_1
    const-string/jumbo v0, "MO"

    goto :goto_0

    .line 283
    :sswitch_2
    const-string/jumbo v0, "TU"

    goto :goto_0

    .line 285
    :sswitch_3
    const-string/jumbo v0, "WE"

    goto :goto_0

    .line 287
    :sswitch_4
    const-string/jumbo v0, "TH"

    goto :goto_0

    .line 289
    :sswitch_5
    const-string/jumbo v0, "FR"

    goto :goto_0

    .line 291
    :sswitch_6
    const-string/jumbo v0, "SA"

    goto :goto_0

    .line 277
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 217
    sparse-switch p0, :sswitch_data_0

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :sswitch_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 222
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 226
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 228
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 230
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 232
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method private resetFields()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 517
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 520
    return-void
.end method

.method public static timeDay2Day(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 195
    packed-switch p0, :pswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :pswitch_0
    const/high16 v0, 0x10000

    .line 210
    :goto_0
    return v0

    .line 200
    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    .line 202
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 204
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 206
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 208
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 210
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 472
    if-ne p0, p1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v1

    .line 475
    :cond_1
    instance-of v3, p1, Lcom/android/calendarcommon2/EventRecurrence;

    if-nez v3, :cond_2

    move v1, v2

    .line 476
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 479
    check-cast v0, Lcom/android/calendarcommon2/EventRecurrence;

    .line 480
    .local v0, "er":Lcom/android/calendarcommon2/EventRecurrence;
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    iget-object v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    iget v6, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    invoke-static {v3, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 14
    .param p1, "recur"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence;->resetFields()V

    .line 595
    const/4 v6, 0x0

    .line 598
    .local v6, "parseFlags":I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 602
    .local v9, "parts":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v8, v0, v3

    .line 604
    .local v8, "part":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 602
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 607
    :cond_1
    const/16 v11, 0x3d

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 608
    .local v1, "equalIndex":I
    if-gtz v1, :cond_2

    .line 610
    new-instance v11, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Missing LHS in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 613
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 614
    .local v5, "lhs":Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, "rhs":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 616
    new-instance v11, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Missing RHS in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 623
    :cond_3
    sget-object v11, Lcom/android/calendarcommon2/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendarcommon2/EventRecurrence$PartParser;

    .line 624
    .local v7, "parser":Lcom/android/calendarcommon2/EventRecurrence$PartParser;
    if-nez v7, :cond_4

    .line 625
    const-string/jumbo v11, "X-"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 629
    new-instance v11, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Couldn\'t find parser for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 631
    :cond_4
    invoke-virtual {v7, v10, p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;->parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I

    move-result v2

    .line 632
    .local v2, "flag":I
    and-int v11, v6, v2

    if-eqz v11, :cond_5

    .line 633
    new-instance v11, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Part "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " was specified twice"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 635
    :cond_5
    or-int/2addr v6, v2

    goto/16 :goto_1

    .line 640
    .end local v1    # "equalIndex":I
    .end local v2    # "flag":I
    .end local v5    # "lhs":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/calendarcommon2/EventRecurrence$PartParser;
    .end local v8    # "part":Ljava/lang/String;
    .end local v10    # "rhs":Ljava/lang/String;
    :cond_6
    and-int/lit16 v11, v6, 0x2000

    if-nez v11, :cond_7

    .line 641
    const/high16 v11, 0x20000

    iput v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    .line 645
    :cond_7
    and-int/lit8 v11, v6, 0x1

    if-nez v11, :cond_8

    .line 646
    new-instance v11, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    const-string/jumbo v12, "Must specify a FREQ value"

    invoke-direct {v11, v12}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 650
    :cond_8
    and-int/lit8 v11, v6, 0x6

    const/4 v12, 0x6

    if-ne v11, v12, :cond_9

    .line 654
    sget-object v11, Lcom/android/calendarcommon2/EventRecurrence;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Warning: rrule has both UNTIL and COUNT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 657
    :cond_9
    return-void
.end method

.method public repeatsMonthlyOnDayCount()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 432
    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-nez v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v2, v2, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 444
    goto :goto_0
.end method

.method public repeatsOnEveryWeekDay()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 399
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    if-eq v4, v5, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v3

    .line 403
    :cond_1
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 404
    .local v0, "count":I
    if-ne v0, v5, :cond_0

    .line 408
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 409
    iget-object v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v1, v4, v2

    .line 410
    .local v1, "day":I
    const/high16 v4, 0x10000

    if-eq v1, v4, :cond_0

    const/high16 v4, 0x400000

    if-eq v1, v4, :cond_0

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    .end local v1    # "day":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .locals 0
    .param p1, "date"    # Landroid/text/format/Time;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_0

    .line 353
    :goto_0
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 354
    const-string/jumbo v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_0
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-eqz v3, :cond_1

    .line 359
    const-string/jumbo v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    :cond_1
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-eqz v3, :cond_2

    .line 364
    const-string/jumbo v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    :cond_2
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    if-eqz v3, :cond_3

    .line 369
    const-string/jumbo v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    invoke-static {v3}, Lcom/android/calendarcommon2/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_3
    const-string/jumbo v3, ";BYSECOND="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 374
    const-string/jumbo v3, ";BYMINUTE="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 375
    const-string/jumbo v3, ";BYSECOND="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 378
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 379
    .local v0, "count":I
    if-lez v0, :cond_5

    .line 380
    const-string/jumbo v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    add-int/lit8 v0, v0, -0x1

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 383
    invoke-direct {p0, v2, v1}, Lcom/android/calendarcommon2/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 384
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "count":I
    .end local v1    # "i":I
    :pswitch_0
    const-string/jumbo v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 334
    :pswitch_1
    const-string/jumbo v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 337
    :pswitch_2
    const-string/jumbo v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 340
    :pswitch_3
    const-string/jumbo v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 343
    :pswitch_4
    const-string/jumbo v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 346
    :pswitch_5
    const-string/jumbo v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 349
    :pswitch_6
    const-string/jumbo v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 386
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/android/calendarcommon2/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 389
    .end local v1    # "i":I
    :cond_5
    const-string/jumbo v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 390
    const-string/jumbo v3, ";BYYEARDAY="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 391
    const-string/jumbo v3, ";BYWEEKNO="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 392
    const-string/jumbo v3, ";BYMONTH="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 393
    const-string/jumbo v3, ";BYSETPOS="

    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 395
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
