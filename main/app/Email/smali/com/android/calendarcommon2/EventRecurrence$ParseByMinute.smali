.class Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByMinute"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/android/calendarcommon2/EventRecurrence;

    .prologue
    .line 787
    const/4 v1, 0x0

    const/16 v2, 0x3b

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseByMinute;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 788
    .local v0, "byminute":[I
    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    .line 789
    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    .line 790
    const/16 v1, 0x20

    return v1
.end method
