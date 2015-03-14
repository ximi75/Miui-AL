.class public Lcom/kingsoft/email/widget/text/span/SpanBuilder;
.super Ljava/lang/Object;
.source "SpanBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;
    .locals 8
    .param p0, "style"    # Lcom/kingsoft/email/widget/text/Style;

    .prologue
    const/4 v7, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .local v3, "span":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v4

    .line 22
    .local v4, "styleType":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    new-instance v3, Landroid/text/style/StyleSpan;

    .end local v3    # "span":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 44
    :cond_0
    :goto_0
    return-object v3

    .line 24
    .restart local v3    # "span":Ljava/lang/Object;
    :cond_1
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    new-instance v3, Landroid/text/style/UnderlineSpan;

    .end local v3    # "span":Ljava/lang/Object;
    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .local v3, "span":Landroid/text/style/UnderlineSpan;
    goto :goto_0

    .line 26
    .local v3, "span":Ljava/lang/Object;
    :cond_2
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 27
    new-instance v3, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;

    .end local v3    # "span":Ljava/lang/Object;
    const/4 v5, 0x2

    invoke-direct {v3, v5}, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;-><init>(I)V

    .local v3, "span":Lcom/kingsoft/email/widget/text/span/FontItalicSpan;
    goto :goto_0

    .line 28
    .local v3, "span":Ljava/lang/Object;
    :cond_3
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 29
    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->getMainArgumentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/widget/text/Style;->getArgument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_4

    const/high16 v1, -0x1000000

    .line 31
    .end local v0    # "arg":Ljava/lang/Object;
    .local v1, "color":I
    :goto_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .end local v3    # "span":Ljava/lang/Object;
    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 32
    .local v3, "span":Landroid/text/style/ForegroundColorSpan;
    goto :goto_0

    .line 30
    .end local v1    # "color":I
    .restart local v0    # "arg":Ljava/lang/Object;
    .local v3, "span":Ljava/lang/Object;
    :cond_4
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 32
    :cond_5
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 33
    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->getMainArgumentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kingsoft/email/widget/text/Style;->getArgument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .restart local v0    # "arg":Ljava/lang/Object;
    if-nez v0, :cond_6

    const/16 v2, 0xc

    .line 35
    .end local v0    # "arg":Ljava/lang/Object;
    .local v2, "size":I
    :goto_2
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    .end local v3    # "span":Ljava/lang/Object;
    invoke-direct {v3, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 36
    .local v3, "span":Landroid/text/style/AbsoluteSizeSpan;
    goto :goto_0

    .line 34
    .end local v2    # "size":I
    .restart local v0    # "arg":Ljava/lang/Object;
    .local v3, "span":Ljava/lang/Object;
    :cond_6
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 36
    :cond_7
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_COMMON:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 37
    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    .end local v3    # "span":Ljava/lang/Object;
    invoke-direct {v3, v7}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    .local v3, "span":Landroid/text/style/LeadingMarginSpan$Standard;
    goto :goto_0

    .line 38
    .local v3, "span":Ljava/lang/Object;
    :cond_8
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 39
    new-instance v5, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    invoke-direct {v5}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;-><init>()V

    sget-object v6, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setEvery(I)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v3

    .local v3, "span":Lcom/kingsoft/email/widget/text/span/ListSpan;
    goto/16 :goto_0

    .line 40
    .local v3, "span":Ljava/lang/Object;
    :cond_9
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    new-instance v5, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    invoke-direct {v5}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;-><init>()V

    sget-object v6, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setEvery(I)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v3

    .local v3, "span":Lcom/kingsoft/email/widget/text/span/ListSpan;
    goto/16 :goto_0
.end method

.method public static getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;
    .locals 1
    .param p0, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/email/widget/text/IStyleable$StyleType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-class v0, Landroid/text/style/StyleSpan;

    .line 117
    :goto_0
    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-class v0, Landroid/text/style/UnderlineSpan;

    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const-class v0, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;

    goto :goto_0

    .line 111
    :cond_2
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    const-class v0, Landroid/text/style/ForegroundColorSpan;

    goto :goto_0

    .line 113
    :cond_3
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const-class v0, Landroid/text/style/AbsoluteSizeSpan;

    goto :goto_0

    .line 117
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;
    .locals 7
    .param p0, "span"    # Ljava/lang/Object;

    .prologue
    .line 73
    new-instance v1, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;-><init>()V

    .line 74
    .local v1, "styleBuilder":Lcom/kingsoft/email/widget/text/Style$StyleBuilder;
    instance-of v5, p0, Landroid/text/style/StyleSpan;

    if-eqz v5, :cond_2

    move-object v2, p0

    .line 75
    check-cast v2, Landroid/text/style/StyleSpan;

    .line 76
    .local v2, "styleSpan":Landroid/text/style/StyleSpan;
    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v4

    .line 77
    .local v4, "typeface":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 78
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    .line 101
    .end local v2    # "styleSpan":Landroid/text/style/StyleSpan;
    .end local v4    # "typeface":I
    .end local p0    # "span":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->create()Lcom/kingsoft/email/widget/text/Style;

    move-result-object v5

    return-object v5

    .line 79
    .restart local v2    # "styleSpan":Landroid/text/style/StyleSpan;
    .restart local v4    # "typeface":I
    .restart local p0    # "span":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 80
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    goto :goto_0

    .line 82
    .end local v2    # "styleSpan":Landroid/text/style/StyleSpan;
    .end local v4    # "typeface":I
    :cond_2
    instance-of v5, p0, Landroid/text/style/UnderlineSpan;

    if-eqz v5, :cond_3

    .line 83
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_UNDERLINE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    goto :goto_0

    .line 84
    :cond_3
    instance-of v5, p0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v5, :cond_4

    .line 85
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    .line 86
    check-cast p0, Landroid/text/style/ForegroundColorSpan;

    .end local p0    # "span":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setMainArgument(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    goto :goto_0

    .line 87
    .restart local p0    # "span":Ljava/lang/Object;
    :cond_4
    instance-of v5, p0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v5, :cond_5

    .line 88
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    .line 89
    check-cast p0, Landroid/text/style/AbsoluteSizeSpan;

    .end local p0    # "span":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setMainArgument(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    goto :goto_0

    .line 90
    .restart local p0    # "span":Ljava/lang/Object;
    :cond_5
    instance-of v5, p0, Landroid/text/style/LeadingMarginSpan$Standard;

    if-eqz v5, :cond_6

    .line 91
    sget-object v5, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_COMMON:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1, v5}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    goto :goto_0

    .line 92
    :cond_6
    instance-of v5, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    if-eqz v5, :cond_8

    move-object v0, p0

    .line 93
    check-cast v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 94
    .local v0, "listItemSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->getNumber()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_BULLET:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .line 95
    .local v3, "type":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    :goto_1
    invoke-virtual {v1, v3}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    goto :goto_0

    .line 94
    .end local v3    # "type":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    :cond_7
    sget-object v3, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->P_NUMBERING:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    goto :goto_1

    .line 96
    .end local v0    # "listItemSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    :cond_8
    instance-of v5, p0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    if-eqz v5, :cond_0

    .line 97
    check-cast p0, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;

    .end local p0    # "span":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/operatorspan/ListItemPhOpSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/widget/text/span/ListType;->getStyleType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v3

    .line 98
    .restart local v3    # "type":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    invoke-virtual {v1, v3}, Lcom/kingsoft/email/widget/text/Style$StyleBuilder;->setType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Lcom/kingsoft/email/widget/text/Style$StyleBuilder;

    goto :goto_0
