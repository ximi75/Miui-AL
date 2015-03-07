.class public Lcom/android/calendarcommon2/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLDING_SEPARATOR:Ljava/lang/String; = "\n "

.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "RecurrenceSet"


# instance fields
.field public exdates:[J

.field public exrules:[Lcom/android/calendarcommon2/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcom/android/calendarcommon2/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 413
    const-string/jumbo v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    .line 416
    const-string/jumbo v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 45
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 46
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 47
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 56
    const-string/jumbo v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "rruleStr":Ljava/lang/String;
    const-string/jumbo v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "rdateStr":Ljava/lang/String;
    const-string/jumbo v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "exruleStr":Ljava/lang/String;
    const-string/jumbo v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "exdateStr":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 45
    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 46
    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 47
    iput-object v8, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 74
    const-string/jumbo v8, "rrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 75
    .local v6, "rruleColumn":I
    const-string/jumbo v8, "rdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 76
    .local v4, "rdateColumn":I
    const-string/jumbo v8, "exrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, "exruleColumn":I
    const-string/jumbo v8, "exdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "exdateColumn":I
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "rruleStr":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "rdateStr":Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "exruleStr":Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "exdateStr":Ljava/lang/String;
    invoke-direct {p0, v7, v5, v3, v1}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 45
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 46
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 47
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "component"    # Lcom/android/calendarcommon2/ICalendar$Component;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "ruleStr"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 397
    :cond_0
    return-void

    .line 391
    :cond_1
    invoke-static {p2}, Lcom/android/calendarcommon2/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, "rrules":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 393
    .local v4, "rrule":Ljava/lang/String;
    new-instance v3, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-direct {v3, p1}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 394
    .local v3, "prop":Lcom/android/calendarcommon2/ICalendar$Property;
    invoke-virtual {v3, v4}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v3}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "component"    # Lcom/android/calendarcommon2/ICalendar$Component;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v0, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-direct {v0, p1}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "prop":Lcom/android/calendarcommon2/ICalendar$Property;
    const/4 v1, 0x0

    .line 454
    .local v1, "tz":Ljava/lang/String;
    const-string/jumbo v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 455
    .local v2, "tzidx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 456
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 457
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 459
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 460
    new-instance v3, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v4, "TZID"

    invoke-direct {v3, v4, v1}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    .line 462
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    goto :goto_0
.end method

.method private static computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon2/ICalendar$Component;)Ljava/lang/String;
    .locals 13
    .param p0, "start"    # Landroid/text/format/Time;
    .param p1, "component"    # Lcom/android/calendarcommon2/ICalendar$Component;

    .prologue
    .line 469
    const-string/jumbo v9, "DURATION"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v3

    .line 471
    .local v3, "durationProperty":Lcom/android/calendarcommon2/ICalendar$Property;
    if-eqz v3, :cond_0

    .line 473
    invoke-virtual {v3}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 496
    :goto_0
    return-object v9

    .line 477
    :cond_0
    const-string/jumbo v9, "DTEND"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v0

    .line 479
    .local v0, "dtendProperty":Lcom/android/calendarcommon2/ICalendar$Property;
    if-nez v0, :cond_1

    .line 481
    const-string/jumbo v9, "+P0S"

    goto :goto_0

    .line 483
    :cond_1
    const-string/jumbo v9, "TZID"

    invoke-virtual {v0, v9}, Lcom/android/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v8

    .line 485
    .local v8, "endTzidParameter":Lcom/android/calendarcommon2/ICalendar$Parameter;
    if-nez v8, :cond_2

    iget-object v7, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 488
    .local v7, "endTzid":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 489
    .local v6, "end":Landroid/text/format/Time;
    invoke-virtual {v0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 490
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    sub-long v1, v9, v11

    .line 492
    .local v1, "durationMillis":J
    const-wide/16 v9, 0x3e8

    div-long v4, v1, v9

    .line 493
    .local v4, "durationSeconds":J
    iget-boolean v9, p0, Landroid/text/format/Time;->allDay:Z

    if-eqz v9, :cond_3

    const-wide/32 v9, 0x15180

    rem-long v9, v4, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 494
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x15180

    div-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 485
    .end local v1    # "durationMillis":J
    .end local v4    # "durationSeconds":J
    .end local v6    # "end":Landroid/text/format/Time;
    .end local v7    # "endTzid":Ljava/lang/String;
    :cond_2
    iget-object v7, v8, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_1

    .line 496
    .restart local v1    # "durationMillis":J
    .restart local v4    # "durationSeconds":J
    .restart local v6    # "end":Landroid/text/format/Time;
    .restart local v7    # "endTzid":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static extractDates(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .param p0, "recurrence"    # Lcom/android/calendarcommon2/ICalendar$Property;

    .prologue
    .line 528
    if-nez p0, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 536
    :goto_0
    return-object v1

    .line 531
    :cond_0
    const-string/jumbo v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v0

    .line 533
    .local v0, "tzidParam":Lcom/android/calendarcommon2/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "component"    # Lcom/android/calendarcommon2/ICalendar$Component;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 503
    .local v2, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/android/calendarcommon2/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 504
    :cond_0
    const/4 v5, 0x0

    .line 524
    :goto_0
    return-object v5

    .line 507
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 508
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 511
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 514
    .local v0, "first":Z
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon2/ICalendar$Property;

    .line 515
    .local v3, "property":Lcom/android/calendarcommon2/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 516
    const/4 v0, 0x0

    .line 522
    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 520
    :cond_3
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 524
    .end local v3    # "property":Lcom/android/calendarcommon2/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "unfoldedIcalContent"    # Ljava/lang/String;

    .prologue
    .line 437
    sget-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "ruleStr"    # Ljava/lang/String;

    .prologue
    .line 400
    if-nez p0, :cond_1

    .line 401
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 409
    :cond_0
    return-object v2

    .line 403
    :cond_1
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "unfoldedRuleStr":Ljava/lang/String;
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "split":[Ljava/lang/String;
    array-length v0, v2

    .line 406
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 407
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/android/calendarcommon2/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 96
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 97
    const-string/jumbo v19, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 98
    .local v18, "rruleStrs":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 99
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 100
    new-instance v17, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 101
    .local v17, "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    aget-object v19, v18, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    aput-object v17, v19, v10

    .line 99
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 106
    .end local v10    # "i":I
    .end local v17    # "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v18    # "rruleStrs":[Ljava/lang/String;
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 107
    invoke-static/range {p2 .. p2}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 110
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 111
    const-string/jumbo v19, "\n"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, "exruleStrs":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 113
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 114
    new-instance v8, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v8}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 115
    .local v8, "exrule":Lcom/android/calendarcommon2/EventRecurrence;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    aput-object v8, v19, v10

    .line 113
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 120
    .end local v8    # "exrule":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v9    # "exruleStrs":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 121
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v19, "\n"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_5

    aget-object v7, v2, v12

    .line 123
    .local v7, "exdate":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v6

    .line 124
    .local v6, "dates":[J
    move-object v3, v6

    .local v3, "arr$":[J
    array-length v14, v3

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_3
    if-ge v11, v14, :cond_4

    aget-wide v4, v3, v11

    .line 125
    .local v4, "date":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 122
    .end local v4    # "date":J
    :cond_4
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_2

    .line 128
    .end local v3    # "arr$":[J
    .end local v6    # "dates":[J
    .end local v7    # "exdate":Ljava/lang/String;
    .end local v14    # "len$":I
    :cond_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 129
    const/4 v10, 0x0

    .restart local v10    # "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "n":I
    :goto_4
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    move-object/from16 v20, v0

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    aput-wide v21, v20, v10

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 134
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16    # "n":I
    :cond_6
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 11
    .param p0, "recurrence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 154
    const-string/jumbo v6, "UTC"

    .line 155
    .local v6, "tz":Ljava/lang/String;
    const-string/jumbo v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 156
    .local v7, "tzidx":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 157
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 158
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    :cond_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 161
    .local v5, "time":Landroid/text/format/Time;
    const-string/jumbo v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "rawDates":[Ljava/lang/String;
    array-length v3, v4

    .line 163
    .local v3, "n":I
    new-array v0, v3, [J

    .line 164
    .local v0, "dates":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 167
    :try_start_0
    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 175
    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/util/TimeFormatException;
    new-instance v8, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TimeFormatException thrown when parsing time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in recurrence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 177
    .end local v1    # "e":Landroid/util/TimeFormatException;
    :cond_1
    return-object v0
.end method

.method public static populateComponent(Landroid/content/ContentValues;Lcom/android/calendarcommon2/ICalendar$Component;)Z
    .locals 17
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "component"    # Lcom/android/calendarcommon2/ICalendar$Component;

    .prologue
    .line 328
    const-wide/16 v3, -0x1

    .line 329
    .local v3, "dtstart":J
    const-string/jumbo v14, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 330
    const-string/jumbo v14, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 332
    :cond_0
    const-string/jumbo v14, "duration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "duration":Ljava/lang/String;
    const-string/jumbo v14, "eventTimezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 334
    .local v13, "tzid":Ljava/lang/String;
    const-string/jumbo v14, "rrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 335
    .local v12, "rruleStr":Ljava/lang/String;
    const-string/jumbo v14, "rdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 336
    .local v11, "rdateStr":Ljava/lang/String;
    const-string/jumbo v14, "exrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, "exruleStr":Ljava/lang/String;
    const-string/jumbo v14, "exdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, "exdateStr":Ljava/lang/String;
    const-string/jumbo v14, "allDay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 339
    .local v2, "allDayInteger":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v1, 0x1

    .line 341
    .local v1, "allDay":Z
    :goto_0
    const-wide/16 v14, -0x1

    cmp-long v14, v3, v14

    if-eqz v14, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 346
    :cond_1
    const/4 v14, 0x0

    .line 382
    :goto_1
    return v14

    .line 339
    .end local v1    # "allDay":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 349
    .restart local v1    # "allDay":Z
    :cond_4
    new-instance v5, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v14, "DTSTART"

    invoke-direct {v5, v14}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 350
    .local v5, "dtstartProp":Lcom/android/calendarcommon2/ICalendar$Property;
    const/4 v6, 0x0

    .line 351
    .local v6, "dtstartTime":Landroid/text/format/Time;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 352
    if-nez v1, :cond_5

    .line 353
    new-instance v14, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v15, "TZID"

    invoke-direct {v14, v15, v13}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    .line 355
    :cond_5
    new-instance v6, Landroid/text/format/Time;

    .end local v6    # "dtstartTime":Landroid/text/format/Time;
    invoke-direct {v6, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v6    # "dtstartTime":Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v6, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 364
    if-eqz v1, :cond_6

    .line 365
    new-instance v14, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v15, "VALUE"

    const-string/jumbo v16, "DATE"

    invoke-direct/range {v14 .. v16}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    .line 366
    const/4 v14, 0x1

    iput-boolean v14, v6, Landroid/text/format/Time;->allDay:Z

    .line 367
    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->hour:I

    .line 368
    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->minute:I

    .line 369
    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->second:I

    .line 372
    :cond_6
    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    .line 374
    new-instance v8, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v14, "DURATION"

    invoke-direct {v8, v14}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 375
    .local v8, "durationProp":Lcom/android/calendarcommon2/ICalendar$Property;
    invoke-virtual {v8, v7}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    .line 378
    const-string/jumbo v14, "RRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v12}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v14, "RDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v11}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v14, "EXRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v10}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v14, "EXDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v9}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 358
    .end local v8    # "durationProp":Lcom/android/calendarcommon2/ICalendar$Property;
    :cond_7
    new-instance v6, Landroid/text/format/Time;

    .end local v6    # "dtstartTime":Landroid/text/format/Time;
    const-string/jumbo v14, "UTC"

    invoke-direct {v6, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v6    # "dtstartTime":Landroid/text/format/Time;
    goto :goto_2
.end method

.method public static populateComponent(Landroid/database/Cursor;Lcom/android/calendarcommon2/ICalendar$Component;)Z
    .locals 26
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "component"    # Lcom/android/calendarcommon2/ICalendar$Component;

    .prologue
    .line 260
    const-string/jumbo v23, "dtstart"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 261
    .local v7, "dtstartColumn":I
    const-string/jumbo v23, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 262
    .local v11, "durationColumn":I
    const-string/jumbo v23, "eventTimezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 263
    .local v22, "tzidColumn":I
    const-string/jumbo v23, "rrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 264
    .local v19, "rruleColumn":I
    const-string/jumbo v23, "rdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 265
    .local v17, "rdateColumn":I
    const-string/jumbo v23, "exrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 266
    .local v15, "exruleColumn":I
    const-string/jumbo v23, "exdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 267
    .local v13, "exdateColumn":I
    const-string/jumbo v23, "allDay"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 270
    .local v4, "allDayColumn":I
    const-wide/16 v5, -0x1

    .line 271
    .local v5, "dtstart":J
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_0

    .line 272
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 274
    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, "duration":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 276
    .local v21, "tzid":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 277
    .local v20, "rruleStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 278
    .local v18, "rdateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 279
    .local v16, "exruleStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 280
    .local v14, "exdateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 282
    .local v3, "allDay":Z
    :goto_0
    const-wide/16 v23, -0x1

    cmp-long v23, v5, v23

    if-eqz v23, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 287
    :cond_1
    const/16 v23, 0x0

    .line 323
    :goto_1
    return v23

    .line 280
    .end local v3    # "allDay":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 290
    .restart local v3    # "allDay":Z
    :cond_3
    new-instance v8, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v23, "DTSTART"

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 291
    .local v8, "dtstartProp":Lcom/android/calendarcommon2/ICalendar$Property;
    const/4 v9, 0x0

    .line 292
    .local v9, "dtstartTime":Landroid/text/format/Time;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 293
    if-nez v3, :cond_4

    .line 294
    new-instance v23, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v24, "TZID"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    .line 296
    :cond_4
    new-instance v9, Landroid/text/format/Time;

    .end local v9    # "dtstartTime":Landroid/text/format/Time;
    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v9    # "dtstartTime":Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v9, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 305
    if-eqz v3, :cond_5

    .line 306
    new-instance v23, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string/jumbo v24, "VALUE"

    const-string/jumbo v25, "DATE"

    invoke-direct/range {v23 .. v25}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    .line 307
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v9, Landroid/text/format/Time;->allDay:Z

    .line 308
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Landroid/text/format/Time;->hour:I

    .line 309
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Landroid/text/format/Time;->minute:I

    .line 310
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Landroid/text/format/Time;->second:I

    .line 313
    :cond_5
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    .line 315
    new-instance v12, Lcom/android/calendarcommon2/ICalendar$Property;

    const-string/jumbo v23, "DURATION"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 316
    .local v12, "durationProp":Lcom/android/calendarcommon2/ICalendar$Property;
    invoke-virtual {v12, v10}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    .line 319
    const-string/jumbo v23, "RRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v23, "RDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v23, "EXRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v23, "EXDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v14}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 299
    .end local v12    # "durationProp":Lcom/android/calendarcommon2/ICalendar$Property;
    :cond_6
    new-instance v9, Landroid/text/format/Time;

    .end local v9    # "dtstartTime":Landroid/text/format/Time;
    const-string/jumbo v23, "UTC"

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v9    # "dtstartTime":Landroid/text/format/Time;
    goto/16 :goto_2
.end method

.method public static populateContentValues(Lcom/android/calendarcommon2/ICalendar$Component;Landroid/content/ContentValues;)Z
    .locals 21
    .param p0, "component"    # Lcom/android/calendarcommon2/ICalendar$Component;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 194
    :try_start_0
    const-string/jumbo v18, "DTSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v5

    .line 196
    .local v5, "dtstartProperty":Lcom/android/calendarcommon2/ICalendar$Property;
    invoke-virtual {v5}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "dtstart":Ljava/lang/String;
    const-string/jumbo v18, "TZID"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v17

    .line 200
    .local v17, "tzidParam":Lcom/android/calendarcommon2/ICalendar$Parameter;
    if-nez v17, :cond_3

    const/16 v16, 0x0

    .line 201
    .local v16, "tzid":Ljava/lang/String;
    :goto_0
    new-instance v15, Landroid/text/format/Time;

    if-nez v17, :cond_4

    const-string/jumbo v18, "UTC"

    :goto_1
    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 202
    .local v15, "start":Landroid/text/format/Time;
    invoke-virtual {v15, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v10

    .line 203
    .local v10, "inUtc":Z
    iget-boolean v3, v15, Landroid/text/format/Time;->allDay:Z

    .line 207
    .local v3, "allDay":Z
    if-nez v10, :cond_0

    if-eqz v3, :cond_1

    .line 208
    :cond_0
    const-string/jumbo v16, "UTC"

    .line 211
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/android/calendarcommon2/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon2/ICalendar$Component;)Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "duration":Ljava/lang/String;
    const-string/jumbo v18, "RRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 213
    .local v14, "rrule":Ljava/lang/String;
    const-string/jumbo v18, "RDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/calendarcommon2/RecurrenceSet;->extractDates(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "rdate":Ljava/lang/String;
    const-string/jumbo v18, "EXRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "exrule":Ljava/lang/String;
    const-string/jumbo v18, "EXDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Property;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/calendarcommon2/RecurrenceSet;->extractDates(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, "exdate":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 226
    :cond_2
    const/16 v18, 0x0

    .line 252
    .end local v3    # "allDay":Z
    .end local v4    # "dtstart":Ljava/lang/String;
    .end local v5    # "dtstartProperty":Lcom/android/calendarcommon2/ICalendar$Property;
    .end local v6    # "duration":Ljava/lang/String;
    .end local v8    # "exdate":Ljava/lang/String;
    .end local v9    # "exrule":Ljava/lang/String;
    .end local v10    # "inUtc":Z
    .end local v13    # "rdate":Ljava/lang/String;
    .end local v14    # "rrule":Ljava/lang/String;
    .end local v15    # "start":Landroid/text/format/Time;
    .end local v16    # "tzid":Ljava/lang/String;
    .end local v17    # "tzidParam":Lcom/android/calendarcommon2/ICalendar$Parameter;
    :goto_2
    return v18

    .line 200
    .restart local v4    # "dtstart":Ljava/lang/String;
    .restart local v5    # "dtstartProperty":Lcom/android/calendarcommon2/ICalendar$Property;
    .restart local v17    # "tzidParam":Lcom/android/calendarcommon2/ICalendar$Parameter;
    :cond_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_0

    .restart local v16    # "tzid":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v16

    .line 201
    goto :goto_1

    .line 229
    .restart local v3    # "allDay":Z
    .restart local v6    # "duration":Ljava/lang/String;
    .restart local v8    # "exdate":Ljava/lang/String;
    .restart local v9    # "exrule":Ljava/lang/String;
    .restart local v10    # "inUtc":Z
    .restart local v13    # "rdate":Ljava/lang/String;
    .restart local v14    # "rrule":Ljava/lang/String;
    .restart local v15    # "start":Landroid/text/format/Time;
    :cond_5
    if-eqz v3, :cond_6

    .line 230
    const-string/jumbo v18, "UTC"

    move-object/from16 v0, v18

    iput-object v0, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 232
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 233
    .local v11, "millis":J
    const-string/jumbo v18, "dtstart"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-wide/16 v18, -0x1

    cmp-long v18, v11, v18

    if-nez v18, :cond_7

    .line 238
    const/16 v18, 0x0

    goto :goto_2

    .line 241
    :cond_7
    const-string/jumbo v18, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v18, "rdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v18, "exrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v18, "exdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v18, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v18, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v19, "allDay"

    if-eqz v3, :cond_8

    const/16 v18, 0x1

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 247
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 249
    .end local v3    # "allDay":Z
    .end local v4    # "dtstart":Ljava/lang/String;
    .end local v5    # "dtstartProperty":Lcom/android/calendarcommon2/ICalendar$Property;
    .end local v6    # "duration":Ljava/lang/String;
    .end local v8    # "exdate":Ljava/lang/String;
    .end local v9    # "exrule":Ljava/lang/String;
    .end local v10    # "inUtc":Z
    .end local v11    # "millis":J
    .end local v13    # "rdate":Ljava/lang/String;
    .end local v14    # "rrule":Ljava/lang/String;
    .end local v15    # "start":Landroid/text/format/Time;
    .end local v16    # "tzid":Ljava/lang/String;
    .end local v17    # "tzidParam":Lcom/android/calendarcommon2/ICalendar$Parameter;
    :catch_0
    move-exception v7

    .line 251
    .local v7, "e":Landroid/util/TimeFormatException;
    const-string/jumbo v18, "RecurrenceSet"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to parse event: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendarcommon2/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "foldedIcalContent"    # Ljava/lang/String;

    .prologue
    .line 441
    sget-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
