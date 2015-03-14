.class public Lcom/android/calendarcommon2/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I

.field private static final MAX_ALLOWED_ITERATIONS:I = 0x7d0

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "RecurrenceProcessor"

.field private static final USE_BYLIST:I = 0x1

.field private static final USE_ITERATOR:I


# instance fields
.field private mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1237
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1239
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1237
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 1239
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb4
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 33
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 34
    new-instance v0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    .line 40
    return-void
.end method

.method private static filter(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I
    .locals 10
    .param p0, "r"    # Lcom/android/calendarcommon2/EventRecurrence;
    .param p1, "iterator"    # Landroid/text/format/Time;

    .prologue
    .line 200
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 202
    .local v3, "freq":I
    const/4 v6, 0x6

    if-lt v6, v3, :cond_0

    .line 204
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_0

    .line 205
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    .line 207
    .local v2, "found":Z
    if-nez v2, :cond_0

    .line 208
    const/4 v6, 0x1

    .line 312
    .end local v2    # "found":Z
    :goto_0
    return v6

    .line 212
    :cond_0
    const/4 v6, 0x5

    if-lt v6, v3, :cond_1

    .line 215
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_1

    .line 216
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 219
    .restart local v2    # "found":Z
    if-nez v2, :cond_1

    .line 220
    const/4 v6, 0x2

    goto :goto_0

    .line 224
    .end local v2    # "found":Z
    :cond_1
    const/4 v6, 0x4

    if-lt v6, v3, :cond_4

    .line 226
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_2

    .line 227
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 229
    .restart local v2    # "found":Z
    if-nez v2, :cond_2

    .line 230
    const/4 v6, 0x3

    goto :goto_0

    .line 234
    .end local v2    # "found":Z
    :cond_2
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_3

    .line 235
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 238
    .restart local v2    # "found":Z
    if-nez v2, :cond_3

    .line 239
    const/4 v6, 0x4

    goto :goto_0

    .line 245
    .end local v2    # "found":Z
    :cond_3
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_4

    .line 246
    iget-object v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 247
    .local v1, "a":[I
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 248
    .local v0, "N":I
    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    .line 249
    .local v5, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_6

    .line 250
    aget v6, v1, v4

    if-ne v6, v5, :cond_5

    .line 257
    .end local v0    # "N":I
    .end local v1    # "a":[I
    .end local v4    # "i":I
    .end local v5    # "v":I
    :cond_4
    const/4 v6, 0x3

    if-lt v6, v3, :cond_7

    .line 259
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 262
    .restart local v2    # "found":Z
    if-nez v2, :cond_7

    .line 263
    const/4 v6, 0x6

    goto :goto_0

    .line 249
    .end local v2    # "found":Z
    .restart local v0    # "N":I
    .restart local v1    # "a":[I
    .restart local v4    # "i":I
    .restart local v5    # "v":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    :cond_6
    const/4 v6, 0x5

    goto :goto_0

    .line 266
    .end local v0    # "N":I
    .end local v1    # "a":[I
    .end local v4    # "i":I
    .end local v5    # "v":I
    :cond_7
    const/4 v6, 0x2

    if-lt v6, v3, :cond_8

    .line 268
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 271
    .restart local v2    # "found":Z
    if-nez v2, :cond_8

    .line 272
    const/4 v6, 0x7

    goto/16 :goto_0

    .line 275
    .end local v2    # "found":Z
    :cond_8
    const/4 v6, 0x1

    if-lt v6, v3, :cond_9

    .line 277
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 280
    .restart local v2    # "found":Z
    if-nez v2, :cond_9

    .line 281
    const/16 v6, 0x8

    goto/16 :goto_0

    .line 285
    .end local v2    # "found":Z
    :cond_9
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    if-lez v6, :cond_a

    .line 288
    const/4 v6, 0x6

    if-ne v3, v6, :cond_d

    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_d

    .line 290
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    add-int/lit8 v4, v6, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_c

    .line 291
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v6, v6, v4

    if-eqz v6, :cond_b

    .line 292
    const-string/jumbo v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 293
    const-string/jumbo v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 312
    .end local v4    # "i":I
    :cond_a
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 290
    .restart local v4    # "i":I
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 298
    :cond_c
    invoke-static {p0, p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->filterMonthlySetPos(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 300
    const/16 v6, 0x9

    goto/16 :goto_0

    .line 303
    .end local v4    # "i":I
    :cond_d
    const-string/jumbo v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 304
    const-string/jumbo v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method private static filterMonthlySetPos(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z
    .locals 13
    .param p0, "r"    # Lcom/android/calendarcommon2/EventRecurrence;
    .param p1, "instance"    # Landroid/text/format/Time;

    .prologue
    const/4 v10, 0x1

    .line 331
    iget v11, p1, Landroid/text/format/Time;->weekDay:I

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x24

    rem-int/lit8 v5, v11, 0x7

    .line 337
    .local v5, "dotw":I
    const/4 v0, 0x0

    .line 338
    .local v0, "bydayMask":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v6, v11, :cond_0

    .line 339
    iget-object v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v11, v11, v6

    or-int/2addr v0, v11

    .line 338
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 346
    :cond_0
    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 347
    .local v8, "maxDay":I
    new-array v2, v8, [I

    .line 348
    .local v2, "daySet":[I
    const/4 v3, 0x0

    .line 350
    .local v3, "daySetLength":I
    const/4 v9, 0x1

    .local v9, "md":I
    move v4, v3

    .end local v3    # "daySetLength":I
    .local v4, "daySetLength":I
    :goto_1
    if-gt v9, v8, :cond_2

    .line 353
    const/high16 v11, 0x10000

    shl-int v1, v11, v5

    .line 354
    .local v1, "dayBit":I
    and-int v11, v0, v1

    if-eqz v11, :cond_8

    .line 355
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "daySetLength":I
    .restart local v3    # "daySetLength":I
    aput v9, v2, v4

    .line 358
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 359
    const/4 v11, 0x7

    if-ne v5, v11, :cond_1

    .line 360
    const/4 v5, 0x0

    .line 350
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3    # "daySetLength":I
    .restart local v4    # "daySetLength":I
    goto :goto_1

    .line 367
    .end local v1    # "dayBit":I
    :cond_2
    iget v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    add-int/lit8 v6, v11, -0x1

    :goto_3
    if-ltz v6, :cond_7

    .line 368
    iget-object v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    aget v7, v11, v6

    .line 369
    .local v7, "index":I
    if-lez v7, :cond_5

    .line 370
    if-le v7, v4, :cond_4

    .line 367
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 373
    :cond_4
    add-int/lit8 v11, v7, -0x1

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    .line 389
    .end local v7    # "index":I
    :goto_4
    return v10

    .line 376
    .restart local v7    # "index":I
    :cond_5
    if-gez v7, :cond_6

    .line 377
    add-int v11, v4, v7

    if-ltz v11, :cond_3

    .line 380
    add-int v11, v4, v7

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    goto :goto_4

    .line 385
    :cond_6
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "invalid bysetpos value"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 389
    .end local v7    # "index":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .restart local v1    # "dayBit":I
    :cond_8
    move v3, v4

    .end local v4    # "daySetLength":I
    .restart local v3    # "daySetLength":I
    goto :goto_2
.end method

.method static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 1224
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "N"    # I
    .param p2, "v"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 156
    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 157
    const/4 v1, 0x1

    .line 160
    :goto_1
    return v1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static listContains([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "N"    # I
    .param p2, "v"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v2, 0x1

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 174
    aget v1, p0, v0

    .line 175
    .local v1, "w":I
    if-lez v1, :cond_1

    .line 176
    if-ne v1, p2, :cond_2

    .line 186
    .end local v1    # "w":I
    :cond_0
    :goto_1
    return v2

    .line 180
    .restart local v1    # "w":I
    :cond_1
    add-int/2addr p3, v1

    .line 181
    if-eq p3, p2, :cond_0

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "w":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    const/16 v1, 0x1c

    .line 1250
    sget-object v2, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    .line 1251
    .local v0, "n":I
    if-eq v0, v1, :cond_0

    .line 1254
    .end local v0    # "n":I
    :goto_0
    return v0

    .restart local v0    # "n":I
    :cond_0
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1d

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4
    .param p0, "normalized"    # Landroid/text/format/Time;

    .prologue
    .line 1305
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 2
    .param p0, "date"    # Landroid/text/format/Time;
    .param p1, "val"    # J

    .prologue
    .line 1311
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1312
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1313
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1314
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1315
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1316
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1317
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 15
    .param p0, "date"    # Landroid/text/format/Time;

    .prologue
    const/16 v14, 0xc

    .line 1141
    iget v9, p0, Landroid/text/format/Time;->second:I

    .line 1142
    .local v9, "second":I
    iget v5, p0, Landroid/text/format/Time;->minute:I

    .line 1143
    .local v5, "minute":I
    iget v4, p0, Landroid/text/format/Time;->hour:I

    .line 1144
    .local v4, "hour":I
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1145
    .local v7, "monthDay":I
    iget v6, p0, Landroid/text/format/Time;->month:I

    .line 1146
    .local v6, "month":I
    iget v10, p0, Landroid/text/format/Time;->year:I

    .line 1148
    .local v10, "year":I
    if-gez v9, :cond_0

    add-int/lit8 v13, v9, -0x3b

    :goto_0
    div-int/lit8 v2, v13, 0x3c

    .line 1149
    .local v2, "addMinutes":I
    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    .line 1150
    add-int/2addr v5, v2

    .line 1151
    if-gez v5, :cond_1

    add-int/lit8 v13, v5, -0x3b

    :goto_1
    div-int/lit8 v1, v13, 0x3c

    .line 1152
    .local v1, "addHours":I
    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    .line 1153
    add-int/2addr v4, v1

    .line 1154
    if-gez v4, :cond_2

    add-int/lit8 v13, v4, -0x17

    :goto_2
    div-int/lit8 v0, v13, 0x18

    .line 1155
    .local v0, "addDays":I
    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    .line 1156
    add-int/2addr v7, v0

    .line 1161
    :goto_3
    if-gtz v7, :cond_4

    .line 1169
    const/4 v13, 0x1

    if-le v6, v13, :cond_3

    invoke-static {v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    .line 1170
    .local v3, "days":I
    :goto_4
    add-int/2addr v7, v3

    .line 1171
    add-int/lit8 v10, v10, -0x1

    .line 1172
    goto :goto_3

    .end local v0    # "addDays":I
    .end local v1    # "addHours":I
    .end local v2    # "addMinutes":I
    .end local v3    # "days":I
    :cond_0
    move v13, v9

    .line 1148
    goto :goto_0

    .restart local v2    # "addMinutes":I
    :cond_1
    move v13, v5

    .line 1151
    goto :goto_1

    .restart local v1    # "addHours":I
    :cond_2
    move v13, v4

    .line 1154
    goto :goto_2

    .line 1169
    .restart local v0    # "addDays":I
    :cond_3
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_4

    .line 1174
    :cond_4
    if-gez v6, :cond_7

    .line 1175
    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    .line 1176
    .local v12, "years":I
    add-int/2addr v10, v12

    .line 1177
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    .line 1187
    .end local v12    # "years":I
    :cond_5
    :goto_5
    if-nez v6, :cond_6

    .line 1188
    invoke-static {v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    .line 1189
    .local v11, "yearLength":I
    if-le v7, v11, :cond_6

    .line 1190
    add-int/lit8 v10, v10, 0x1

    .line 1191
    sub-int/2addr v7, v11

    .line 1194
    .end local v11    # "yearLength":I
    :cond_6
    invoke-static {v10, v6}, Lcom/android/calendarcommon2/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    .line 1195
    .local v8, "monthLength":I
    if-le v7, v8, :cond_8

    .line 1196
    sub-int/2addr v7, v8

    .line 1197
    add-int/lit8 v6, v6, 0x1

    .line 1198
    if-lt v6, v14, :cond_5

    .line 1199
    add-int/lit8 v6, v6, -0xc

    .line 1200
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1178
    .end local v8    # "monthLength":I
    :cond_7
    if-lt v6, v14, :cond_5

    .line 1179
    div-int/lit8 v12, v6, 0xc

    .line 1180
    .restart local v12    # "years":I
    add-int/2addr v10, v12

    .line 1181
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_5

    .line 1207
    .end local v12    # "years":I
    .restart local v8    # "monthLength":I
    :cond_8
    iput v9, p0, Landroid/text/format/Time;->second:I

    .line 1208
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 1209
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1210
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1211
    iput v6, p0, Landroid/text/format/Time;->month:I

    .line 1212
    iput v10, p0, Landroid/text/format/Time;->year:I

    .line 1213
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon2/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    .line 1214
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    .line 1215
    return-void
.end method

.method private static useBYX(III)Z
    .locals 1
    .param p0, "freq"    # I
    .param p1, "freqConstant"    # I
    .param p2, "count"    # I

    .prologue
    .line 415
    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 1267
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1268
    add-int/lit8 p1, p1, 0xc

    .line 1269
    add-int/lit8 p0, p0, -0x1

    .line 1271
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 1283
    sget-object v1, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 1284
    .local v0, "yearDay":I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    add-int/lit8 v0, v0, 0x1

    .line 1287
    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 1234
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 58
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "r"    # Lcom/android/calendarcommon2/EventRecurrence;
    .param p3, "rangeStartDateValue"    # J
    .param p5, "rangeEndDateValue"    # J
    .param p7, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcom/android/calendarcommon2/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 741
    .local p8, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 742
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v17

    .line 743
    .local v17, "dtstartDateValue":J
    const/4 v14, 0x0

    .line 754
    .local v14, "count":I
    if-eqz p7, :cond_0

    cmp-long v55, v17, p3

    if-ltz v55, :cond_0

    cmp-long v55, v17, p5

    if-gez v55, :cond_0

    .line 756
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v14, v14, 0x1

    .line 760
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v30, v0

    .line 761
    .local v30, "iterator":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v44, v0

    .line 762
    .local v44, "until":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    .line 763
    .local v41, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 764
    .local v3, "generated":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 768
    .local v16, "days":Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon2/EventRecurrence;)V

    .line 769
    const-wide v55, 0x7fffffffffffffffL

    cmp-long v55, p5, v55

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    move/from16 v55, v0

    if-nez v55, :cond_1

    .line 770
    new-instance v55, Lcom/android/calendarcommon2/DateException;

    const-string/jumbo v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1117
    :catch_0
    move-exception v19

    .line 1118
    .local v19, "e":Lcom/android/calendarcommon2/DateException;
    const-string/jumbo v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "DateException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    invoke-static/range {v55 .. v57}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1120
    throw v19

    .line 776
    .end local v19    # "e":Lcom/android/calendarcommon2/DateException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    move/from16 v25, v0

    .line 777
    .local v25, "freqAmount":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    move/from16 v24, v0

    .line 778
    .local v24, "freq":I
    packed-switch v24, :pswitch_data_0

    .line 806
    new-instance v55, Lcom/android/calendarcommon2/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "bad freq="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_1
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1122
    .end local v24    # "freq":I
    .end local v25    # "freqAmount":I
    :catch_1
    move-exception v43

    .line 1123
    .local v43, "t":Ljava/lang/RuntimeException;
    const-string/jumbo v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "RuntimeException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    invoke-static/range {v55 .. v57}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1125
    throw v43

    .line 781
    .end local v43    # "t":Ljava/lang/RuntimeException;
    .restart local v24    # "freq":I
    .restart local v25    # "freqAmount":I
    :pswitch_0
    const/16 v26, 0x1

    .line 808
    .local v26, "freqField":I
    :cond_2
    :goto_0
    if-gtz v25, :cond_3

    .line 809
    const/16 v25, 0x1

    .line 812
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    .line 813
    .local v12, "bymonthCount":I
    const/16 v55, 0x6

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v12}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 814
    .local v51, "usebymonth":Z
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_8

    :cond_4
    const/16 v48, 0x1

    .line 816
    .local v48, "useDays":Z
    :goto_1
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    .line 817
    .local v10, "byhourCount":I
    const/16 v55, 0x3

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v49

    .line 818
    .local v49, "usebyhour":Z
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    .line 819
    .local v11, "byminuteCount":I
    const/16 v55, 0x2

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v11}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 820
    .local v50, "usebyminute":Z
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    .line 821
    .local v13, "bysecondCount":I
    const/16 v55, 0x1

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v13}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 824
    .local v52, "usebysecond":Z
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 825
    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_5

    .line 826
    if-eqz v48, :cond_5

    .line 832
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 837
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_9

    .line 839
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 843
    .local v47, "untilStr":Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_6

    .line 844
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x5a

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 847
    :cond_6
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 852
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 853
    invoke-static/range {v44 .. v44}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    .line 858
    .end local v47    # "untilStr":Ljava/lang/String;
    .local v45, "untilDateValue":J
    :goto_2
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 859
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 868
    const/16 v20, 0x0

    .line 869
    .local v20, "eventEnded":Z
    const/16 v21, 0x0

    .local v21, "failsafe":I
    move/from16 v22, v21

    .line 872
    .end local v21    # "failsafe":I
    .local v22, "failsafe":I
    :goto_3
    const/16 v38, 0x0

    .line 873
    .local v38, "monthIndex":I
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "failsafe":I
    .restart local v21    # "failsafe":I
    const/16 v55, 0x7d0

    move/from16 v0, v22

    move/from16 v1, v55

    if-le v0, v1, :cond_a

    .line 874
    const-string/jumbo v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Recurrence processing stuck with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    invoke-static/range {v55 .. v57}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1127
    :cond_7
    return-void

    .line 784
    .end local v10    # "byhourCount":I
    .end local v11    # "byminuteCount":I
    .end local v12    # "bymonthCount":I
    .end local v13    # "bysecondCount":I
    .end local v20    # "eventEnded":Z
    .end local v21    # "failsafe":I
    .end local v26    # "freqField":I
    .end local v38    # "monthIndex":I
    .end local v45    # "untilDateValue":J
    .end local v48    # "useDays":Z
    .end local v49    # "usebyhour":Z
    .end local v50    # "usebyminute":Z
    .end local v51    # "usebymonth":Z
    .end local v52    # "usebysecond":Z
    :pswitch_1
    const/16 v26, 0x2

    .line 785
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 787
    .end local v26    # "freqField":I
    :pswitch_2
    const/16 v26, 0x3

    .line 788
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 790
    .end local v26    # "freqField":I
    :pswitch_3
    const/16 v26, 0x4

    .line 791
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 793
    .end local v26    # "freqField":I
    :pswitch_4
    const/16 v26, 0x4

    .line 794
    .restart local v26    # "freqField":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v25, v55, 0x7

    .line 795
    if-gtz v25, :cond_2

    .line 796
    const/16 v25, 0x7

    goto/16 :goto_0

    .line 800
    .end local v26    # "freqField":I
    :pswitch_5
    const/16 v26, 0x5

    .line 801
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 803
    .end local v26    # "freqField":I
    :pswitch_6
    const/16 v26, 0x6

    .line 804
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 814
    .restart local v12    # "bymonthCount":I
    .restart local v51    # "usebymonth":Z
    :cond_8
    const/16 v48, 0x0

    goto/16 :goto_1

    .line 855
    .restart local v10    # "byhourCount":I
    .restart local v11    # "byminuteCount":I
    .restart local v13    # "bysecondCount":I
    .restart local v48    # "useDays":Z
    .restart local v49    # "usebyhour":Z
    .restart local v50    # "usebyminute":Z
    .restart local v52    # "usebysecond":Z
    :cond_9
    const-wide v45, 0x7fffffffffffffffL

    .restart local v45    # "untilDateValue":J
    goto/16 :goto_2

    .line 879
    .restart local v20    # "eventEnded":Z
    .restart local v21    # "failsafe":I
    .restart local v38    # "monthIndex":I
    :cond_a
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 881
    move-object/from16 v0, v30

    iget v9, v0, Landroid/text/format/Time;->year:I

    .line 882
    .local v9, "iteratorYear":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v34, v55, 0x1

    .line 883
    .local v34, "iteratorMonth":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v31, v0

    .line 884
    .local v31, "iteratorDay":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v32, v0

    .line 885
    .local v32, "iteratorHour":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v33, v0

    .line 886
    .local v33, "iteratorMinute":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v35, v0

    .line 889
    .local v35, "iteratorSecond":I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 894
    :cond_b
    if-eqz v51, :cond_f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v8, v55, v38

    .line 897
    .local v8, "month":I
    :goto_4
    add-int/lit8 v8, v8, -0x1

    .line 900
    const/4 v15, 0x1

    .line 901
    .local v15, "dayIndex":I
    const/16 v36, 0x0

    .line 906
    .local v36, "lastDayToExamine":I
    if-eqz v48, :cond_c

    .line 910
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-ne v0, v1, :cond_10

    .line 928
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v55, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v56

    sub-int v55, v55, v56

    add-int/lit8 v55, v55, 0x7

    rem-int/lit8 v54, v55, 0x7

    .line 930
    .local v54, "weekStartAdj":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v54

    .line 931
    add-int/lit8 v36, v15, 0x6

    .line 943
    .end local v54    # "weekStartAdj":I
    :cond_c
    :goto_5
    if-eqz v48, :cond_1c

    .line 944
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_11

    .line 945
    add-int/lit8 v15, v15, 0x1

    .line 1062
    :goto_6
    if-eqz v48, :cond_d

    move/from16 v0, v36

    if-le v15, v0, :cond_c

    .line 1063
    :cond_d
    add-int/lit8 v38, v38, 0x1

    .line 1064
    if-eqz v51, :cond_e

    move/from16 v0, v38

    if-lt v0, v12, :cond_b

    .line 1070
    :cond_e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    .line 1071
    .local v40, "oldDay":I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1072
    const/16 v39, 0x1

    .line 1074
    .local v39, "n":I
    :goto_7
    mul-int v53, v25, v39

    .line 1075
    .local v53, "value":I
    packed-switch v26, :pswitch_data_1

    .line 1101
    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "bad field="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    .end local v8    # "month":I
    .end local v15    # "dayIndex":I
    .end local v36    # "lastDayToExamine":I
    .end local v39    # "n":I
    .end local v40    # "oldDay":I
    .end local v53    # "value":I
    :cond_f
    move/from16 v8, v34

    .line 894
    goto :goto_4

    .line 933
    .restart local v8    # "month":I
    .restart local v15    # "dayIndex":I
    .restart local v36    # "lastDayToExamine":I
    :cond_10
    const/16 v55, 0x4

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    goto :goto_5

    .line 948
    :cond_11
    move v7, v15

    .line 956
    .local v7, "day":I
    :goto_8
    const/16 v29, 0x0

    .line 958
    .local v29, "hourIndex":I
    :cond_12
    if-eqz v49, :cond_1d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v6, v55, v29

    .line 964
    .local v6, "hour":I
    :goto_9
    const/16 v37, 0x0

    .line 966
    .local v37, "minuteIndex":I
    :cond_13
    if-eqz v50, :cond_1e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v5, v55, v37

    .line 972
    .local v5, "minute":I
    :goto_a
    const/16 v42, 0x0

    .line 974
    .local v42, "secondIndex":I
    :cond_14
    if-eqz v52, :cond_1f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v4, v55, v42

    .line 982
    .local v4, "second":I
    :goto_b
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 983
    invoke-static {v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 985
    invoke-static {v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v27

    .line 989
    .local v27, "genDateValue":J
    cmp-long v55, v27, v17

    if-ltz v55, :cond_18

    .line 994
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;->filter(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I

    move-result v23

    .line 995
    .local v23, "filtered":I
    if-nez v23, :cond_18

    .line 1011
    cmp-long v55, v17, v27

    if-nez v55, :cond_15

    if-eqz p7, :cond_15

    cmp-long v55, v17, p3

    if-ltz v55, :cond_15

    cmp-long v55, v17, p5

    if-ltz v55, :cond_16

    .line 1015
    :cond_15
    add-int/lit8 v14, v14, 0x1

    .line 1019
    :cond_16
    cmp-long v55, v27, v45

    if-gtz v55, :cond_7

    .line 1029
    cmp-long v55, v27, p5

    if-gez v55, :cond_7

    .line 1038
    cmp-long v55, v27, p3

    if-ltz v55, :cond_17

    .line 1042
    if-eqz p7, :cond_20

    .line 1043
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_17
    :goto_c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    if-eq v0, v14, :cond_7

    .line 1055
    .end local v23    # "filtered":I
    :cond_18
    add-int/lit8 v42, v42, 0x1

    .line 1056
    if-eqz v52, :cond_19

    move/from16 v0, v42

    if-lt v0, v13, :cond_14

    .line 1057
    :cond_19
    add-int/lit8 v37, v37, 0x1

    .line 1058
    if-eqz v50, :cond_1a

    move/from16 v0, v37

    if-lt v0, v11, :cond_13

    .line 1059
    :cond_1a
    add-int/lit8 v29, v29, 0x1

    .line 1060
    if-eqz v49, :cond_1b

    move/from16 v0, v29

    if-lt v0, v10, :cond_12

    .line 1061
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 951
    .end local v4    # "second":I
    .end local v5    # "minute":I
    .end local v6    # "hour":I
    .end local v7    # "day":I
    .end local v27    # "genDateValue":J
    .end local v29    # "hourIndex":I
    .end local v37    # "minuteIndex":I
    .end local v42    # "secondIndex":I
    :cond_1c
    move/from16 v7, v31

    .restart local v7    # "day":I
    goto/16 :goto_8

    .restart local v29    # "hourIndex":I
    :cond_1d
    move/from16 v6, v32

    .line 958
    goto/16 :goto_9

    .restart local v6    # "hour":I
    .restart local v37    # "minuteIndex":I
    :cond_1e
    move/from16 v5, v33

    .line 966
    goto/16 :goto_a

    .restart local v5    # "minute":I
    .restart local v42    # "secondIndex":I
    :cond_1f
    move/from16 v4, v35

    .line 974
    goto :goto_b

    .line 1045
    .restart local v4    # "second":I
    .restart local v23    # "filtered":I
    .restart local v27    # "genDateValue":J
    :cond_20
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1077
    .end local v4    # "second":I
    .end local v5    # "minute":I
    .end local v6    # "hour":I
    .end local v7    # "day":I
    .end local v23    # "filtered":I
    .end local v27    # "genDateValue":J
    .end local v29    # "hourIndex":I
    .end local v37    # "minuteIndex":I
    .end local v42    # "secondIndex":I
    .restart local v39    # "n":I
    .restart local v40    # "oldDay":I
    .restart local v53    # "value":I
    :pswitch_7
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1104
    :goto_d
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1105
    const/16 v55, 0x6

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_22

    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_22

    :cond_21
    move/from16 v22, v21

    .line 1114
    .end local v21    # "failsafe":I
    .restart local v22    # "failsafe":I
    goto/16 :goto_3

    .line 1080
    .end local v22    # "failsafe":I
    .restart local v21    # "failsafe":I
    :pswitch_8
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_d

    .line 1083
    :pswitch_9
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_d

    .line 1086
    :pswitch_a
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1089
    :pswitch_b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_d

    .line 1092
    :pswitch_c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_d

    .line 1095
    :pswitch_d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1098
    :pswitch_e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1108
    :cond_22
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v40

    if-eq v0, v1, :cond_21

    .line 1111
    add-int/lit8 v39, v39, 0x1

    .line 1112
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 778
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

    .line 1075
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J
    .locals 33
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "recur"    # Lcom/android/calendarcommon2/RecurrenceSet;
    .param p3, "rangeStartMillis"    # J
    .param p5, "rangeEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 642
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 643
    .local v31, "timezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v5

    .line 654
    .local v5, "rangeStartDateValue":J
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v7

    .line 661
    .local v7, "rangeEndDateValue":J
    :goto_0
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 663
    .local v10, "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v2, :cond_1

    .line 664
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v20, v0

    .local v20, "arr$":[Lcom/android/calendarcommon2/EventRecurrence;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v4, v20, v28

    .line 665
    .local v4, "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 664
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 658
    .end local v4    # "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v7    # "rangeEndDateValue":J
    .end local v10    # "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .end local v20    # "arr$":[Lcom/android/calendarcommon2/EventRecurrence;
    .end local v28    # "i$":I
    .end local v30    # "len$":I
    :cond_0
    const-wide v7, 0x7fffffffffffffffL

    .restart local v7    # "rangeEndDateValue":J
    goto :goto_0

    .line 669
    .restart local v10    # "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v2, :cond_2

    .line 670
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    move-object/from16 v20, v0

    .local v20, "arr$":[J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    aget-wide v22, v20, v28

    .line 673
    .local v22, "dt":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 675
    .local v24, "dtvalue":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 678
    .end local v20    # "arr$":[J
    .end local v22    # "dt":J
    .end local v24    # "dtvalue":J
    .end local v28    # "i$":I
    .end local v30    # "len$":I
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v2, :cond_3

    .line 679
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v20, v0

    .local v20, "arr$":[Lcom/android/calendarcommon2/EventRecurrence;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v13, v20, v28

    .line 680
    .local v13, "exrule":Lcom/android/calendarcommon2/EventRecurrence;
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 679
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 684
    .end local v13    # "exrule":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v20    # "arr$":[Lcom/android/calendarcommon2/EventRecurrence;
    .end local v28    # "i$":I
    .end local v30    # "len$":I
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    if-eqz v2, :cond_4

    .line 685
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    move-object/from16 v20, v0

    .local v20, "arr$":[J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    aget-wide v22, v20, v28

    .line 688
    .restart local v22    # "dt":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 690
    .restart local v24    # "dtvalue":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 685
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 693
    .end local v20    # "arr$":[J
    .end local v22    # "dt":J
    .end local v24    # "dtvalue":J
    .end local v28    # "i$":I
    .end local v30    # "len$":I
    :cond_4
    invoke-virtual {v10}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 696
    const/4 v2, 0x0

    new-array v0, v2, [J

    move-object/from16 v21, v0

    .line 710
    :cond_5
    return-object v21

    .line 703
    :cond_6
    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v29

    .line 704
    .local v29, "len":I
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 705
    .local v21, "dates":[J
    const/16 v26, 0x0

    .line 706
    .local v26, "i":I
    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Long;

    .line 707
    .local v32, "val":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Lcom/android/calendarcommon2/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 708
    add-int/lit8 v27, v26, 0x1

    .end local v26    # "i":I
    .local v27, "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    aput-wide v2, v21, v26

    move/from16 v26, v27

    .line 709
    .end local v27    # "i":I
    .restart local v26    # "i":I
    goto :goto_5
.end method

.method generateByList(III)I
    .locals 1
    .param p1, "count"    # I
    .param p2, "freq"    # I
    .param p3, "byFreq"    # I

    .prologue
    const/4 v0, 0x0

    .line 402
    if-lt p3, p2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    if-eqz p1, :cond_0

    .line 408
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;)J
    .locals 20
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "maxtime"    # Landroid/text/format/Time;
    .param p3, "recur"    # Lcom/android/calendarcommon2/RecurrenceSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v14, -0x1

    .line 87
    .local v14, "lastTime":J
    const/4 v12, 0x0

    .line 91
    .local v12, "hasCount":Z
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v1, :cond_5

    .line 92
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .local v8, "arr$":[Lcom/android/calendarcommon2/EventRecurrence;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_2

    aget-object v17, v8, v13

    .line 93
    .local v17, "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-eqz v1, :cond_1

    .line 94
    const/4 v12, 0x1

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 95
    :cond_1
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 99
    .local v18, "untilTime":J
    cmp-long v1, v18, v14

    if-lez v1, :cond_0

    .line 100
    move-wide/from16 v14, v18

    goto :goto_1

    .line 104
    .end local v17    # "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v18    # "untilTime":J
    :cond_2
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_4

    .line 105
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .local v8, "arr$":[J
    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget-wide v10, v8, v13

    .line 106
    .local v10, "dt":J
    cmp-long v1, v10, v14

    if-lez v1, :cond_3

    .line 107
    move-wide v14, v10

    .line 105
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 114
    .end local v8    # "arr$":[J
    .end local v10    # "dt":J
    :cond_4
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_8

    if-nez v12, :cond_8

    move-wide v1, v14

    .line 145
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :goto_3
    return-wide v1

    .line 117
    :cond_5
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_8

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-nez v1, :cond_8

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    if-nez v1, :cond_8

    .line 120
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .restart local v8    # "arr$":[J
    array-length v0, v8

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    aget-wide v10, v8, v13

    .line 121
    .restart local v10    # "dt":J
    cmp-long v1, v10, v14

    if-lez v1, :cond_6

    .line 122
    move-wide v14, v10

    .line 120
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v10    # "dt":J
    :cond_7
    move-wide v1, v14

    .line 125
    goto :goto_3

    .line 130
    .end local v8    # "arr$":[J
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :cond_8
    if-nez v12, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-nez v1, :cond_9

    if-eqz p2, :cond_c

    .line 133
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    if-eqz p2, :cond_a

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J

    move-result-object v9

    .line 140
    .local v9, "dates":[J
    array-length v1, v9

    if-nez v1, :cond_b

    .line 141
    const-wide/16 v1, 0x0

    goto :goto_3

    .line 133
    .end local v9    # "dates":[J
    :cond_a
    const-wide/16 v6, -0x1

    goto :goto_5

    .line 143
    .restart local v9    # "dates":[J
    :cond_b
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v9, v1

    goto :goto_3

    .line 145
    .end local v9    # "dates":[J
    :cond_c
    const-wide/16 v1, -0x1

    goto :goto_3
.end method

.method public getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;)J
    .locals 2
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "recur"    # Lcom/android/calendarcommon2/RecurrenceSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;)J

    move-result-wide v0

    return-wide v0
.end method