.end method

.method public static isStyleTypeAndArgumentsMatched(Lcom/kingsoft/email/widget/text/Style;Ljava/lang/Object;)Z
    .locals 8
    .param p0, "style"    # Lcom/kingsoft/email/widget/text/Style;
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v2

    .line 49
    .local v2, "styleType":Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    instance-of v6, p1, Landroid/text/style/StyleSpan;

    if-eqz v6, :cond_3

    move-object v1, p1

    .line 50
    check-cast v1, Landroid/text/style/StyleSpan;

    .line 51
    .local v1, "styleSpan":Landroid/text/style/StyleSpan;
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_BOLD:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v2, v6}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    invoke-virtual {v1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 69
    .end local v1    # "styleSpan":Landroid/text/style/StyleSpan;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "styleSpan":Landroid/text/style/StyleSpan;
    :cond_1
    move v4, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget-object v6, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_ITALIC:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v2, v6}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    .line 56
    .end local v1    # "styleSpan":Landroid/text/style/StyleSpan;
    :cond_3
    instance-of v6, p1, Landroid/text/style/ForegroundColorSpan;

    if-eqz v6, :cond_4

    move-object v0, p1

    .line 57
    check-cast v0, Landroid/text/style/ForegroundColorSpan;

    .line 58
    .local v0, "clrSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_COLOR:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v7}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->getMainArgumentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/kingsoft/email/widget/text/Style;->getArgument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 59
    goto :goto_0

    .line 62
    .end local v0    # "clrSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_4
    instance-of v6, p1, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 63
    check-cast v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 64
    .local v3, "szSpan":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->FONT_SIZE:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v7}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->getMainArgumentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/kingsoft/email/widget/text/Style;->getArgument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 65
    goto :goto_0
.end method

.method public static isTypeOf(Ljava/lang/Object;Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Z
    .locals 2
    .param p0, "span"    # Ljava/lang/Object;
    .param p1, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
