.class public Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;
.super Ljava/lang/Object;
.source "SpanIntervalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static add(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .locals 7
    .param p0, "first"    # Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .param p1, "second"    # Lcom/kingsoft/email/widget/text/span/SpanInterval;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getRelation(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    move-result-object v0

    .line 101
    .local v0, "relation":Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    sget-object v1, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper$1;->$SwitchMap$com$kingsoft$email$widget$text$span$SpanInterval$RelationType:[I

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    new-array v1, v5, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    :goto_0
    return-object v1

    .line 104
    :pswitch_0
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 107
    :pswitch_1
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 110
    :pswitch_2
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 112
    :pswitch_3
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 114
    :pswitch_4
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v6

    goto :goto_0

    .line 116
    :pswitch_5
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 11
    .local v2, "start":I
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 12
    .local v0, "end":I
    new-instance v1, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    invoke-direct {v1, v2, v0}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    .line 13
    .local v1, "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    return-object v1
.end method

.method public static getRelation(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    .locals 2
    .param p0, "first"    # Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .param p1, "second"    # Lcom/kingsoft/email/widget/text/span/SpanInterval;

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/SpanInterval;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->UNKNOWN:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    .line 67
    :goto_0
    return-object v0

    .line 21
    :cond_0
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-ne v0, v1, :cond_4

    .line 22
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ne v0, v1, :cond_1

    .line 23
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->EQUAL:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 24
    :cond_1
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-le v0, v1, :cond_3

    .line 25
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/SpanInterval;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->CONTAINING:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 30
    :cond_3
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ge v0, v1, :cond_f

    .line 31
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->BELONGTO:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 33
    :cond_4
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-le v0, v1, :cond_9

    .line 34
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ne v0, v1, :cond_5

    .line 35
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->BELONGTO:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 36
    :cond_5
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-le v0, v1, :cond_8

    .line 37
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ne v0, v1, :cond_6

    .line 38
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 39
    :cond_6
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ge v0, v1, :cond_7

    .line 40
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 41
    :cond_7
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-le v0, v1, :cond_f

    .line 42
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->NONE_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 44
    :cond_8
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ge v0, v1, :cond_f

    .line 45
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->BELONGTO:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 47
    :cond_9
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-ge v0, v1, :cond_f

    .line 48
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ne v0, v1, :cond_b

    .line 49
    invoke-virtual {p1}, Lcom/kingsoft/email/widget/text/span/SpanInterval;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 52
    :cond_a
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->CONTAINING:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto :goto_0

    .line 54
    :cond_b
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-le v0, v1, :cond_c

    .line 55
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->CONTAINING:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto/16 :goto_0

    .line 56
    :cond_c
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ge v0, v1, :cond_f

    .line 57
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-ne v0, v1, :cond_d

    .line 58
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto/16 :goto_0

    .line 59
    :cond_d
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-ge v0, v1, :cond_e

    .line 60
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->NONE_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto/16 :goto_0

    .line 61
    :cond_e
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v1, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-le v0, v1, :cond_f

    .line 62
    sget-object v0, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_INTERSECTION:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    goto/16 :goto_0

    .line 67
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static substract(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .locals 7
    .param p0, "first"    # Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .param p1, "second"    # Lcom/kingsoft/email/widget/text/span/SpanInterval;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getRelation(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    move-result-object v0

    .line 72
    .local v0, "relation":Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    sget-object v1, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper$1;->$SwitchMap$com$kingsoft$email$widget$text$span$SpanInterval$RelationType:[I

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    new-array v1, v5, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    :goto_0
    return-object v1

    .line 74
    :pswitch_0
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v2, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-ne v1, v2, :cond_0

    .line 75
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 76
    :cond_0
    iget v1, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v2, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ne v1, v2, :cond_1

    .line 77
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v6

    goto :goto_0

    .line 82
    :pswitch_1
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 84
    :pswitch_2
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 87
    :pswitch_3
    new-array v1, v5, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    goto :goto_0

    .line 91
    :pswitch_4
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 93
    :pswitch_5
    new-array v1, v6, [Lcom/kingsoft/email/widget/text/span/SpanInterval;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-direct {v2, v3, v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    aput-object v2, v1, v5

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
