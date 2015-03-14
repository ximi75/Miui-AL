.class public Lcom/kingsoft/email/widget/text/span/SpanHelper;
.super Ljava/lang/Object;
.source "SpanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndDsc;,
        Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;,
        Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndAsc;,
        Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartAsc;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static applySpan(Landroid/text/Editable;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v5, 0x1

    .line 302
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 303
    .local v1, "length":I
    if-eqz v1, :cond_0

    if-ne p2, v1, :cond_1

    .line 304
    :cond_0
    const/4 v2, 0x0

    .line 324
    :goto_0
    return-object v2

    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, p2, v4}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 308
    .local v3, "startSpan":Ljava/lang/Object;
    if-eqz v3, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, p2, :cond_2

    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, p2, v4, v5}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->split(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;

    .line 312
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, p3, v4}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    .local v0, "endSpan":Ljava/lang/Object;
    if-eqz v0, :cond_3

    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-le v4, p3, :cond_3

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, p3, v4, v5}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->split(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;

    .line 318
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, p2, p3, v4}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->removeSpans(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 321
    invoke-static {p1}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v2

    .line 322
    .local v2, "newSpan":Ljava/lang/Object;
    const/16 v4, 0x22

    invoke-interface {p0, v2, p2, p3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static debugGetStructureDescription(Landroid/text/Spanned;)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p0, "spannable"    # Landroid/text/Spanned;

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->debugGetStructureDescription(Landroid/text/Spanned;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static debugGetStructureDescription(Landroid/text/Spanned;II)Landroid/text/SpannableStringBuilder;
    .locals 10
    .param p0, "spannable"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 387
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 388
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    const-class v9, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 389
    .local v8, "spans":[Ljava/lang/Object;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 390
    .local v5, "span":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 391
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 392
    .local v7, "spanStart":I
    const-string/jumbo v9, "("

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 393
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 394
    const-string/jumbo v9, ", "

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 395
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 396
    .local v6, "spanEnd":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    const-string/jumbo v9, ", "

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 398
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 399
    .local v1, "flags":I
    invoke-static {v1}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->debugSpanFlagsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 400
    const-string/jumbo v9, ")"

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 401
    const-string/jumbo v9, "\n"

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "flags":I
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "spanEnd":I
    .end local v7    # "spanStart":I
    :cond_0
    return-object v4
.end method

.method private static debugSpanFlagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/16 v1, 0x21

    .line 408
    and-int/lit8 p0, p0, 0x33

    .line 409
    const/16 v0, 0x33

    if-ne p0, v0, :cond_0

    .line 410
    const-string/jumbo v0, "PAR"

    .line 421
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const/16 v0, 0x12

    if-ne p0, v0, :cond_1

    .line 412
    const-string/jumbo v0, "MP"

    goto :goto_0

    .line 413
    :cond_1
    const/16 v0, 0x11

    if-ne p0, v0, :cond_2

    .line 414
    const-string/jumbo v0, "MM"

    goto :goto_0

    .line 415
    :cond_2
    if-ne p0, v1, :cond_3

    .line 416
    const-string/jumbo v0, "PM"

    goto :goto_0

    .line 417
    :cond_3
    if-ne p0, v1, :cond_4

    .line 418
    const-string/jumbo v0, "PP"

    goto :goto_0

    .line 421
    :cond_4
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_0
.end method

.method public static getFirstSpan(Landroid/text/Editable;IILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpans(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 125
    :cond_0
    invoke-static {p0, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->sortSpansAscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V

    .line 126
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public static getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "spansExludeLeftAdjacency":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLastSpan(Landroid/text/Editable;IILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpans(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 136
    :goto_0
    return-object v1

    .line 135
    :cond_0
    invoke-static {p0, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->sortSpansDscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V

    .line 136
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public static getLastSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "spansExludeLeftAdjacency":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    if-eqz v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLastSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getLastSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getNextAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Object;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .prologue
    .line 244
    invoke-static {p2}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getNextAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getNextAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "span"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "spanClassType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 249
    .local v0, "end":I
    invoke-interface {p0, v0, v0, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 250
    .local v2, "nextListSpans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 252
    aget-object v3, v2, v1

    .line 253
    .local v3, "nextSpan":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 258
    .end local v3    # "nextSpan":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v3

    .line 250
    .restart local v3    # "nextSpan":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v3    # "nextSpan":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getPara(Landroid/text/Editable;ILjava/lang/Class;)Landroid/text/style/LeadingMarginSpan;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/text/style/LeadingMarginSpan;",
            ">(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 165
    invoke-interface {p0, p1, p1, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/LeadingMarginSpan;

    .line 166
    .local v0, "spans":[Landroid/text/style/LeadingMarginSpan;, "[TT;"
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 168
    .end local v0    # "spans":[Landroid/text/style/LeadingMarginSpan;, "[TT;"
    :goto_0
    return-object v1

    .line 166
    .restart local v0    # "spans":[Landroid/text/style/LeadingMarginSpan;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    .line 168
    .end local v0    # "spans":[Landroid/text/style/LeadingMarginSpan;, "[TT;"
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/LeadingMarginSpan;

    goto :goto_0
.end method

.method public static getPrevAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Object;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .prologue
    .line 218
    invoke-static {p2}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getSpanClassType(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getPrevAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPrevAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "span"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "spanClassType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 222
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 223
    .local v3, "start":I
    if-gtz v3, :cond_1

    move-object v1, v4

    .line 240
    :cond_0
    :goto_0
    return-object v1

    .line 227
    :cond_1
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    invoke-interface {p0, v5, v6, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "prevSpans":[Ljava/lang/Object;
    array-length v5, v2

    if-nez v5, :cond_2

    move-object v1, v4

    .line 229
    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_3

    .line 234
    aget-object v1, v2, v0

    .line 235
    .local v1, "prevSpan":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "prevSpan":Ljava/lang/Object;, "TT;"
    :cond_3
    move-object v1, v4

    .line 240
    goto :goto_0
.end method

.method public static getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getFirstSpanExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSpanIndex(Landroid/text/Editable;Ljava/lang/Object;)I
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "span"    # Ljava/lang/Object;

    .prologue
    .line 116
    invoke-interface {p0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getSpans(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 8
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 195
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 196
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    new-instance v5, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndAsc;

    invoke-direct {v5, p0}, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndAsc;-><init>(Landroid/text/Spanned;)V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "removeCountLeft":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 199
    aget-object v5, v4, v1

    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 200
    .local v0, "curSpanEnd":I
    if-gt v0, p1, :cond_0

    if-ne v0, p1, :cond_2

    aget-object v5, v4, v1

    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 206
    .end local v0    # "curSpanEnd":I
    :cond_0
    const/4 v3, 0x0

    .line 207
    .local v3, "removeCountRight":I
    array-length v5, v4

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 208
    aget-object v5, v4, v1

    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-gt v5, p2, :cond_3

    .line 214
    :cond_1
    add-int v5, v2, v3

    array-length v6, v4

    if-lt v5, v6, :cond_4

    invoke-static {v4, v7, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    :goto_2
    return-object v5

    .line 203
    .end local v3    # "removeCountRight":I
    .restart local v0    # "curSpanEnd":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "curSpanEnd":I
    .restart local v3    # "removeCountRight":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 207
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 214
    :cond_4
    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v2, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_2
.end method

.method public static getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static mergeAnceps(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p3, "onlyMergeIfSameType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 370
    .local v2, "span":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 371
    const/4 v0, 0x0

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->mergePrev(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    .line 375
    .local v1, "mergedSpanPrev":Ljava/lang/Object;
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->mergeNext(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, "mergedSpanNext":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static mergeNext(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p3, "onlyMergeIfSameType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 349
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, "curSpan":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v2

    .line 354
    :cond_1
    invoke-static {p0, v0, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getNextAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 355
    .local v3, "nextSpan":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 359
    invoke-static {v0}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    .line 360
    .local v1, "curSpanStyle":Lcom/kingsoft/email/widget/text/Style;
    if-eqz p3, :cond_2

    invoke-static {v1, v3}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->isStyleTypeAndArgumentsMatched(Lcom/kingsoft/email/widget/text/Style;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    :cond_2
    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-static {p0, v0, v4, v5}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->applySpan(Landroid/text/Editable;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 365
    .local v2, "mergedSpan":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static mergePrev(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p3, "onlyMergeIfSameType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 328
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "curSpan":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-object v2

    .line 333
    :cond_1
    invoke-static {p0, v0, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getPrevAdjacencySpan(Landroid/text/Editable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 334
    .local v3, "prevSpan":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 338
    invoke-static {v0}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v1

    .line 339
    .local v1, "curSpanStyle":Lcom/kingsoft/email/widget/text/Style;
    if-eqz p3, :cond_2

    invoke-static {v1, v3}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->isStyleTypeAndArgumentsMatched(Lcom/kingsoft/email/widget/text/Style;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    :cond_2
    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-static {p0, v0, v4, v5}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->applySpan(Landroid/text/Editable;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    .line 345
    .local v2, "mergedSpan":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static removeSpans(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 270
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "spans":[Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->removeSpans(Landroid/text/Editable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static removeSpans(Landroid/text/Editable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "spans"    # [Ljava/lang/Object;

    .prologue
    .line 262
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 263
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v3    # "span":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method public static removeSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "II",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 275
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "spans":[Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->removeSpans(Landroid/text/Editable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static sortSpansAscByEnd(Landroid/text/Spanned;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "spans":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndAsc;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndAsc;-><init>(Landroid/text/Spanned;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 153
    return-void
.end method

.method public static sortSpansAscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "spans":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartAsc;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartAsc;-><init>(Landroid/text/Spanned;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 145
    return-void
.end method

.method public static sortSpansDscByEnd(Landroid/text/Spanned;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "spans":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndDsc;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByEndDsc;-><init>(Landroid/text/Spanned;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 157
    return-void
.end method

.method public static sortSpansDscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "spans":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/widget/text/span/SpanHelper$SpanComparatorByStartDsc;-><init>(Landroid/text/Spanned;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 149
    return-void
.end method

.method public static split(Landroid/text/Editable;ILjava/lang/Class;Z)Ljava/lang/Object;
    .locals 9
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "index"    # I
    .param p3, "includeInSplitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "I",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->getSpan(Landroid/text/Editable;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 281
    .local v2, "originSpan":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 282
    const/4 v4, 0x0

    .line 298
    :goto_0
    return-object v4

    .line 285
    :cond_0
    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 286
    .local v6, "start":I
    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 287
    .local v0, "end":I
    invoke-interface {p0, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 289
    .local v1, "originFlags":I
    invoke-interface {p0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 290
    if-eqz p3, :cond_1

    move v3, p1

    .line 291
    .local v3, "originSpanEnd":I
    :goto_1
    invoke-interface {p0, v2, v6, v3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 293
    if-eqz p3, :cond_2

    move v5, p1

    .line 294
    .local v5, "splittedSpanStart":I
    :goto_2
    invoke-static {v2}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->getStyle(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;

    move-result-object v7

    .line 295
    .local v7, "style":Lcom/kingsoft/email/widget/text/Style;
    invoke-static {v7}, Lcom/kingsoft/email/widget/text/span/SpanBuilder;->build(Lcom/kingsoft/email/widget/text/Style;)Ljava/lang/Object;

    move-result-object v4

    .line 296
    .local v4, "splittedSpan":Ljava/lang/Object;
    const/16 v8, 0x22

    invoke-interface {p0, v4, v5, v0, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 290
    .end local v3    # "originSpanEnd":I
    .end local v4    # "splittedSpan":Ljava/lang/Object;
    .end local v5    # "splittedSpanStart":I
    .end local v7    # "style":Lcom/kingsoft/email/widget/text/Style;
    :cond_1
    add-int/lit8 v3, p1, 0x1

    goto :goto_1

    .line 293
    .restart local v3    # "originSpanEnd":I
    :cond_2
    add-int/lit8 v5, p1, 0x1

    goto :goto_2
.end method
