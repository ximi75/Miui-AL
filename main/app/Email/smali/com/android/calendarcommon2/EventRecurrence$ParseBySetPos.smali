.class Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseBySetPos"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/calendarcommon2/EventRecurrence$1;

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/android/calendarcommon2/EventRecurrence;

    .prologue
    .line 892
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 893
    .local v0, "bysetpos":[I
    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    .line 894
    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    .line 895
    const/16 v1, 0x1000

    return v1
.end method
