.class public Lcom/kingsoft/mail/FormattedDateBuilder;
.super Ljava/lang/Object;
.source "FormattedDateBuilder.java"


# instance fields
.field private dateFormatter:Ljava/util/Formatter;

.field private mContext:Landroid/content/Context;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    .line 42
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    .line 43
    return-void
.end method

.method private formatLongDayAndDate(J)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "when"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    iget-object v0, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    const v6, 0x80016

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 71
    iget-object v0, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatLongTime(J)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "when"    # J

    .prologue
    .line 76
    const/16 v1, 0xc

    invoke-static {p1, p2, v1}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method private static isYesterday(J)Z
    .locals 6
    .param p0, "when"    # J

    .prologue
    .line 86
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 87
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 89
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 90
    .local v2, "thenYear":I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 91
    .local v0, "thenMonth":I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 93
    .local v1, "thenMonthDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 94
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatLongDateTime(J)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "when"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    iget-object v1, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const v1, 0x7f10015a

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/FormattedDateBuilder;->formatLongTime(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f100159

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/FormattedDateBuilder;->formatLongDayAndDate(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/FormattedDateBuilder;->formatLongTime(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public formatShortDate(J)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 46
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/16 v0, 0xc

    invoke-static {p1, p2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/FormattedDateBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
