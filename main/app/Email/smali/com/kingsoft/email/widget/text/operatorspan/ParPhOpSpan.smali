.class public Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;
.super Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;
.source "ParPhOpSpan.java"


# instance fields
.field private mEditable:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    .line 16
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 19

    .prologue
    .line 20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v4

    .line 22
    .local v4, "interval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    const/4 v10, 0x0

    .line 23
    .local v10, "splitPartCount":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    iget v15, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v0, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v16, v0

    const-class v17, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-interface/range {v14 .. v17}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 24
    .local v8, "pSpans":[Ljava/lang/Object;
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    .line 25
    .local v6, "pSpan":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    invoke-static {v14, v6}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v7

    .line 26
    .local v7, "pSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    invoke-static {v7, v4}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->substract(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)[Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v9

    .line 27
    .local v9, "results":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v14, v9

    if-ge v2, v14, :cond_0

    .line 28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    new-instance v15, Landroid/text/style/LeadingMarginSpan$Standard;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    aget-object v16, v9, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v16, v0

    aget-object v17, v9, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v17, v0

    const/16 v18, 0x33

    invoke-interface/range {v14 .. v18}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 29
    add-int/lit8 v10, v10, 0x1

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    invoke-interface {v14, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "i":I
    .end local v6    # "pSpan":Ljava/lang/Object;
    .end local v7    # "pSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v9    # "results":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    :cond_1
    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/span/SpanInterval;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    iget v15, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v0, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 37
    .local v11, "text":Ljava/lang/String;
    const/4 v13, 0x0

    .line 39
    .local v13, "textStart":I
    :goto_2
    const/16 v14, 0xa

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .local v12, "textEnd":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_2

    .line 40
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    new-instance v15, Landroid/text/style/LeadingMarginSpan$Standard;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    iget v0, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v16, v0

    add-int v16, v16, v13

    iget v0, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v17, v0

    add-int v17, v17, v12

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x33

    invoke-interface/range {v14 .. v18}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 41
    add-int/lit8 v13, v12, 0x1

    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_3

    .line 44
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    new-instance v15, Landroid/text/style/LeadingMarginSpan$Standard;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    iget v0, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v16, v0

    add-int v16, v16, v13

    iget v0, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v17, v0

    const/16 v18, 0x33

    invoke-interface/range {v14 .. v18}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 46
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 50
    .end local v11    # "text":Ljava/lang/String;
    .end local v12    # "textEnd":I
    .end local v13    # "textStart":I
    :cond_4
    :goto_3
    return-void

    .line 47
    :cond_5
    const/4 v14, 0x2

    if-lt v10, v14, :cond_4

    .line 48
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingsoft/email/widget/text/operatorspan/ParPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_3
.end method
