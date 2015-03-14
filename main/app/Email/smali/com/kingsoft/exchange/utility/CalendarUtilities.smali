.class public Lcom/kingsoft/exchange/utility/CalendarUtilities;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;,
        Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    }
.end annotation


# static fields
.field private static final ALLOWED_ATTENDEE_TYPES:Ljava/lang/String; = "0,1,2"

.field private static final ALLOWED_AVAILABILITIES:Ljava/lang/String; = "0,1,2"

.field private static final ALLOWED_REMINDER_TYPES:Ljava/lang/String; = "0,1"

.field public static final BUSY_STATUS_BUSY:I = 0x2

.field public static final BUSY_STATUS_FREE:I = 0x0

.field public static final BUSY_STATUS_OUT_OF_OFFICE:I = 0x3

.field public static final BUSY_STATUS_TENTATIVE:I = 0x1

.field public static final DATE_STRING_LENGTH:I = 0x10

.field static final DAYS:J = 0x5265c00L

.field protected static final EAS_FRIDAY:I = 0x20

.field protected static final EAS_MONDAY:I = 0x2

.field protected static final EAS_SATURDAY:I = 0x40

.field protected static final EAS_SUNDAY:I = 0x1

.field protected static final EAS_THURSDAY:I = 0x10

.field protected static final EAS_TUESDAY:I = 0x4

.field protected static final EAS_WEDNESDAY:I = 0x8

.field protected static final EAS_WEEKDAYS:I = 0x3e

.field protected static final EAS_WEEKENDS:I = 0x41

.field static final HOURS:I = 0x36ee80

.field private static final ICALENDAR_ATTENDEE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field static final ICALENDAR_ATTENDEE_ACCEPT:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

.field static final ICALENDAR_ATTENDEE_CANCEL:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field static final ICALENDAR_ATTENDEE_DECLINE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

.field static final ICALENDAR_ATTENDEE_INVITE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

.field static final ICALENDAR_ATTENDEE_TENTATIVE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

.field static final LENIENT_DST_PRECISION:I = 0xdbba00

.field static final MINUTES:I = 0xea60

.field static final MSFT_LONG_SIZE:I = 0x4

.field static final MSFT_SYSTEMTIME_DAY:I = 0x6

.field static final MSFT_SYSTEMTIME_DAY_OF_WEEK:I = 0x4

.field static final MSFT_SYSTEMTIME_HOUR:I = 0x8

.field static final MSFT_SYSTEMTIME_MINUTE:I = 0xa

.field static final MSFT_SYSTEMTIME_MONTH:I = 0x2

.field static final MSFT_SYSTEMTIME_SIZE:I = 0x10

.field static final MSFT_SYSTEMTIME_YEAR:I = 0x0

.field static final MSFT_TIME_ZONE_BIAS_OFFSET:I = 0x0

.field static final MSFT_TIME_ZONE_DAYLIGHT_BIAS_OFFSET:I = 0xa8

.field static final MSFT_TIME_ZONE_DAYLIGHT_DATE_OFFSET:I = 0x98

.field static final MSFT_TIME_ZONE_DAYLIGHT_NAME_OFFSET:I = 0x58

.field static final MSFT_TIME_ZONE_SIZE:I = 0xac

.field static final MSFT_TIME_ZONE_STANDARD_BIAS_OFFSET:I = 0x54

.field static final MSFT_TIME_ZONE_STANDARD_DATE_OFFSET:I = 0x44

.field static final MSFT_TIME_ZONE_STANDARD_NAME_OFFSET:I = 0x4

.field static final MSFT_TIME_ZONE_STRING_SIZE:I = 0x20

.field static final MSFT_WCHAR_SIZE:I = 0x2

.field static final MSFT_WORD_SIZE:I = 0x2

.field public static final RESPONSE_TYPE_ACCEPTED:I = 0x3

.field public static final RESPONSE_TYPE_DECLINED:I = 0x4

.field public static final RESPONSE_TYPE_NONE:I = 0x0

.field public static final RESPONSE_TYPE_NOT_RESPONDED:I = 0x5

.field public static final RESPONSE_TYPE_ORGANIZER:I = 0x1

.field public static final RESPONSE_TYPE_TENTATIVE:I = 0x2

.field static final SECONDS:I = 0x3e8

.field static final STANDARD_DST_PRECISION:I = 0xea60

.field private static final SYNC_VERSION:Ljava/lang/String; = "sync_data4"

.field private static final TAG:Ljava/lang/String; = "Exchange"

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field static final sCurrentYear:I

