.class public Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;
.super Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;
.source "ListItemPhOpSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;


# instance fields
.field private mEditable:Landroid/text/Editable;

.field private mListType:Lcom/kingsoft/email/widget/text/span/ListType;

.field private mNumber:I


# direct methods
.method public constructor <init>(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListType;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "listType"    # Lcom/kingsoft/email/widget/text/span/ListType;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingsoft/email/widget/text/operatorspan/PhOpSpan;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mNumber:I

    .line 25
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    .line 26
    iput-object p2, p0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 27
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 71
    return-void
.end method

.method public execute()V
    .locals 22

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v7

    .line 36
    .local v7, "interval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v18, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v19, v0

    const-class v20, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-interface/range {v17 .. v20}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 37
    .local v11, "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    array-length v0, v11

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    aget-object v10, v11, v17

    .line 39
    .local v10, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    :goto_0
    const/16 v16, 0x0

    .line 40
    .local v16, "splitPartCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v18, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v19, v0

    const-class v20, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-interface/range {v17 .. v20}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    .line 41
    .local v14, "pSpans":[Ljava/lang/Object;
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/Object;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v12, v4, v6

    .line 42
    .local v12, "pSpan":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v13

    .line 43
    .local v13, "pSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    invoke-static {v13, v7}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->substract(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)[Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v15

    .line 44
    .local v15, "results":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 45
    new-instance v17, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    invoke-direct/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;-><init>()V

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setNumber(I)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setParent(Lcom/kingsoft/email/widget/text/span/ListSpan;)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v9

    .line 46
    .local v9, "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    aget-object v18, v15, v5

    move-object/from16 v0, v18

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v18, v0

    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v19, v0

    const/16 v20, 0x33

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyListItemBulletStyleByPos(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListItemSpan;)V

    .line 48
    add-int/lit8 v16, v16, 0x1

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 37
    .end local v4    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .end local v10    # "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v12    # "pSpan":Ljava/lang/Object;
    .end local v13    # "pSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v14    # "pSpans":[Ljava/lang/Object;
    .end local v15    # "results":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v16    # "splitPartCount":I
    :cond_0
    new-instance v17, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    invoke-direct/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;-><init>()V

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setEvery(I)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v10

    goto/16 :goto_0

    .line 51
    .restart local v4    # "arr$":[Ljava/lang/Object;
    .restart local v5    # "i":I
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    .restart local v12    # "pSpan":Ljava/lang/Object;
    .restart local v13    # "pSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .restart local v14    # "pSpans":[Ljava/lang/Object;
    .restart local v15    # "results":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .restart local v16    # "splitPartCount":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 54
    .end local v5    # "i":I
    .end local v12    # "pSpan":Ljava/lang/Object;
    .end local v13    # "pSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v15    # "results":[Lcom/kingsoft/email/widget/text/span/SpanInterval;
    :cond_2
    invoke-virtual {v7}, Lcom/kingsoft/email/widget/text/span/SpanInterval;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    new-instance v18, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    invoke-direct/range {v18 .. v18}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;-><init>()V

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setNumber(I)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setParent(Lcom/kingsoft/email/widget/text/span/ListSpan;)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v18

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v19, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v20, v0

    const/16 v21, 0x33

    invoke-interface/range {v17 .. v21}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v18, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    move/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v10, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 59
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 64
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->recalcList(Landroid/text/Editable;I)V

    .line 65
    return-void

    .line 60
    :cond_5
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mEditable:Landroid/text/Editable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getLeadingMarginLineCount()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    return v0
.end method

.method public getListType()Lcom/kingsoft/email/widget/text/span/ListType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    return-object v0
.end method
