.class public Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;
.super Ljava/lang/Object;
.source "ListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/operatorspan/ListHelper$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    return-void
.end method

.method public static applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 19
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "listType"    # Lcom/kingsoft/email/widget/text/span/ListType;

    .prologue
    .line 201
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v9

    .line 202
    .local v9, "length":I
    if-eqz v9, :cond_0

    move/from16 v0, p1

    if-ne v0, v9, :cond_2

    .line 203
    :cond_0
    const/4 v11, 0x0

    .line 238
    .end local p2    # "end":I
    :cond_1
    return-object v11

    .line 206
    .restart local p2    # "end":I
    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v16

    .line 207
    .local v16, "startList":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v16, :cond_3

    .line 208
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->split(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 211
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_5

    add-int/lit8 v17, p2, -0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v3

    .line 212
    .local v3, "endList":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v3, :cond_4

    .line 213
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_6

    add-int/lit8 v17, p2, -0x1

    :goto_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->split(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 217
    :cond_4
    invoke-static/range {p0 .. p2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->removeLists(Landroid/text/Editable;II)V

    .line 220
    new-instance v17, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    invoke-direct/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;-><init>()V

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setEvery(I)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v11

    .line 221
    .local v11, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    const-class v17, Landroid/text/style/LeadingMarginSpan$Standard;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getPara(Landroid/text/Editable;ILjava/lang/Class;)Landroid/text/style/LeadingMarginSpan;

    move-result-object v4

    check-cast v4, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 222
    .local v4, "firstParaSpan":Landroid/text/style/LeadingMarginSpan$Standard;
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 223
    .local v5, "firstParaSpanStart":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    .end local p2    # "end":I
    :goto_2
    const-class v17, Landroid/text/style/LeadingMarginSpan$Standard;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getPara(Landroid/text/Editable;ILjava/lang/Class;)Landroid/text/style/LeadingMarginSpan;

    move-result-object v7

    check-cast v7, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 224
    .local v7, "lastParaSpan":Landroid/text/style/LeadingMarginSpan$Standard;
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 225
    .local v8, "lastParaSpanEnd":I
    const/16 v17, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v11, v5, v8, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 226
    const-class v17, Landroid/text/style/LeadingMarginSpan$Standard;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v5, v8, v1}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/LeadingMarginSpan$Standard;

    .line 227
    .local v15, "paraSpans":[Landroid/text/style/LeadingMarginSpan$Standard;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    .line 228
    aget-object v12, v15, v6

    .line 229
    .local v12, "paraSpan":Landroid/text/style/LeadingMarginSpan$Standard;
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 230
    .local v14, "paraSpanStart":I
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 231
    .local v13, "paraSpanEnd":I
    new-instance v17, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    invoke-direct/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;-><init>()V

    add-int/lit8 v18, v6, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setNumber(I)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setParent(Lcom/kingsoft/email/widget/text/span/ListSpan;)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v10

    .line 232
    .local v10, "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    const/16 v17, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v10, v14, v13, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 233
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyListItemBulletStyleByPos(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListItemSpan;)V

    .line 235
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v3    # "endList":Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v4    # "firstParaSpan":Landroid/text/style/LeadingMarginSpan$Standard;
    .end local v5    # "firstParaSpanStart":I
    .end local v6    # "i":I
    .end local v7    # "lastParaSpan":Landroid/text/style/LeadingMarginSpan$Standard;
    .end local v8    # "lastParaSpanEnd":I
    .end local v10    # "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .end local v11    # "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v12    # "paraSpan":Landroid/text/style/LeadingMarginSpan$Standard;
    .end local v13    # "paraSpanEnd":I
    .end local v14    # "paraSpanStart":I
    .end local v15    # "paraSpans":[Landroid/text/style/LeadingMarginSpan$Standard;
    .restart local p2    # "end":I
    :cond_5
    move/from16 v17, p2

    .line 211
    goto/16 :goto_0

    .restart local v3    # "endList":Lcom/kingsoft/email/widget/text/span/ListSpan;
    :cond_6
    move/from16 v17, p2

    .line 213
    goto/16 :goto_1

    .line 223
    .restart local v4    # "firstParaSpan":Landroid/text/style/LeadingMarginSpan$Standard;
    .restart local v5    # "firstParaSpanStart":I
    .restart local v11    # "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_2
.end method

.method public static applyListItemBulletStyleByEnv(Landroid/text/Editable;II)V
    .locals 4
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 349
    const-class v3, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-interface {p0, p1, p2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 350
    .local v1, "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    if-eqz v1, :cond_1

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 353
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 354
    .local v2, "lstItemStart":I
    if-lt v2, p1, :cond_0

    .line 355
    aget-object v3, v1, v0

    invoke-static {p0, v3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyListItemBulletStyleByPos(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListItemSpan;)V

    .line 352
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    .end local v2    # "lstItemStart":I
    :cond_1
    return-void
.end method

.method public static applyListItemBulletStyleByPos(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListItemSpan;)V
    .locals 7
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "liSpan"    # Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 368
    invoke-static {}, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;->getDefaultFontSize()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontSize(F)V

    .line 369
    invoke-static {}, Lcom/kingsoft/email/widget/text/span/FontColorSpan;->getDefaultFontColor()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontColor(I)V

    .line 370
    invoke-virtual {p1, v5}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontItalic(Z)V

    .line 371
    invoke-virtual {p1, v5}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontBold(Z)V

    .line 372
    invoke-virtual {p1, v5}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontUnderline(Z)V

    .line 374
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 376
    .local v2, "startIndex":I
    const-class v4, Landroid/text/style/CharacterStyle;

    invoke-static {p0, v2, v2, v4}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getTextStylesByRange(Landroid/text/Editable;IILjava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    .line 377
    .local v3, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 378
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/kingsoft/email/widget/text/Style;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/widget/text/Style;

    .line 380
    .local v1, "liStyle":Lcom/kingsoft/email/widget/text/Style;
    sget-object v4, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper$1;->$SwitchMap$com$kingsoft$email$widget$text$IStyleable$StyleType:[I

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style;->getMainArgument()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontSize(F)V

    goto :goto_0

    .line 385
    :pswitch_1
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style;->getMainArgument()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontColor(I)V

    goto :goto_0

    .line 388
    :pswitch_2
    invoke-virtual {p1, v6}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontBold(Z)V

    goto :goto_0

    .line 391
    :pswitch_3
    invoke-virtual {p1, v6}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontItalic(Z)V

    goto :goto_0

    .line 394
    :pswitch_4
    invoke-virtual {p1, v6}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setFontUnderline(Z)V

    goto :goto_0

    .line 401
    .end local v1    # "liStyle":Lcom/kingsoft/email/widget/text/Style;
    :cond_0
    return-void

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static changeListType(Landroid/text/Editable;ILcom/kingsoft/email/widget/text/span/ListType;)V
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p2, "listType"    # Lcom/kingsoft/email/widget/text/span/ListType;

    .prologue
    .line 153
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v0

    .line 154
    .local v0, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p2}, Lcom/kingsoft/email/widget/text/span/ListSpan;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)V

    .line 157
    :cond_0
    return-void
.end method

.method public static containList(Landroid/text/Editable;I)Z
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFisrtListItem(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .locals 4
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v1

    .line 72
    .local v1, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 77
    .local v2, "listSpanStart":I
    const-class v3, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-static {p0, v2, v3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 78
    .local v0, "firstLiSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    goto :goto_0
.end method

.method public static getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 34
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/span/ListSpan;

    return-object v0
.end method

.method public static getListIndex(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListSpan;)I
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "listSpan"    # Lcom/kingsoft/email/widget/text/span/ListSpan;

    .prologue
    .line 42
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getListItem(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 94
    const-class v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-static {p0, p1, v1}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 95
    .local v0, "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    return-object v0
.end method

.method public static getListItem(Landroid/text/Editable;II)Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .locals 4
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p2, "number"    # I

    .prologue
    const/4 v2, 0x0

    .line 99
    if-gez p2, :cond_1

    move-object v0, v2

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getFisrtListItem(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v0

    .line 104
    .local v0, "curLiSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    const/4 v1, 0x0

    .line 105
    .local v1, "itemIndex":I
    :goto_1
    if-eqz v0, :cond_2

    .line 106
    if-eq v1, p2, :cond_0

    .line 110
    const-class v3, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-static {p0, v0, v3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getNextAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "curLiSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    check-cast v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 111
    .restart local v0    # "curLiSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 114
    goto :goto_0
.end method

.method public static getListItemCount(Landroid/text/Editable;I)I
    .locals 5
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    .line 83
    .local v2, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v2, :cond_0

    .line 84
    const/4 v4, -0x1

    .line 90
    :goto_0
    return v4

    .line 87
    :cond_0
    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 88
    .local v3, "start":I
    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "end":I
    const-class v4, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-static {p0, v3, v0, v4}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 90
    .local v1, "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    array-length v4, v1

    goto :goto_0
.end method

.method public static getListItems(Landroid/text/Editable;I)[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .locals 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v1

    .line 119
    .local v1, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v1, :cond_0

    .line 120
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {p0, v1}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v2

    .line 124
    .local v2, "listSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    iget v3, v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, v2, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    const-class v5, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-static {p0, v3, v4, v5}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 125
    .local v0, "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    goto :goto_0
.end method

.method public static getListType(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListType;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v0

    .line 67
    .local v0, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->NONE:Lcom/kingsoft/email/widget/text/span/ListType;

    goto :goto_0
.end method

.method public static getLists(Landroid/text/Editable;II)[Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 38
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingsoft/email/widget/text/span/ListSpan;

    return-object v0
.end method

.method public static getNextAdjacencyList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v0

    .line 57
    .local v0, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    .line 61
    :cond_0
    const-class v2, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-static {p0, v0, v2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getNextAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 62
    .local v1, "nextListSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    goto :goto_0
.end method

.method public static getPrevAdjacencyList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v0

    .line 47
    .local v0, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v0, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    .line 51
    :cond_0
    const-class v2, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-static {p0, v0, v2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getPrevAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 52
    .local v1, "prevListSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    goto :goto_0
.end method

.method public static getTextStylesByRange(Landroid/text/Editable;IILjava/lang/Class;)Ljava/util/Map;
    .locals 12
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "styleClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            "Lcom/kingsoft/email/widget/text/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v9, "styles":Ljava/util/Map;, "Ljava/util/Map<Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style;>;"
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 407
    .local v7, "spans":[Ljava/lang/Object;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 408
    .local v4, "span":Ljava/lang/Object;
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    if-gt v10, p1, :cond_0

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    if-ge v10, p2, :cond_1

    .line 407
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-static {v4}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v8

    .line 413
    .local v8, "style":Lcom/kingsoft/email/widget/text/Style;
    invoke-virtual {v8}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v10

    sget-object v11, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v10, v11}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 417
    new-instance v5, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-direct {v5, v10, v11}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    .line 418
    .local v5, "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    new-instance v10, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    invoke-direct {v10, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanInterval;-><init>(II)V

    invoke-static {v5, v10}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getRelation(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    move-result-object v6

    .line 419
    .local v6, "spanRelation":Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    sget-object v10, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->CONTAINING:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    invoke-virtual {v6, v10}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->EQUAL:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    invoke-virtual {v6, v10}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 420
    :cond_2
    invoke-virtual {v8}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 421
    :cond_3
    sget-object v10, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    invoke-virtual {v6, v10}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 422
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    and-int/lit8 v1, v10, 0x33

    .line 423
    .local v1, "flags":I
    const/16 v10, 0x11

    if-eq v1, v10, :cond_4

    const/16 v10, 0x12

    if-ne v1, v10, :cond_0

    .line 424
    :cond_4
    invoke-virtual {v8}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 426
    .end local v1    # "flags":I
    :cond_5
    sget-object v10, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->RIGHT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    invoke-virtual {v6, v10}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 427
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    and-int/lit8 v1, v10, 0x33

    .line 428
    .restart local v1    # "flags":I
    const/16 v10, 0x12

    if-eq v1, v10, :cond_6

    const/16 v10, 0x22

    if-ne v1, v10, :cond_0

    .line 429
    :cond_6
    invoke-virtual {v8}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 434
    .end local v1    # "flags":I
    .end local v4    # "span":Ljava/lang/Object;
    .end local v5    # "spanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    .end local v6    # "spanRelation":Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    .end local v8    # "style":Lcom/kingsoft/email/widget/text/Style;
    :cond_7
    return-object v9
.end method

.method public static isAjacency(Landroid/text/Editable;II)Z
    .locals 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "listOneIndex"    # I
    .param p2, "listTwoIndex"    # I

    .prologue
    .line 279
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v0

    .line 280
    .local v0, "listOneSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    invoke-static {p0, p2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    .line 281
    .local v2, "listTwoSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    invoke-static {p0, v0}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v1

    .line 282
    .local v1, "listOneSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    invoke-static {p0, v2}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v3

    .line 283
    .local v3, "listTwoSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    invoke-static {v1, v3}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getRelation(Lcom/kingsoft/email/widget/text/span/SpanInterval;Lcom/kingsoft/email/widget/text/span/SpanInterval;)Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    move-result-object v4

    .line 284
    .local v4, "realationType":Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    sget-object v5, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->LEFT_ADJACENCY:Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static mergeAnceps(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p2, "onlyMergeIfSameType"    # Z

    .prologue
    .line 333
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v0

    .line 334
    .local v0, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v0, :cond_1

    .line 335
    const/4 v1, 0x0

    .line 341
    :cond_0
    :goto_0
    return-object v1

    .line 338
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->mergePrev(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    .line 339
    .local v2, "mergedListSpanPrev":Lcom/kingsoft/email/widget/text/span/ListSpan;
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->mergeNext(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v1

    .line 341
    .local v1, "mergedListSpanNext":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_0
.end method

.method public static mergeNext(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 8
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p2, "onlyMergeIfSameType"    # Z

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v1

    .line 311
    .local v1, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v2

    .line 315
    :cond_1
    const-class v6, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-static {p0, v1, v6}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getNextAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 316
    .local v4, "nextListSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v4, :cond_0

    .line 320
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListType(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v0

    .line 321
    .local v0, "curListType":Lcom/kingsoft/email/widget/text/span/ListType;
    invoke-static {p0, v4}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListIndex(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListSpan;)I

    move-result v3

    .line 322
    .local v3, "nextListIndex":I
    invoke-static {p0, v3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListType(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v5

    .line 323
    .local v5, "nextListType":Lcom/kingsoft/email/widget/text/span/ListType;
    if-eqz p2, :cond_2

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/widget/text/span/ListType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    :cond_2
    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {p0, v6, v7, v0}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    .line 328
    .local v2, "mergedSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    goto :goto_0
.end method

.method public static mergePrev(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 7
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p2, "onlyMergeIfSameType"    # Z

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v1

    .line 289
    .local v1, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v2

    .line 293
    :cond_1
    const-class v6, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-static {p0, v1, v6}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getPrevAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 294
    .local v4, "prevListSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v4, :cond_0

    .line 298
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListType(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v0

    .line 299
    .local v0, "curListType":Lcom/kingsoft/email/widget/text/span/ListType;
    invoke-static {p0, v4}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListIndex(Landroid/text/Editable;Lcom/kingsoft/email/widget/text/span/ListSpan;)I

    move-result v3

    .line 300
    .local v3, "prevListIndex":I
    invoke-static {p0, v3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListType(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v5

    .line 301
    .local v5, "prevListType":Lcom/kingsoft/email/widget/text/span/ListType;
    if-eqz p2, :cond_2

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/widget/text/span/ListType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    :cond_2
    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p0, v3, v6, v0}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    .line 306
    .local v2, "mergedSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    goto :goto_0
.end method

.method public static recalcList(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 129
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    .line 130
    .local v2, "list":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 131
    .local v3, "needNumber":Z
    :goto_0
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListItems(Landroid/text/Editable;I)[Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v1

    .line 132
    .local v1, "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 133
    if-eqz v3, :cond_1

    .line 134
    aget-object v4, v1, v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setNumber(I)V

    .line 132
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "i":I
    .end local v1    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .end local v3    # "needNumber":Z
    :cond_0
    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v4

    sget-object v5, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/span/ListType;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 136
    .restart local v0    # "i":I
    .restart local v1    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .restart local v3    # "needNumber":Z
    :cond_1
    aget-object v4, v1, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->setNumber(I)V

    goto :goto_2

    .line 139
    :cond_2
    return-void
.end method

.method public static recreateListItemsByNChar(Landroid/text/Editable;I)V
    .locals 4
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 142
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    .line 143
    .local v2, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 144
    .local v1, "liStart":I
    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 146
    .local v0, "liEnd":I
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->removeList(Landroid/text/Editable;I)V

    .line 147
    invoke-static {p0, v1, v0}, Lcom/kingsoft/email/widget/text/helper/ParaHelper;->applyParaByNChar(Landroid/text/Editable;II)V

    .line 149
    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v3

    invoke-static {p0, v1, v0, v3}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->applyList(Landroid/text/Editable;IILcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 150
    return-void
.end method

.method public static removeList(Landroid/text/Editable;I)V
    .locals 10
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v6

    .line 165
    .local v6, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v6, :cond_0

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getListItems(Landroid/text/Editable;I)[Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v5

    .line 170
    .local v5, "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    move-object v0, v5

    .local v0, "arr$":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 171
    .local v4, "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 172
    .local v7, "start":I
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 173
    .local v1, "end":I
    new-instance v8, Landroid/text/style/LeadingMarginSpan$Standard;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    const/16 v9, 0x33

    invoke-interface {p0, v8, v7, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 174
    invoke-interface {p0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .end local v1    # "end":I
    .end local v4    # "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .end local v7    # "start":I
    :cond_1
    invoke-interface {p0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static removeLists(Landroid/text/Editable;II)V
    .locals 7
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 182
    if-ne p1, p2, :cond_0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 183
    const-class v6, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-interface {p0, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 188
    .local v5, "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    :goto_0
    move-object v0, v5

    .local v0, "arr$":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 189
    .local v3, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 190
    .local v4, "listSpanStart":I
    invoke-static {p0, v4}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->removeList(Landroid/text/Editable;I)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "arr$":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v4    # "listSpanStart":I
    .end local v5    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    :cond_0
    const-class v6, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-static {p0, p1, p2, v6}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/kingsoft/email/widget/text/span/ListSpan;

    .restart local v5    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    goto :goto_0

    .line 192
    .restart local v0    # "arr$":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_1
    return-void
.end method

.method public static split(Landroid/text/Editable;IZ)Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 11
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p2, "includeInSplitted"    # Z

    .prologue
    const/16 v10, 0x33

    const/4 v6, 0x0

    .line 248
    invoke-static {p0, p1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->getList(Landroid/text/Editable;I)Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v3

    .line 249
    .local v3, "listSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-nez v3, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v6

    .line 253
    :cond_1
    invoke-static {p0, v3}, Lcom/kingsoft/email/widget/text/span/SpanIntervalHelper;->getInterval(Landroid/text/Editable;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/span/SpanInterval;

    move-result-object v4

    .line 255
    .local v4, "listSpanInterval":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    const-class v8, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-static {p0, p1, v8}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getPara(Landroid/text/Editable;ILjava/lang/Class;)Landroid/text/style/LeadingMarginSpan;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 256
    .local v0, "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 257
    .local v2, "liSpanStart":I
    if-eqz p2, :cond_2

    iget v8, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-eq v2, v8, :cond_0

    .line 261
    :cond_2
    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 262
    .local v1, "liSpanEnd":I
    if-nez p2, :cond_3

    iget v8, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-eq v1, v8, :cond_0

    .line 266
    :cond_3
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 267
    if-eqz p2, :cond_4

    move v5, v2

    .line 268
    .local v5, "originListSpanEnd":I
    :goto_1
    iget v8, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-interface {p0, v3, v8, v5, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 270
    if-eqz p2, :cond_5

    move v7, v2

    .line 271
    .local v7, "splittedListSpanStart":I
    :goto_2
    new-instance v8, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    invoke-direct {v8}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v6

    .line 272
    .local v6, "splittedListSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    iget v8, v4, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-interface {p0, v6, v7, v8, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 273
    invoke-static {p0, v1}, Lcom/kingsoft/email/widget/text/operatorspan/ListHelper;->recalcList(Landroid/text/Editable;I)V

    goto :goto_0

    .end local v5    # "originListSpanEnd":I
    .end local v6    # "splittedListSpan":Lcom/kingsoft/email/widget/text/span/ListSpan;
    .end local v7    # "splittedListSpanStart":I
    :cond_4
    move v5, v1

    .line 267
    goto :goto_1

    .restart local v5    # "originListSpanEnd":I
    :cond_5
    move v7, v1

    .line 270
    goto :goto_2
.end method