.field static final sDayTokens:[Ljava/lang/String;

.field static final sGmtTimeZone:Ljava/util/TimeZone;

.field private static sTimeZoneCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field static final sTwoCharacterNumbers:[Ljava/lang/String;

.field static final sTypeToFreq:[Ljava/lang/String;

.field private static sTziStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    .line 118
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DAILY"

    aput-object v1, v0, v4

    const-string/jumbo v1, "WEEKLY"

    aput-object v1, v0, v3

    const-string/jumbo v1, "MONTHLY"

    aput-object v1, v0, v5

    const-string/jumbo v1, "MONTHLY"

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "YEARLY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "YEARLY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    .line 130
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SU"

    aput-object v1, v0, v4

    const-string/jumbo v1, "MO"

    aput-object v1, v0, v3

    const-string/jumbo v1, "TU"

    aput-object v1, v0, v5

    const-string/jumbo v1, "WE"

    aput-object v1, v0, v6

    const-string/jumbo v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .line 133
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "00"

    aput-object v1, v0, v4

    const-string/jumbo v1, "01"

    aput-object v1, v0, v3

    const-string/jumbo v1, "02"

    aput-object v1, v0, v5

    const-string/jumbo v1, "03"

    aput-object v1, v0, v6

    const-string/jumbo v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sput v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sCurrentYear:I

    .line 149
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method

.method private static addAttendeeToMessage(Lcom/kingsoft/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V
    .locals 3
    .param p0, "ics"    # Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    .param p2, "attendeeName"    # Ljava/lang/String;
    .param p3, "attendeeEmail"    # Ljava/lang/String;
    .param p4, "messageFlag"    # I
    .param p5, "account"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/exchange/utility/SimpleIcsWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/emailcommon/provider/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1663
    .local p1, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    and-int/lit8 v1, p4, 0x30

    if-eqz v1, :cond_4

    .line 1664
    const-string/jumbo v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    .line 1665
    .local v0, "icalTag":Ljava/lang/String;
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_0

    .line 1666
    const-string/jumbo v0, "ATTENDEE;ROLE=REQ-PARTICIPANT"

    .line 1668
    :cond_0
    if-eqz p2, :cond_1

    .line 1669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";CN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1671
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    if-nez p2, :cond_3

    new-instance v1, Lcom/kingsoft/emailcommon/mail/Address;

    invoke-direct {v1, p3}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    .end local v0    # "icalTag":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1672
    .restart local v0    # "icalTag":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/kingsoft/emailcommon/mail/Address;

    invoke-direct {v1, p3, p2}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    .end local v0    # "icalTag":Ljava/lang/String;
    :cond_4
    iget-object v1, p5, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1675
    const/4 v0, 0x0

    .line 1676
    .restart local v0    # "icalTag":Ljava/lang/String;
    sparse-switch p4, :sswitch_data_0

    .line 1687
    :goto_2
    if-eqz v0, :cond_2

    .line 1688
    if-eqz p2, :cond_5

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";CN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1692
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MAILTO:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1678
    :sswitch_0
    const-string/jumbo v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

    .line 1679
    goto :goto_2

    .line 1681
    :sswitch_1
    const-string/jumbo v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

    .line 1682
    goto :goto_2

    .line 1684
    :sswitch_2
    const-string/jumbo v0, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

    goto :goto_2

    .line 1676
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method private static addByDay(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 4
    .param p0, "byDay"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1178
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1180
    .local v1, "weekOfMonth":I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1182
    const/4 v1, 0x5

    .line 1183
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "bareByDay":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1189
    const/16 v2, 0x120

    invoke-static {v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1190
    return-void

    .line 1185
    .end local v0    # "bareByDay":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, -0x30

    .line 1186
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "bareByDay":Ljava/lang/String;
    goto :goto_0
.end method

.method static addByDay(Ljava/lang/StringBuilder;II)V
    .locals 4
    .param p0, "rrule"    # Ljava/lang/StringBuilder;
    .param p1, "dow"    # I
    .param p2, "wom"    # I

    .prologue
    .line 1063
    const-string/jumbo v2, ";BYDAY="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const/4 v0, 0x0

    .line 1065
    .local v0, "addComma":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 1066
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1067
    if-eqz v0, :cond_0

    .line 1068
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1070
    :cond_0
    if-lez p2, :cond_1

    .line 1073
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1075
    :cond_1
    sget-object v2, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const/4 v0, 0x1

    .line 1078
    :cond_2
    shr-int/lit8 p1, p1, 0x1

    .line 1065
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, p2

    .line 1073
    goto :goto_1

    .line 1080
    :cond_4
    return-void
.end method

.method private static addByDaySetpos(Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 3
    .param p0, "byDay"    # Ljava/lang/String;
    .param p1, "bySetpos"    # Ljava/lang/String;
    .param p2, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1194
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1195
    .local v0, "weekOfMonth":I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 1197
    const/4 v0, 0x5

    .line 1201
    :goto_0
    const/16 v1, 0x122

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1202
    const/16 v1, 0x120

    invoke-static {p0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1203
    return-void

    .line 1199
    :cond_0
    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method static addByMonthDay(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "rrule"    # Ljava/lang/StringBuilder;
    .param p1, "dom"    # I

    .prologue
    .line 1091
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 1092
    const/4 p1, -0x1

    .line 1094
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    return-void
.end method

.method static addBySetpos(Ljava/lang/StringBuilder;II)V
    .locals 1
    .param p0, "rrule"    # Ljava/lang/StringBuilder;
    .param p1, "dow"    # I
    .param p2, "wom"    # I

    .prologue
    .line 1084
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1085
    const-string/jumbo v0, ";BYSETPOS="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "-1"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1087
    return-void

    .line 1086
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 5
    .param p0, "rrule"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    const-string/jumbo v3, "COUNT="

    invoke-static {p0, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "count":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1163
    const/16 v3, 0x11e

    invoke-virtual {p1, v3, v0}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1165
    :cond_0
    const-string/jumbo v3, "INTERVAL="

    invoke-static {p0, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, "interval":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1167
    const/16 v3, 0x11f

    invoke-virtual {p1, v3, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1169
    :cond_1
    const-string/jumbo v3, "UNTIL="

    invoke-static {p0, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "until":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 1172
    const/16 v3, 0x11d

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1174
    :cond_2
    return-void
.end method

.method static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 1440
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "caller_is_syncadapter"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static attendeeStatusFromBusyStatus(I)I
    .locals 1
    .param p0, "busyStatus"    # I

    .prologue
    .line 1491
    packed-switch p0, :pswitch_data_0

    .line 1501
    const/4 v0, 0x0

    .line 1503
    .local v0, "attendeeStatus":I
    :goto_0
    return v0

    .line 1493
    .end local v0    # "attendeeStatus":I
    :pswitch_0
    const/4 v0, 0x1

    .line 1494
    .restart local v0    # "attendeeStatus":I
    goto :goto_0

    .line 1496
    .end local v0    # "attendeeStatus":I
    :pswitch_1
    const/4 v0, 0x4

    .line 1497
    .restart local v0    # "attendeeStatus":I
    goto :goto_0

    .line 1491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static attendeeStatusFromResponseType(I)I
    .locals 1
    .param p0, "responseType"    # I

    .prologue
    .line 1514
    packed-switch p0, :pswitch_data_0

    .line 1528
    const/4 v0, 0x0

    .line 1530
    .local v0, "attendeeStatus":I
    :goto_0
    return v0

    .line 1516
    .end local v0    # "attendeeStatus":I
    :pswitch_0
    const/4 v0, 0x3

    .line 1517
    .restart local v0    # "attendeeStatus":I
    goto :goto_0

    .line 1519
    .end local v0    # "attendeeStatus":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1520
    .restart local v0    # "attendeeStatus":I
    goto :goto_0

    .line 1522
    .end local v0    # "attendeeStatus":I
    :pswitch_2
    const/4 v0, 0x4

    .line 1523
    .restart local v0    # "attendeeStatus":I
    goto :goto_0

    .line 1525
    .end local v0    # "attendeeStatus":I
    :pswitch_3
    const/4 v0, 0x2

    .line 1526
    .restart local v0    # "attendeeStatus":I
    goto :goto_0

    .line 1514
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static availabilityFromBusyStatus(I)I
    .locals 1
    .param p0, "busyStatus"    # I

    .prologue
    .line 1586
    packed-switch p0, :pswitch_data_0

    .line 1595
    :pswitch_0
    const/4 v0, 0x2

    .line 1598
    .local v0, "availability":I
    :goto_0
    return v0

    .line 1588
    .end local v0    # "availability":I
    :pswitch_1
    const/4 v0, 0x0

    .line 1589
    .restart local v0    # "availability":I
    goto :goto_0

    .line 1591
    .end local v0    # "availability":I
    :pswitch_2
    const/4 v0, 0x1

    .line 1592
    .restart local v0    # "availability":I
    goto :goto_0

    .line 1586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entityValues"    # Landroid/content/ContentValues;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1603
    if-nez p2, :cond_0

    .line 1604
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1606
    .restart local p2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1614
    .local v9, "resources":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1615
    .local v2, "allDayEvent":Z
    const-string/jumbo v12, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1616
    const-string/jumbo v12, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1617
    .local v1, "ade":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v2, 0x1

    .line 1619
    .end local v1    # "ade":Ljava/lang/Integer;
    :cond_1
    :goto_0
    const-string/jumbo v12, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v7, 0x1

    .line 1624
    .local v7, "recurringEvent":Z
    :goto_1
    const-string/jumbo v12, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1625
    .local v10, "startTime":J
    if-eqz v2, :cond_7

    .line 1626
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v12

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 1627
    .local v3, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1628
    .local v4, "dateTimeString":Ljava/lang/String;
    if-eqz v7, :cond_6

    const v8, 0x7f100247

    .line 1633
    .end local v3    # "date":Ljava/util/Date;
    .local v8, "res":I
    :goto_2
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-virtual {v9, v8, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    const/4 v6, 0x0

    .line 1636
    .local v6, "location":Ljava/lang/String;
    const-string/jumbo v12, "eventLocation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1637
    const-string/jumbo v12, "eventLocation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1638
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1639
    const-string/jumbo v12, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    const v12, 0x7f10024e

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    :cond_2
    const-string/jumbo v12, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1645
    .local v5, "desc":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1646
    const-string/jumbo v12, "\n--\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 1617
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "desc":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "recurringEvent":Z
    .end local v8    # "res":I
    .end local v10    # "startTime":J
    .restart local v1    # "ade":Ljava/lang/Integer;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1619
    .end local v1    # "ade":Ljava/lang/Integer;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1628
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "dateTimeString":Ljava/lang/String;
    .restart local v7    # "recurringEvent":Z
    .restart local v10    # "startTime":J
    :cond_6
    const v8, 0x7f100246

    goto :goto_2

    .line 1630
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateTimeString":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1631
    .restart local v4    # "dateTimeString":Ljava/lang/String;
    if-eqz v7, :cond_8

    const v8, 0x7f10024a

    .restart local v8    # "res":I
    :goto_3
    goto :goto_2

    .end local v8    # "res":I
    :cond_8
    const v8, 0x7f10024d

    goto :goto_3
.end method

.method public static busyStatusFromAttendeeStatus(I)I
    .locals 1
    .param p0, "selfAttendeeStatus"    # I

    .prologue
    .line 1540
    packed-switch p0, :pswitch_data_0

    .line 1551
    :pswitch_0
    const/4 v0, 0x2

    .line 1554
    .local v0, "busyStatus":I
    :goto_0
    return v0

    .line 1544
    .end local v0    # "busyStatus":I
    :pswitch_1
    const/4 v0, 0x0

    .line 1545
    .restart local v0    # "busyStatus":I
    goto :goto_0

    .line 1547
    .end local v0    # "busyStatus":I
    :pswitch_2
    const/4 v0, 0x1

    .line 1548
    .restart local v0    # "busyStatus":I
    goto :goto_0

    .line 1540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static busyStatusFromAvailability(I)I
    .locals 1
    .param p0, "availability"    # I

    .prologue
    .line 1564
    packed-switch p0, :pswitch_data_0

    .line 1573
    const/4 v0, 0x1

    .line 1576
    .local v0, "busyStatus":I
    :goto_0
    return v0

    .line 1566
    .end local v0    # "busyStatus":I
    :pswitch_0
    const/4 v0, 0x2

    .line 1567
    .restart local v0    # "busyStatus":I
    goto :goto_0

    .line 1569
    .end local v0    # "busyStatus":I
    :pswitch_1
    const/4 v0, 0x0

    .line 1570
    .restart local v0    # "busyStatus":I
    goto :goto_0

    .line 1564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static calendarToBirthdayString(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 3
    .param p0, "cal"    # Ljava/util/GregorianCalendar;

    .prologue
    const/16 v2, 0x2d

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 945
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static clearTimeZoneCache()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 237
    sget-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 238
    return-void
.end method

.method public static convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCalendar(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1405
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1407
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "calendar_displayName"

    iget-object v5, p3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string/jumbo v4, "account_name"

    iget-object v5, p2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string/jumbo v4, "account_type"

    const-string/jumbo v5, "com.android.exchange"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v4, "sync_events"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string/jumbo v4, "_sync_id"

    iget-object v5, p3, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string/jumbo v4, "visible"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    const-string/jumbo v4, "canOrganizerRespond"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1415
    const-string/jumbo v4, "canModifyTimeZone"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    const-string/jumbo v4, "maxReminders"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1417
    const-string/jumbo v4, "allowedReminders"

    const-string/jumbo v5, "0,1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v4, "allowedAttendeeTypes"

    const-string/jumbo v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string/jumbo v4, "allowedAvailability"

    const-string/jumbo v5, "0,1,2"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    new-instance v4, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v4, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v5, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v4, v5, v6}, Lcom/android/emailcommon/service/AccountServiceProxy;->getAccountColor(J)I

    move-result v0

    .line 1423
    .local v0, "color":I
    const-string/jumbo v4, "calendar_color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1424
    const-string/jumbo v4, "calendar_timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string/jumbo v4, "calendar_access_level"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1426
    const-string/jumbo v4, "ownerAccount"

    iget-object v5, p2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v6, "com.android.exchange"

    invoke-static {v4, v5, v6}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1431
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1432
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1433
    .local v2, "stringId":Ljava/lang/String;
    iput-object v2, p3, Lcom/android/emailcommon/provider/Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 1434
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1436
    .end local v2    # "stringId":Ljava/lang/String;
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "messageFlag"    # I
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 1707
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 54
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Landroid/content/Entity;
    .param p2, "messageFlag"    # I
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p5, "specifiedAttendee"    # Ljava/lang/String;

    .prologue
    .line 1713
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 1714
    .local v23, "entityValues":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v47

    .line 1715
    .local v47, "subValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const-string/jumbo v7, "original_sync_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    .line 1716
    .local v28, "isException":Z
    const/16 v29, 0x0

    .line 1718
    .local v29, "isReply":Z
    new-instance v32, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct/range {v32 .. v32}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 1719
    .local v32, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    move/from16 v0, p2

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, v32

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1723
    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_11

    .line 1724
    const-string/jumbo v31, "REQUEST"

    .line 1734
    .local v31, "method":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v3, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;

    invoke-direct {v3}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;-><init>()V

    .line 1735
    .local v3, "ics":Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    const-string/jumbo v7, "BEGIN"

    const-string/jumbo v8, "VCALENDAR"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string/jumbo v7, "METHOD"

    move-object/from16 v0, v31

    invoke-virtual {v3, v7, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    const-string/jumbo v7, "PRODID"

    const-string/jumbo v8, "AndroidEmail"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const-string/jumbo v7, "VERSION"

    const-string/jumbo v8, "2.0"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    sget-object v53, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 1743
    .local v53, "vCalendarTimeZone":Ljava/util/TimeZone;
    const-string/jumbo v52, ""

    .line 1746
    .local v52, "vCalendarDateSuffix":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1747
    .local v15, "allDayEvent":Z
    const-string/jumbo v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1748
    const-string/jumbo v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 1749
    .local v14, "ade":Ljava/lang/Integer;
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    const/4 v15, 0x1

    .line 1750
    :goto_1
    if-eqz v15, :cond_0

    .line 1752
    const-string/jumbo v52, ";VALUE=DATE"

    .line 1760
    .end local v14    # "ade":Ljava/lang/Integer;
    :cond_0
    if-nez v29, :cond_2

    if-nez v15, :cond_2

    const-string/jumbo v7, "rrule"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "original_sync_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1763
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v53

    .line 1765
    move-object/from16 v0, v53

    invoke-static {v0, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/kingsoft/exchange/utility/SimpleIcsWriter;)V

    .line 1767
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ";TZID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v53 .. v53}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 1770
    :cond_2
    const-string/jumbo v7, "BEGIN"

    const-string/jumbo v8, "VEVENT"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    if-nez p3, :cond_3

    .line 1772
    const-string/jumbo v7, "sync_data2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1774
    :cond_3
    if-eqz p3, :cond_4

    .line 1775
    const-string/jumbo v7, "UID"

    move-object/from16 v0, p3

    invoke-virtual {v3, v7, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    :cond_4
    const-string/jumbo v7, "DTSTAMP"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1779
    const-string/jumbo v7, "DTSTAMP"

    const-string/jumbo v8, "DTSTAMP"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    :goto_2
    const-string/jumbo v7, "dtstart"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v45

    .line 1785
    .local v45, "startTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v45, v7

    if-eqz v7, :cond_5

    .line 1786
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DTSTART"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v15, :cond_15

    const/4 v7, 0x1

    :goto_3
    move-wide/from16 v0, v45

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    :cond_5
    if-eqz v28, :cond_6

    .line 1793
    const-string/jumbo v7, "originalInstanceTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 1794
    .local v38, "originalTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RECURRENCE-ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v15, :cond_16

    const/4 v7, 0x1

    :goto_4
    move-wide/from16 v0, v38

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    .end local v38    # "originalTime":J
    :cond_6
    const-string/jumbo v7, "duration"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1799
    const-string/jumbo v7, "dtend"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1800
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DTEND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "dtend"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    if-nez v15, :cond_17

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v53

    invoke-static {v9, v10, v0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    :cond_7
    :goto_6
    const/16 v30, 0x0

    .line 1822
    .local v30, "location":Ljava/lang/String;
    const-string/jumbo v7, "eventLocation"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1823
    const-string/jumbo v7, "eventLocation"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1824
    const-string/jumbo v7, "LOCATION"

    move-object/from16 v0, v30

    invoke-virtual {v3, v7, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :cond_8
    const-string/jumbo v7, "sync_data4"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1828
    .local v44, "sequence":Ljava/lang/String;
    if-nez v44, :cond_9

    .line 1829
    const-string/jumbo v44, "0"

    .line 1833
    :cond_9
    const/16 v50, 0x0

    .line 1834
    .local v50, "titleId":I
    sparse-switch p2, :sswitch_data_0

    .line 1853
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    .line 1854
    .local v41, "resources":Landroid/content/res/Resources;
    const-string/jumbo v7, "title"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1855
    .local v49, "title":Ljava/lang/String;
    if-nez v49, :cond_b

    .line 1856
    const-string/jumbo v49, ""

    .line 1858
    :cond_b
    const-string/jumbo v7, "SUMMARY"

    move-object/from16 v0, v49

    invoke-virtual {v3, v7, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    if-nez v50, :cond_1a

    .line 1861
    move-object/from16 v0, v49

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1869
    :goto_8
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    .line 1870
    .local v43, "sb":Ljava/lang/StringBuilder;
    if-eqz v28, :cond_c

    if-nez v29, :cond_c

    .line 1872
    new-instance v17, Ljava/util/Date;

    const-string/jumbo v7, "originalInstanceTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1873
    .local v17, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 1874
    .local v18, "dateString":Ljava/lang/String;
    const v7, 0x7f100248

    move/from16 v0, v50

    if-ne v0, v7, :cond_1b

    .line 1875
    const v7, 0x7f1001a5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    :goto_9
    const-string/jumbo v7, "\n\n"

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    .end local v17    # "date":Ljava/util/Date;
    .end local v18    # "dateString":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v48

    .line 1884
    .local v48, "text":Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_d

    .line 1885
    const-string/jumbo v7, "DESCRIPTION"

    move-object/from16 v0, v48

    invoke-virtual {v3, v7, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    :cond_d
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1889
    if-nez v29, :cond_f

    .line 1890
    const-string/jumbo v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1891
    const-string/jumbo v7, "allDay"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 1892
    .restart local v14    # "ade":Ljava/lang/Integer;
    const-string/jumbo v8, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1c

    const-string/jumbo v7, "FALSE"

    :goto_a
    invoke-virtual {v3, v8, v7}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    .end local v14    # "ade":Ljava/lang/Integer;
    :cond_e
    const-string/jumbo v7, "rrule"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1896
    .local v42, "rrule":Ljava/lang/String;
    if-eqz v42, :cond_f

    .line 1897
    const-string/jumbo v7, "RRULE"

    move-object/from16 v0, v42

    invoke-virtual {v3, v7, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    .end local v42    # "rrule":Ljava/lang/String;
    :cond_f
    const/16 v37, 0x0

    .line 1906
    .local v37, "organizerName":Ljava/lang/String;
    const/16 v36, 0x0

    .line 1907
    .local v36, "organizerEmail":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    .local v4, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_b
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Entity$NamedContentValues;

    .line 1909
    .local v33, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v34, v0

    .line 1910
    .local v34, "ncvUri":Landroid/net/Uri;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v35, v0

    .line 1911
    .local v35, "ncvValues":Landroid/content/ContentValues;
    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1912
    const-string/jumbo v7, "attendeeRelationship"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v40

    .line 1916
    .local v40, "relationship":Ljava/lang/Integer;
    if-eqz v40, :cond_10

    const-string/jumbo v7, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1919
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d

    .line 1920
    const-string/jumbo v7, "attendeeName"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1921
    const-string/jumbo v7, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v36

    .line 1922
    goto :goto_b

    .line 1725
    .end local v3    # "ics":Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    .end local v4    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    .end local v15    # "allDayEvent":Z
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v30    # "location":Ljava/lang/String;
    .end local v31    # "method":Ljava/lang/String;
    .end local v33    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v34    # "ncvUri":Landroid/net/Uri;
    .end local v35    # "ncvValues":Landroid/content/ContentValues;
    .end local v36    # "organizerEmail":Ljava/lang/String;
    .end local v37    # "organizerName":Ljava/lang/String;
    .end local v40    # "relationship":Ljava/lang/Integer;
    .end local v41    # "resources":Landroid/content/res/Resources;
    .end local v43    # "sb":Ljava/lang/StringBuilder;
    .end local v44    # "sequence":Ljava/lang/String;
    .end local v45    # "startTime":J
    .end local v48    # "text":Ljava/lang/String;
    .end local v49    # "title":Ljava/lang/String;
    .end local v50    # "titleId":I
    .end local v52    # "vCalendarDateSuffix":Ljava/lang/String;
    .end local v53    # "vCalendarTimeZone":Ljava/util/TimeZone;
    :cond_11
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_12

    .line 1726
    const-string/jumbo v31, "CANCEL"

    .restart local v31    # "method":Ljava/lang/String;
    goto/16 :goto_0

    .line 1728
    .end local v31    # "method":Ljava/lang/String;
    :cond_12
    const-string/jumbo v31, "REPLY"

    .line 1729
    .restart local v31    # "method":Ljava/lang/String;
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1749
    .restart local v3    # "ics":Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    .restart local v14    # "ade":Ljava/lang/Integer;
    .restart local v15    # "allDayEvent":Z
    .restart local v52    # "vCalendarDateSuffix":Ljava/lang/String;
    .restart local v53    # "vCalendarTimeZone":Ljava/util/TimeZone;
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1781
    .end local v14    # "ade":Ljava/lang/Integer;
    :cond_14
    :try_start_1
    const-string/jumbo v7, "DTSTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1993
    .end local v3    # "ics":Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    .end local v15    # "allDayEvent":Z
    .end local v52    # "vCalendarDateSuffix":Ljava/lang/String;
    .end local v53    # "vCalendarTimeZone":Ljava/util/TimeZone;
    :catch_0
    move-exception v22

    .line 1994
    .local v22, "e":Ljava/io/IOException;
    const-string/jumbo v7, "Exchange"

    const-string/jumbo v8, "IOException in createMessageForEntity"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1995
    const/16 v32, 0x0

    .line 1999
    .end local v22    # "e":Ljava/io/IOException;
    .end local v32    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_c
    return-object v32

    .line 1786
    .restart local v3    # "ics":Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    .restart local v15    # "allDayEvent":Z
    .restart local v32    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v45    # "startTime":J
    .restart local v52    # "vCalendarDateSuffix":Ljava/lang/String;
    .restart local v53    # "vCalendarTimeZone":Ljava/util/TimeZone;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1794
    .restart local v38    # "originalTime":J
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1800
    .end local v38    # "originalTime":J
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1808
    :cond_18
    const-wide/32 v20, 0x36ee80

    .line 1809
    .local v20, "durationMillis":J
    :try_start_2
    new-instance v19, Lcom/android/calendarcommon2/Duration;

    invoke-direct/range {v19 .. v19}, Lcom/android/calendarcommon2/Duration;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1811
    .local v19, "duration":Lcom/android/calendarcommon2/Duration;
    :try_start_3
    const-string/jumbo v7, "duration"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 1812
    invoke-virtual/range {v19 .. v19}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_3
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v20

    .line 1816
    :goto_d
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DTEND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-long v9, v45, v20

    if-nez v15, :cond_19

    const/4 v7, 0x1

    :goto_e
    move-object/from16 v0, v53

    invoke-static {v9, v10, v0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    const/4 v7, 0x0

    goto :goto_e

    .line 1836
    .end local v19    # "duration":Lcom/android/calendarcommon2/Duration;
    .end local v20    # "durationMillis":J
    .restart local v30    # "location":Ljava/lang/String;
    .restart local v44    # "sequence":Ljava/lang/String;
    .restart local v50    # "titleId":I
    :sswitch_0
    const-string/jumbo v7, "0"

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1837
    const v50, 0x7f10024c

    goto/16 :goto_7

    .line 1841
    :sswitch_1
    const v50, 0x7f100245

    .line 1842
    goto/16 :goto_7

    .line 1844
    :sswitch_2
    const v50, 0x7f100249

    .line 1845
    goto/16 :goto_7

    .line 1847
    :sswitch_3
    const v50, 0x7f10024b

    .line 1848
    goto/16 :goto_7

    .line 1850
    :sswitch_4
    const v50, 0x7f100248

    goto/16 :goto_7

    .line 1864
    .restart local v41    # "resources":Landroid/content/res/Resources;
    .restart local v49    # "title":Ljava/lang/String;
    :cond_1a
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v49, v7, v8

    move-object/from16 v0, v41

    move/from16 v1, v50

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_8

    .line 1877
    .restart local v17    # "date":Ljava/util/Date;
    .restart local v18    # "dateString":Ljava/lang/String;
    .restart local v43    # "sb":Ljava/lang/StringBuilder;
    :cond_1b
    const v7, 0x7f1001a6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    move-object/from16 v0, v41

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1892
    .end local v17    # "date":Ljava/util/Date;
    .end local v18    # "dateString":Ljava/lang/String;
    .restart local v14    # "ade":Ljava/lang/Integer;
    .restart local v48    # "text":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v7, "TRUE"

    goto/16 :goto_a

    .line 1924
    .end local v14    # "ade":Ljava/lang/Integer;
    .restart local v4    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v33    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v34    # "ncvUri":Landroid/net/Uri;
    .restart local v35    # "ncvValues":Landroid/content/ContentValues;
    .restart local v36    # "organizerEmail":Ljava/lang/String;
    .restart local v37    # "organizerName":Ljava/lang/String;
    .restart local v40    # "relationship":Ljava/lang/Integer;
    :cond_1d
    const-string/jumbo v7, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1925
    .local v6, "attendeeEmail":Ljava/lang/String;
    const-string/jumbo v7, "attendeeName"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1928
    .local v5, "attendeeName":Ljava/lang/String;
    if-eqz v6, :cond_10

    .line 1930
    if-eqz p5, :cond_1e

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_1e
    move/from16 v7, p2

    move-object/from16 v8, p4

    .line 1935
    invoke-static/range {v3 .. v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/kingsoft/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V

    goto/16 :goto_b

    .line 1942
    .end local v5    # "attendeeName":Ljava/lang/String;
    .end local v6    # "attendeeEmail":Ljava/lang/String;
    .end local v33    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v34    # "ncvUri":Landroid/net/Uri;
    .end local v35    # "ncvValues":Landroid/content/ContentValues;
    .end local v40    # "relationship":Ljava/lang/Integer;
    :cond_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_20

    if-eqz p5, :cond_20

    .line 1943
    const/4 v9, 0x0

    move-object v7, v3

    move-object v8, v4

    move-object/from16 v10, p5

    move/from16 v11, p2

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/kingsoft/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/emailcommon/provider/Account;)V

    .line 1947
    :cond_20
    if-eqz v36, :cond_22

    .line 1948
    const-string/jumbo v27, "ORGANIZER"

    .line 1951
    .local v27, "icalTag":Ljava/lang/String;
    if-eqz v37, :cond_21

    .line 1952
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";CN="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v37 .. v37}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1954
    :cond_21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MAILTO:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v7}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    if-eqz v29, :cond_22

    .line 1956
    if-nez v37, :cond_23

    new-instance v7, Lcom/kingsoft/emailcommon/mail/Address;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    .end local v27    # "icalTag":Ljava/lang/String;
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 v32, 0x0

    goto/16 :goto_c

    .line 1956
    .restart local v27    # "icalTag":Ljava/lang/String;
    :cond_23
    new-instance v7, Lcom/kingsoft/emailcommon/mail/Address;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 1965
    .end local v27    # "icalTag":Ljava/lang/String;
    :cond_24
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Lcom/kingsoft/emailcommon/mail/Address;

    move-object/from16 v51, v0

    .line 1966
    .local v51, "toArray":[Lcom/kingsoft/emailcommon/mail/Address;
    const/16 v24, 0x0

    .line 1967
    .local v24, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move/from16 v25, v24

    .end local v24    # "i":I
    .local v25, "i":I
    :goto_10
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/emailcommon/mail/Address;

    .line 1968
    .local v13, "address":Lcom/kingsoft/emailcommon/mail/Address;
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "i":I
    .restart local v24    # "i":I
    aput-object v13, v51, v25

    move/from16 v25, v24

    .line 1969
    .end local v24    # "i":I
    .restart local v25    # "i":I
    goto :goto_10

    .line 1970
    .end local v13    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_25
    invoke-static/range {v51 .. v51}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1972
    const-string/jumbo v7, "CLASS"

    const-string/jumbo v8, "PUBLIC"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string/jumbo v8, "STATUS"

    const/16 v7, 0x20

    move/from16 v0, p2

    if-ne v0, v7, :cond_26

    const-string/jumbo v7, "CANCELLED"

    :goto_11
    invoke-virtual {v3, v8, v7}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string/jumbo v7, "TRANSP"

    const-string/jumbo v8, "OPAQUE"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string/jumbo v7, "PRIORITY"

    const-string/jumbo v8, "5"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string/jumbo v7, "SEQUENCE"

    move-object/from16 v0, v44

    invoke-virtual {v3, v7, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string/jumbo v7, "END"

    const-string/jumbo v8, "VEVENT"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string/jumbo v7, "END"

    const-string/jumbo v8, "VCALENDAR"

    invoke-virtual {v3, v7, v8}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    new-instance v16, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1983
    .local v16, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v3}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1984
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "text/calendar; method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1985
    const-string/jumbo v7, "invite.ics"

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1986
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    array-length v7, v7

    int-to-long v7, v7

    move-object/from16 v0, v16

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1988
    const/4 v7, 0x1

    move-object/from16 v0, v16

    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1991
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1992
    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1973
    .end local v16    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_26
    const-string/jumbo v7, "CONFIRMED"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_11

    .line 1813
    .end local v4    # "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    .end local v25    # "i":I
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v30    # "location":Ljava/lang/String;
    .end local v36    # "organizerEmail":Ljava/lang/String;
    .end local v37    # "organizerName":Ljava/lang/String;
    .end local v41    # "resources":Landroid/content/res/Resources;
    .end local v43    # "sb":Ljava/lang/StringBuilder;
    .end local v44    # "sequence":Ljava/lang/String;
    .end local v48    # "text":Ljava/lang/String;
    .end local v49    # "title":Ljava/lang/String;
    .end local v50    # "titleId":I
    .end local v51    # "toArray":[Lcom/kingsoft/emailcommon/mail/Address;
    .restart local v19    # "duration":Lcom/android/calendarcommon2/Duration;
    .restart local v20    # "durationMillis":J
    :catch_1
    move-exception v7

    goto/16 :goto_d

    .line 1834
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_3
    .end sparse-switch
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "messageFlag"    # I
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 2020
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "messageFlag"    # I
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p6, "specifiedAttendee"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2026
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2027
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 2031
    .local v7, "eventIterator":Landroid/content/EntityIterator;
    :try_start_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2032
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .local v2, "entity":Landroid/content/Entity;
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2033
    invoke-static/range {v1 .. v6}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2037
    .end local v2    # "entity":Landroid/content/Entity;
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 2039
    :goto_0
    return-object v2

    .line 2037
    :cond_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v1
.end method

.method static findNextTransition(J[Ljava/util/GregorianCalendar;)J
    .locals 7
    .param p0, "startingMillis"    # J
    .param p2, "transitions"    # [Ljava/util/GregorianCalendar;

    .prologue
    .line 675
    move-object v0, p2

    .local v0, "arr$":[Ljava/util/GregorianCalendar;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 676
    .local v3, "transition":Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 677
    .local v4, "transitionMillis":J
    cmp-long v6, v4, p0

    if-lez v6, :cond_0

    .line 681
    .end local v3    # "transition":Ljava/util/GregorianCalendar;
    .end local v4    # "transitionMillis":J
    :goto_1
    return-wide v4

    .line 675
    .restart local v3    # "transition":Ljava/util/GregorianCalendar;
    .restart local v4    # "transitionMillis":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 681
    .end local v3    # "transition":Ljava/util/GregorianCalendar;
    .end local v4    # "transitionMillis":J
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method static findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;
    .locals 12
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "startInDaylightTime"    # Z

    .prologue
    .line 342
    move-wide v6, p3

    .line 343
    .local v6, "startingEndTime":J
    const/4 v4, 0x0

    .line 346
    .local v4, "date":Ljava/util/Date;
    :goto_0
    sub-long v8, p3, p1

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 347
    add-long v8, p1, p3

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long v2, v8, v10

    .line 348
    .local v2, "checkTime":J
    new-instance v4, Ljava/util/Date;

    .end local v4    # "date":Ljava/util/Date;
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 349
    .restart local v4    # "date":Ljava/util/Date;
    invoke-virtual {p0, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    .line 350
    .local v5, "inDaylightTime":Z
    move/from16 v0, p5

    if-eq v5, v0, :cond_0

    .line 351
    move-wide p3, v2

    goto :goto_0

    .line 353
    :cond_0
    move-wide p1, v2

    goto :goto_0

    .line 358
    .end local v2    # "checkTime":J
    .end local v5    # "inDaylightTime":Z
    :cond_1
    cmp-long v8, p3, v6

    if-nez v8, :cond_2

    .line 359
    const/4 v1, 0x0

    .line 365
    :goto_1
    return-object v1

    .line 363
    :cond_2
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 364
    .local v1, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_1
.end method

.method static formatTwo(I)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 920
    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    .line 921
    sget-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 923
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "dow"    # Ljava/lang/String;

    .prologue
    .line 1103
    const/4 v2, 0x0

    .line 1104
    .local v2, "bits":I
    const/4 v1, 0x1

    .line 1105
    .local v1, "bit":I
    sget-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 1107
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 1108
    or-int/2addr v2, v1

    .line 1110
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 1105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1112
    .end local v5    # "token":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z
    .locals 17
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "toDaylightCalendars"    # [Ljava/util/GregorianCalendar;
    .param p2, "toStandardCalendars"    # [Ljava/util/GregorianCalendar;

    .prologue
    .line 542
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 543
    .local v16, "maxYears":I
    move-object/from16 v0, p2

    array-length v2, v0

    move/from16 v0, v16

    if-eq v2, v0, :cond_0

    .line 544
    const/4 v2, 0x0

    .line 574
    :goto_0
    return v2

    .line 547
    :cond_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 548
    new-instance v1, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 549
    .local v1, "cal":Ljava/util/GregorianCalendar;
    sget v2, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sCurrentYear:I

    add-int/2addr v2, v15

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 550
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 552
    .local v3, "startTime":J
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v3

    const-wide/32 v10, 0x1499700

    add-long v5, v8, v10

    .line 553
    .local v5, "endOfYearTime":J
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 554
    .local v14, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    .local v7, "startInDaylightTime":Z
    move-object/from16 v2, p0

    .line 556
    invoke-static/range {v2 .. v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 557
    if-nez v1, :cond_1

    .line 558
    const/4 v2, 0x0

    goto :goto_0

    .line 559
    :cond_1
    if-eqz v7, :cond_2

    .line 560
    aput-object v1, p2, v15

    .line 565
    :goto_2
    if-nez v7, :cond_3

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v8, p0

    move-wide v9, v3

    move-wide v11, v5

    invoke-static/range {v8 .. v13}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 566
    if-nez v1, :cond_4

    .line 567
    const/4 v2, 0x0

    goto :goto_0

    .line 562
    :cond_2
    aput-object v1, p1, v15

    goto :goto_2

    .line 565
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 568
    :cond_4
    if-eqz v7, :cond_5

    .line 569
    aput-object v1, p1, v15

    .line 547
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 571
    :cond_5
    aput-object v1, p2, v15

    goto :goto_4

    .line 574
    .end local v1    # "cal":Ljava/util/GregorianCalendar;
    .end local v3    # "startTime":J
    .end local v5    # "endOfYearTime":J
    .end local v7    # "startInDaylightTime":Z
    .end local v14    # "date":Ljava/util/Date;
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 2050
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2051
    .local v0, "intValue":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .param p0, "time"    # J
    .param p2, "localTimeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 1046
    sget-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 187
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method static getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;)J
    .locals 3
    .param p0, "timeZone"    # Ljava/util/TimeZone;
    .param p1, "tzd"    # Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;

    .prologue
    .line 320
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 321
    .local v0, "testCalendar":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sget v2, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 322
    const/4 v1, 0x2

    iget v2, p1, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 323
    const/4 v1, 0x7

    iget v2, p1, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 324
    const/16 v1, 0x8

    iget v2, p1, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 325
    const/16 v1, 0xb

    iget v2, p1, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 326
    const/16 v1, 0xc

    iget v2, p1, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 327
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 328
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method static getString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 213
    add-int v3, p1, v1

    aget-byte v0, p0, v3

    .line 214
    .local v0, "ch":I
    if-nez v0, :cond_1

    .line 220
    .end local v0    # "ch":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 217
    .restart local v0    # "ch":I
    :cond_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getTimeZoneDateFromSystemTime([BI)Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 276
    new-instance v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;

    invoke-direct {v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;-><init>()V

    .line 279
    .local v3, "tzd":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    add-int/lit8 v4, p1, 0x0

    invoke-static {p0, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 280
    .local v2, "num":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->year:Ljava/lang/String;

    .line 284
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 285
    if-nez v2, :cond_0

    .line 286
    const/4 v3, 0x0

    .line 310
    .end local v3    # "tzd":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    :goto_0
    return-object v3

    .line 288
    .restart local v3    # "tzd":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_0
    add-int/lit8 v4, v2, -0x1

    iput v4, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    .line 292
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    .line 295
    add-int/lit8 v4, p1, 0x6

    invoke-static {p0, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 297
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 298
    const/4 v4, -0x1

    iput v4, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    .line 304
    :goto_1
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v0

    .line 305
    .local v0, "hour":I
    iput v0, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    .line 306
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v1

    .line 307
    .local v1, "minute":I
    iput v1, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    .line 308
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->time:I

    goto :goto_0

    .line 300
    .end local v0    # "hour":I
    .end local v1    # "minute":I
    :cond_1
    iput v2, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    goto :goto_1
.end method

.method static getTrueTransitionHour(Ljava/util/GregorianCalendar;)I
    .locals 2
    .param p0, "calendar"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 1002
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 1003
    .local v0, "hour":I
    add-int/lit8 v0, v0, 0x1

    .line 1004
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1007
    :cond_0
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .locals 2
    .param p0, "calendar"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 988
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 989
    .local v0, "minute":I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 990
    const/4 v0, 0x0

    .line 992
    :cond_0
    return v0
.end method

.method public static getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "globalObjId"    # Ljava/lang/String;

    .prologue
    .line 1453
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1456
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1457
    .local v4, "idBytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1461
    .local v5, "idString":Ljava/lang/String;
    const-string/jumbo v9, "vCal-Uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1462
    .local v6, "index":I
    if-lez v6, :cond_0

    .line 1465
    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1477
    .end local v4    # "idBytes":[B
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "index":I
    .end local p0    # "globalObjId":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1470
    .restart local v4    # "idBytes":[B
    .restart local v5    # "idString":Ljava/lang/String;
    .restart local v6    # "index":I
    .restart local p0    # "globalObjId":Ljava/lang/String;
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-byte v1, v0, v3

    .line 1471
    .local v1, "b":B
    invoke-static {v8, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1470
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1473
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 1475
    .end local v0    # "arr$":[B
    .end local v3    # "i$":I
    .end local v4    # "idBytes":[B
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .line 1477
    .local v2, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public static getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .param p0, "time"    # J
    .param p2, "localTimeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 1037
    sget-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getWord([BI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 201
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method private static hasTimeZoneId([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "timeZoneIds"    # [Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 778
    .local v3, "timeZoneId":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 779
    const/4 v4, 0x1

    .line 782
    .end local v3    # "timeZoneId":Ljava/lang/String;
    :goto_1
    return v4

    .line 777
    .restart local v3    # "timeZoneId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    .end local v3    # "timeZoneId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    .locals 14
    .param p0, "calendars"    # [Ljava/util/GregorianCalendar;

    .prologue
    .line 449
    const/4 v12, 0x0

    aget-object v1, p0, v12

    .line 450
    .local v1, "calendar":Ljava/util/GregorianCalendar;
    if-nez v1, :cond_0

    const/4 v12, 0x0

    .line 499
    :goto_0
    return-object v12

    .line 451
    :cond_0
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 452
    .local v8, "month":I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 453
    .local v2, "date":I
    const/4 v12, 0x7

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 454
    .local v4, "dayOfWeek":I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 455
    .local v11, "week":I
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    .line 456
    .local v7, "maxWeek":I
    const/4 v3, 0x0

    .line 457
    .local v3, "dateRule":Z
    const/4 v5, 0x0

    .line 458
    .local v5, "dayOfWeekRule":Z
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    array-length v12, p0

    if-ge v6, v12, :cond_a

    .line 459
    aget-object v0, p0, v6

    .line 460
    .local v0, "cal":Ljava/util/GregorianCalendar;
    if-nez v0, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 462
    :cond_1
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-eq v12, v8, :cond_2

    .line 463
    const/4 v12, 0x0

    goto :goto_0

    .line 464
    :cond_2
    const/4 v12, 0x7

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v4, v12, :cond_7

    .line 466
    if-eqz v3, :cond_3

    .line 467
    const/4 v12, 0x0

    goto :goto_0

    .line 469
    :cond_3
    const/4 v5, 0x1

    .line 470
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    .line 471
    .local v10, "thisWeek":I
    if-eq v11, v10, :cond_5

    .line 472
    if-ltz v11, :cond_4

    if-ne v11, v7, :cond_6

    .line 473
    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v9

    .line 474
    .local v9, "thisMaxWeek":I
    if-ne v10, v9, :cond_6

    .line 476
    const/4 v11, -0x1

    .line 458
    .end local v9    # "thisMaxWeek":I
    .end local v10    # "thisWeek":I
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 480
    .restart local v10    # "thisWeek":I
    :cond_6
    const/4 v12, 0x0

    goto :goto_0

    .line 482
    .end local v10    # "thisWeek":I
    :cond_7
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v2, v12, :cond_9

    .line 484
    if-eqz v5, :cond_8

    .line 485
    const/4 v12, 0x0

    goto :goto_0

    .line 487
    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    .line 489
    :cond_9
    const/4 v12, 0x0

    goto :goto_0

    .line 493
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    :cond_a
    if-eqz v3, :cond_b

    .line 494
    new-instance v12, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;-><init>(II)V

    goto :goto_0

    .line 499
    :cond_b
    new-instance v12, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;

    add-int/lit8 v13, v8, 0x1

    invoke-direct {v12, v13, v4, v11}, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;-><init>(III)V

    goto :goto_0
.end method

.method public static millisToEasDateTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 930
    sget-object v0, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .param p0, "millis"    # J
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "withTime"    # Z

    .prologue
    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 960
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 961
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    if-eqz p3, :cond_0

    .line 965
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 966
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    sget-object v2, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    if-ne p2, v2, :cond_0

    .line 970
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static putRuleIntoTimeZoneInformation([BILcom/kingsoft/exchange/utility/CalendarUtilities$RRule;II)V
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "rrule"    # Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    .param p3, "hour"    # I
    .param p4, "minute"    # I

    .prologue
    .line 243
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-static {p0, v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 245
    add-int/lit8 v0, p1, 0x4

    iget v1, p2, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 247
    add-int/lit8 v1, p1, 0x6

    iget v0, p2, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->week:I

    if-gez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 249
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 250
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 251
    return-void

    .line 247
    :cond_0
    iget v0, p2, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->week:I

    goto :goto_0
.end method

.method static putTransitionMillisIntoSystemTime([BIJ)V
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "millis"    # J

    .prologue
    .line 255
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 257
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const-wide/16 v2, 0x7530

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 260
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 262
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 265
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 267
    .local v1, "wom":I
    add-int/lit8 v2, p1, 0x6

    if-gez v1, :cond_0

    const/4 v1, 0x5

    .end local v1    # "wom":I
    :cond_0
    invoke-static {p0, v2, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 270
    add-int/lit8 v2, p1, 0x8

    invoke-static {v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 271
    add-int/lit8 v2, p1, 0xa

    invoke-static {v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 272
    return-void
.end method

.method public static recurrenceFromRrule(Ljava/lang/String;JLjava/util/TimeZone;Lcom/kingsoft/exchange/adapter/Serializer;)V
    .locals 10
    .param p0, "rrule"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "s"    # Lcom/kingsoft/exchange/adapter/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    sget-boolean v7, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_0

    .line 1222
    const-string/jumbo v7, "Exchange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RRULE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_0
    const-string/jumbo v7, "FREQ="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1228
    .local v6, "freq":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1229
    const-string/jumbo v7, "DAILY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1230
    const/16 v7, 0x11b

    invoke-virtual {p4, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1231
    const/16 v7, 0x11c

    const-string/jumbo v8, "0"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1232
    invoke-static {p0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1233
    invoke-virtual {p4}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1323
    :cond_1
    :goto_0
    return-void

    .line 1234
    :cond_2
    const-string/jumbo v7, "WEEKLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1235
    const/16 v7, 0x11b

    invoke-virtual {p4, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1236
    const/16 v7, 0x11c

    const-string/jumbo v8, "1"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1238
    invoke-static {p0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1239
    const-string/jumbo v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "byDay":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1241
    const/16 v7, 0x120

    invoke-static {v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1243
    const-string/jumbo v7, "-1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1244
    const/16 v7, 0x122

    const-string/jumbo v8, "5"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1252
    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_0

    .line 1246
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1247
    .local v4, "c":C
    const/16 v7, 0x31

    if-lt v4, v7, :cond_3

    const/16 v7, 0x34

    if-gt v4, v7, :cond_3

    .line 1248
    const/16 v7, 0x122

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_1

    .line 1253
    .end local v0    # "byDay":Ljava/lang/String;
    .end local v4    # "c":C
    :cond_5
    const-string/jumbo v7, "MONTHLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1254
    const-string/jumbo v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, "byMonthDay":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1256
    const/16 v7, 0x11b

    invoke-virtual {p4, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1258
    const-string/jumbo v7, "-1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1259
    const/16 v7, 0x11c

    const-string/jumbo v8, "3"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1260
    invoke-static {p0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1261
    const/16 v7, 0x120

    const-string/jumbo v8, "127"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1268
    :goto_2
    invoke-virtual {p4}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1264
    :cond_6
    const/16 v7, 0x11c

    const-string/jumbo v8, "2"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1265
    invoke-static {p0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1266
    const/16 v7, 0x121

    invoke-virtual {p4, v7, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    goto :goto_2

    .line 1270
    :cond_7
    const-string/jumbo v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1271
    .restart local v0    # "byDay":Ljava/lang/String;
    const-string/jumbo v7, "BYSETPOS="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1272
    .local v3, "bySetpos":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1273
    const/16 v7, 0x11b

    invoke-virtual {p4, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1274
    const/16 v7, 0x11c

    const-string/jumbo v8, "3"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1275
    invoke-static {p0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1276
    if-eqz v3, :cond_8

    .line 1277
    invoke-static {v0, v3, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByDaySetpos(Ljava/lang/String;Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1281
    :goto_3
    invoke-virtual {p4}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1279
    :cond_8
    invoke-static {v0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    goto :goto_3

    .line 1285
    :cond_9
    const/16 v7, 0x11b

    invoke-virtual {p4, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1286
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1287
    .local v5, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v5, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1288
    invoke-virtual {v5, p3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1289
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1290
    const/16 v7, 0x11c

    const-string/jumbo v8, "2"

    invoke-virtual {p4, v7, v8}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1291
    invoke-static {p0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1292
    const/16 v7, 0x121

    invoke-virtual {p4, v7, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1293
    invoke-virtual {p4}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1296
    .end local v0    # "byDay":Ljava/lang/String;
    .end local v2    # "byMonthDay":Ljava/lang/String;
    .end local v3    # "bySetpos":Ljava/lang/String;
    .end local v5    # "cal":Ljava/util/GregorianCalendar;
    :cond_a
    const-string/jumbo v7, "YEARLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1297
    const-string/jumbo v7, "BYMONTH="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "byMonth":Ljava/lang/String;
    const-string/jumbo v7, "BYMONTHDAY="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1299
    .restart local v2    # "byMonthDay":Ljava/lang/String;
    const-string/jumbo v7, "BYDAY="

    invoke-static {p0, v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    .restart local v0    # "byDay":Ljava/lang/String;
    if-nez v1, :cond_b

    if-nez v2, :cond_b

    .line 1302
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1303
    .restart local v5    # "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v5, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1304
    invoke-virtual {v5, p3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1305
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1306
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1308
    .end local v5    # "cal":Ljava/util/GregorianCalendar;
    :cond_b
    if-eqz v1, :cond_1

    if-nez v2, :cond_c

    if-eqz v0, :cond_1

    .line 1309
    :cond_c
    const/16 v7, 0x11b

    invoke-virtual {p4, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->start(I)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1310
    const/16 v8, 0x11c

    if-nez v0, :cond_d

    const-string/jumbo v7, "5"

    :goto_4
    invoke-virtual {p4, v8, v7}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1311
    invoke-static {p0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addCountIntervalAndUntil(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    .line 1312
    const/16 v7, 0x123

    invoke-virtual {p4, v7, v1}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1314
    if-eqz v2, :cond_e

    .line 1315
    const/16 v7, 0x121

    invoke-virtual {p4, v7, v2}, Lcom/kingsoft/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/kingsoft/exchange/adapter/Serializer;

    .line 1319
    :goto_5
    invoke-virtual {p4}, Lcom/kingsoft/exchange/adapter/Serializer;->end()Lcom/kingsoft/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1310
    :cond_d
    const-string/jumbo v7, "6"

    goto :goto_4

    .line 1317
    :cond_e
    invoke-static {v0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/String;Lcom/kingsoft/exchange/adapter/Serializer;)V

    goto :goto_5
.end method

.method static recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "until"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1143
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1145
    .local v0, "localCalendar":Ljava/util/GregorianCalendar;
    invoke-static {p0}, Lcom/kingsoft/emailcommon/utility/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string/jumbo v2, "T000000Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I
    .param p1, "occurrences"    # I
    .param p2, "interval"    # I
    .param p3, "dow"    # I
    .param p4, "dom"    # I
    .param p5, "wom"    # I
    .param p6, "moy"    # I
    .param p7, "until"    # Ljava/lang/String;

    .prologue
    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FREQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v0, "rrule":Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    :cond_0
    if-lez p2, :cond_1

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 1384
    :cond_2
    :goto_0
    :pswitch_0
    if-eqz p7, :cond_3

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    :cond_3
    sget-boolean v1, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_4

    .line 1389
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Created rrule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1391
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1352
    :pswitch_1
    if-lez p3, :cond_2

    invoke-static {v0, p3, p5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1355
    :pswitch_2
    if-lez p4, :cond_2

    invoke-static {v0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 1359
    :pswitch_3
    const/16 v1, 0x7f

    if-ne p3, v1, :cond_5

    .line 1360
    const-string/jumbo v1, ";BYMONTHDAY=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1362
    :cond_5
    const/4 v1, 0x5

    if-eq p5, v1, :cond_6

    const/4 v1, 0x1

    if-ne p5, v1, :cond_8

    :cond_6
    const/16 v1, 0x3e

    if-eq p3, v1, :cond_7

    const/16 v1, 0x41

    if-ne p3, v1, :cond_8

    .line 1363
    :cond_7
    invoke-static {v0, p3, p5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addBySetpos(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1364
    :cond_8
    if-lez p3, :cond_2

    invoke-static {v0, p3, p5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1367
    :pswitch_4
    if-lez p4, :cond_9

    invoke-static {v0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1368
    :cond_9
    if-lez p6, :cond_2

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1373
    :pswitch_5
    if-lez p3, :cond_a

    invoke-static {v0, p3, p5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1374
    :cond_a
    if-lez p4, :cond_b

    invoke-static {v0, p4}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1375
    :cond_b
    if-lez p6, :cond_2

    .line 1376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static setLong([BII)V
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 193
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 194
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 195
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 196
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 197
    return-void
.end method

.method static setWord([BII)V
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 206
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 207
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 208
    return-void
.end method

.method public static timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 375
    sget-object v2, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 376
    .local v0, "tziString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 377
    sget-boolean v2, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 378
    const-string/jumbo v2, "Exchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TZI string for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " found in cache."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 385
    .end local v0    # "tziString":Ljava/lang/String;
    .local v1, "tziString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 383
    .end local v1    # "tziString":Ljava/lang/String;
    .restart local v0    # "tziString":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 384
    sget-object v2, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 385
    .end local v0    # "tziString":Ljava/lang/String;
    .restart local v1    # "tziString":Ljava/lang/String;
    goto :goto_0
.end method

.method static timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 21
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 693
    const/16 v18, 0xac

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 694
    .local v15, "tziBytes":[B
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    move/from16 v0, v18

    neg-int v9, v0

    .line 695
    .local v9, "standardBias":I
    const v18, 0xea60

    div-int v9, v9, v18

    .line 696
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v15, v0, v9}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 699
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [Ljava/util/GregorianCalendar;

    .line 700
    .local v13, "toDaylightCalendars":[Ljava/util/GregorianCalendar;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [Ljava/util/GregorianCalendar;

    .line 703
    .local v14, "toStandardCalendars":[Ljava/util/GregorianCalendar;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 705
    invoke-static {v13}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;

    move-result-object v3

    .line 706
    .local v3, "daylightRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v14}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;

    move-result-object v10

    .line 707
    .local v10, "standardRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    if-eqz v3, :cond_2

    iget v0, v3, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    if-eqz v10, :cond_2

    iget v0, v10, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->type:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 711
    const/16 v18, 0x44

    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v19

    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-static/range {v20 .. v20}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v10, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/kingsoft/exchange/utility/CalendarUtilities$RRule;II)V

    .line 715
    const/16 v18, 0x98

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-static/range {v19 .. v19}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v19

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-static/range {v20 .. v20}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v15, v0, v3, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/kingsoft/exchange/utility/CalendarUtilities$RRule;II)V

    .line 734
    .end local v3    # "daylightRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    .end local v10    # "standardRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v6

    .line 735
    .local v6, "dstOffset":I
    const/16 v18, 0xa8

    neg-int v0, v6

    move/from16 v19, v0

    const v20, 0xea60

    div-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 737
    .end local v6    # "dstOffset":I
    .end local v13    # "toDaylightCalendars":[Ljava/util/GregorianCalendar;
    .end local v14    # "toStandardCalendars":[Ljava/util/GregorianCalendar;
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v16

    .line 738
    .local v16, "tziEncodedBytes":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 739
    .local v17, "tziString":Ljava/lang/String;
    return-object v17

    .line 722
    .end local v16    # "tziEncodedBytes":[B
    .end local v17    # "tziString":Ljava/lang/String;
    .restart local v3    # "daylightRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    .restart local v10    # "standardRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    .restart local v13    # "toDaylightCalendars":[Ljava/util/GregorianCalendar;
    .restart local v14    # "toStandardCalendars":[Ljava/util/GregorianCalendar;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 723
    .local v7, "now":J
    invoke-static {v7, v8, v14}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v11

    .line 724
    .local v11, "standardTransition":J
    invoke-static {v7, v8, v13}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v4

    .line 726
    .local v4, "daylightTransition":J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-eqz v18, :cond_0

    .line 727
    const/16 v18, 0x44

    move/from16 v0, v18

    invoke-static {v15, v0, v11, v12}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    .line 729
    const/16 v18, 0x98

    move/from16 v0, v18

    invoke-static {v15, v0, v4, v5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    goto :goto_0
.end method

.method static timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/kingsoft/exchange/utility/SimpleIcsWriter;)V
    .locals 14
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "writer"    # Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    const v11, 0xea60

    div-int v5, v10, v11

    .line 604
    .local v5, "rawOffsetMinutes":I
    invoke-static {v5}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v6

    .line 607
    .local v6, "standardOffsetString":Ljava/lang/String;
    const-string/jumbo v10, "BEGIN"

    const-string/jumbo v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string/jumbo v10, "TZID"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string/jumbo v10, "X-LIC-LOCATION"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v10

    if-nez v10, :cond_0

    .line 613
    invoke-static {p1, p0, v6}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/kingsoft/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 667
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v4, 0x3

    .line 618
    .local v4, "maxYears":I
    new-array v8, v4, [Ljava/util/GregorianCalendar;

    .line 619
    .local v8, "toDaylightCalendars":[Ljava/util/GregorianCalendar;
    new-array v9, v4, [Ljava/util/GregorianCalendar;

    .line 620
    .local v9, "toStandardCalendars":[Ljava/util/GregorianCalendar;
    invoke-static {p0, v8, v9}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 621
    invoke-static {p1, p0, v6}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/kingsoft/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_1
    invoke-static {v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 626
    .local v1, "daylightRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v9}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;

    move-result-object v7

    .line 627
    .local v7, "standardRule":Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v10

    const v11, 0xea60

    div-int/2addr v10, v11

    add-int/2addr v10, v5

    invoke-static {v10}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "daylightOffsetString":Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    .line 634
    .local v2, "hasRule":Z
    :goto_1
    const-string/jumbo v10, "BEGIN"

    const-string/jumbo v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v6}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string/jumbo v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    if-eqz v2, :cond_5

    .line 641
    const-string/jumbo v10, "RRULE"

    invoke-virtual {v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_2
    const-string/jumbo v10, "END"

    const-string/jumbo v11, "DAYLIGHT"

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string/jumbo v10, "BEGIN"

    const-string/jumbo v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string/jumbo v10, "TZOFFSETFROM"

    invoke-virtual {p1, v10, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string/jumbo v10, "TZOFFSETTO"

    invoke-virtual {p1, v10, v6}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string/jumbo v10, "DTSTART"

    const/4 v11, 0x0

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-static {v11, v12, p0, v13}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    if-eqz v2, :cond_6

    .line 657
    const-string/jumbo v10, "RRULE"

    invoke-virtual {v7}, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_3
    const-string/jumbo v10, "END"

    const-string/jumbo v11, "STANDARD"

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string/jumbo v10, "END"

    const-string/jumbo v11, "VTIMEZONE"

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 631
    .end local v2    # "hasRule":Z
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 643
    .restart local v2    # "hasRule":Z
    :cond_5
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 644
    const-string/jumbo v10, "RDATE"

    aget-object v11, v8, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 659
    .end local v3    # "i":I
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v4, :cond_3

    .line 660
    const-string/jumbo v10, "RDATE"

    aget-object v11, v9, v3

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v11, v12, p0, v13}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method static tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "rrule"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1122
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1123
    .local v4, "start":I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 1132
    :goto_0
    return-object v5

    .line 1124
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1125
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1126
    move v1, v4

    .line 1129
    .local v1, "end":I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "end":I
    .local v2, "end":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1130
    .local v0, "c":C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1

    if-ne v2, v3, :cond_3

    .line 1131
    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 1132
    .end local v2    # "end":I
    .restart local v1    # "end":I
    :goto_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v1    # "end":I
    .restart local v2    # "end":I
    :cond_2
    move v1, v2

    .end local v2    # "end":I
    .restart local v1    # "end":I
    goto :goto_2

    .end local v1    # "end":I
    .restart local v2    # "end":I
    :cond_3
    move v1, v2

    .end local v2    # "end":I
    .restart local v1    # "end":I
    goto :goto_1
.end method

.method static transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .param p0, "millis"    # J
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "dst"    # Z

    .prologue
    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1020
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1021
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1022
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    invoke-static {v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-static {v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J
    .locals 8
    .param p0, "time"    # J
    .param p2, "fromTimeZone"    # Ljava/util/TimeZone;
    .param p3, "toTimeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v4, 0x0

    .line 1051
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1052
    .local v7, "fromCalendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1053
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1055
    .local v0, "toCalendar":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1058
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1059
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1
    .param p0, "timeZoneString"    # Ljava/lang/String;

    .prologue
    .line 773
    const v0, 0xea60

    invoke-static {p0, v0}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method static tziStringToTimeZone(Ljava/lang/String;I)Ljava/util/TimeZone;
    .locals 4
    .param p0, "timeZoneString"    # Ljava/lang/String;
    .param p1, "precision"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 751
    sget-object v1, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 752
    .local v0, "timeZone":Ljava/util/TimeZone;
    if-eqz v0, :cond_1

    .line 753
    sget-boolean v1, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_0

    .line 754
    const-string/jumbo v1, "Exchange"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Using cached TimeZone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    :goto_0
    return-object v0

    .line 757
    :cond_1
    invoke-static {p0, p1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v0

    .line 758
    if-nez v0, :cond_2

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TimeZone not found using default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 762
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 764
    :cond_2
    sget-object v1, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;
    .locals 27
    .param p0, "timeZoneString"    # Ljava/lang/String;
    .param p1, "precision"    # I

    .prologue
    .line 794
    const/16 v18, 0x0

    .line 796
    .local v18, "timeZone":Ljava/util/TimeZone;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v19

    .line 802
    .local v19, "timeZoneBytes":[B
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v24

    mul-int/lit8 v24, v24, -0x1

    const v25, 0xea60

    mul-int v6, v24, v25

    .line 806
    .local v6, "bias":I
    invoke-static {v6}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v23

    .line 807
    .local v23, "zoneIds":[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_f

    .line 810
    const/16 v24, 0x44

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v8

    .line 812
    .local v8, "dstEnd":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v8, :cond_5

    .line 814
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 815
    .local v7, "defaultTimeZone":Ljava/util/TimeZone;
    invoke-virtual {v7}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->hasTimeZoneId([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 817
    sget-boolean v24, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v24, :cond_0

    .line 818
    const-string/jumbo v24, "Exchange"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "TimeZone without DST found to be default: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .end local v7    # "defaultTimeZone":Ljava/util/TimeZone;
    .end local v8    # "dstEnd":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_0
    :goto_0
    return-object v7

    .line 826
    .restart local v7    # "defaultTimeZone":Ljava/util/TimeZone;
    .restart local v8    # "dstEnd":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_1
    move-object/from16 v4, v23

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_4

    aget-object v22, v4, v12

    .line 827
    .local v22, "zoneId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 828
    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v24

    if-nez v24, :cond_3

    .line 829
    sget-boolean v24, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v24, :cond_2

    .line 830
    const-string/jumbo v24, "Exchange"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "TimeZone without DST found by offset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v7, v18

    .line 833
    goto :goto_0

    .line 826
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 837
    .end local v22    # "zoneId":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 839
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "defaultTimeZone":Ljava/util/TimeZone;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    const/16 v24, 0x98

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v11

    .line 842
    .local v11, "dstStart":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    const/16 v24, 0xa8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result v24

    mul-int/lit8 v24, v24, -0x1

    const v25, 0xea60

    mul-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v9, v0

    .line 847
    .local v9, "dstSavings":J
    move-object/from16 v4, v23

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_2
    if-ge v12, v13, :cond_8

    aget-object v22, v4, v12

    .line 849
    .restart local v22    # "zoneId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 858
    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v15

    .line 859
    .local v15, "millisAtTransition":J
    new-instance v5, Ljava/util/Date;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v24, v15, v24

    move-wide/from16 v0, v24

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 860
    .local v5, "before":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v15

    move-wide/from16 v0, v24

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 861
    .local v3, "after":Ljava/util/Date;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 847
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 862
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 865
    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v15

    .line 868
    new-instance v5, Ljava/util/Date;

    .end local v5    # "before":Ljava/util/Date;
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v9

    sub-long v24, v15, v24

    move-wide/from16 v0, v24

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 869
    .restart local v5    # "before":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    .end local v3    # "after":Ljava/util/Date;
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v15

    move-wide/from16 v0, v24

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 870
    .restart local v3    # "after":Ljava/util/Date;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 871
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 874
    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v9, v24

    if-nez v24, :cond_6

    move-object/from16 v7, v18

    .line 875
    goto/16 :goto_0

    .line 877
    .end local v3    # "after":Ljava/util/Date;
    .end local v5    # "before":Ljava/util/Date;
    .end local v15    # "millisAtTransition":J
    .end local v22    # "zoneId":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    .line 878
    .local v14, "lenient":Z
    const/16 v17, 0x0

    .line 879
    .local v17, "name":Z
    iget v0, v11, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v24, v0

    iget v0, v8, Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    const v24, 0xea60

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 880
    const v24, 0xdbba00

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;I)Ljava/util/TimeZone;

    move-result-object v18

    .line 881
    const/4 v14, 0x1

    .line 900
    :goto_3
    sget-boolean v24, Lcom/kingsoft/exchange/Eas;->USER_LOG:Z

    if-eqz v24, :cond_9

    .line 901
    const-string/jumbo v25, "Exchange"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "No TimeZone with correct DST settings; using "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-eqz v17, :cond_d

    const-string/jumbo v24, "name"

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, ": "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v7, v18

    .line 906
    goto/16 :goto_0

    .line 886
    :cond_a
    const/16 v24, 0x4

    const/16 v25, 0x20

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->getString([BII)Ljava/lang/String;

    move-result-object v21

    .line 888
    .local v21, "tzName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_c

    .line 889
    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v20

    .line 890
    .local v20, "tz":Ljava/util/TimeZone;
    if-eqz v20, :cond_b

    .line 891
    move-object/from16 v18, v20

    .line 892
    const/16 v17, 0x1

    goto :goto_3

    .line 894
    :cond_b
    const/16 v24, 0x0

    aget-object v24, v23, v24

    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    goto :goto_3

    .line 897
    .end local v20    # "tz":Ljava/util/TimeZone;
    :cond_c
    const/16 v24, 0x0

    aget-object v24, v23, v24

    invoke-static/range {v24 .. v24}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    goto :goto_3

    .line 901
    .end local v21    # "tzName":Ljava/lang/String;
    :cond_d
    if-eqz v14, :cond_e

    const-string/jumbo v24, "lenient"

    goto :goto_4

    :cond_e
    const-string/jumbo v24, "first"

    goto :goto_4

    .line 909
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "dstEnd":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v9    # "dstSavings":J
    .end local v11    # "dstStart":Lcom/kingsoft/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "lenient":Z
    .end local v17    # "name":Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .locals 6
    .param p0, "offsetMinutes"    # I

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v2, "sb":Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 511
    .local v0, "hours":I
    if-gez v0, :cond_2

    .line 512
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    rsub-int/lit8 v0, v0, 0x0

    .line 517
    :goto_0
    rem-int/lit8 v1, p0, 0x3c

    .line 518
    .local v1, "minutes":I
    if-ge v0, v4, :cond_0

    .line 519
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    if-ge v1, v4, :cond_1

    .line 523
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 515
    .end local v1    # "minutes":I
    :cond_2
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static writeNoDST(Lcom/kingsoft/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 3
    .param p0, "writer"    # Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "offsetString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    const-string/jumbo v0, "BEGIN"

    const-string/jumbo v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string/jumbo v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0, p2}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v0, "TZOFFSETTO"

    invoke-virtual {p0, v0, p2}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string/jumbo v0, "DTSTART"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/kingsoft/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v0, "END"

    const-string/jumbo v1, "STANDARD"

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string/jumbo v0, "END"

    const-string/jumbo v1, "VTIMEZONE"

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method
