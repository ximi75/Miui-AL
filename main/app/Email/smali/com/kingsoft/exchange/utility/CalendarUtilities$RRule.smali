.class Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/utility/CalendarUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RRule"
.end annotation


# static fields
.field static final RRULE_DATE:I = 0x2

.field static final RRULE_DAY_WEEK:I = 0x1

.field static final RRULE_NONE:I


# instance fields
.field date:I

.field dayOfWeek:I

.field month:I

.field type:I

.field week:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "_month"    # I
    .param p2, "_date"    # I

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->type:I

    .line 410
    iput p1, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->month:I

    .line 411
    iput p2, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->date:I

    .line 412
    return-void
.end method

.method constructor <init>(III)V
    .locals 1
    .param p1, "_month"    # I
    .param p2, "_dayOfWeek"    # I
    .param p3, "_week"    # I

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->type:I

    .line 422
    iput p1, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->month:I

    .line 423
    iput p2, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    .line 424
    iput p3, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->week:I

    .line 425
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    iget v0, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";BYDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    iget v2, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/exchange/utility/CalendarUtilities$RRule;->date:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
