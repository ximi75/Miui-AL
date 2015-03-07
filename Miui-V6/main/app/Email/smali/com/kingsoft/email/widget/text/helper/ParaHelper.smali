.class public Lcom/kingsoft/email/widget/text/helper/ParaHelper;
.super Ljava/lang/Object;
.source "ParaHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static applyParaByNChar(Landroid/text/Editable;II)V
    .locals 10
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v9, 0x33

    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 20
    if-lez p1, :cond_0

    .line 21
    add-int/lit8 v4, p1, -0x1

    .line 22
    .local v4, "startIndex":I
    const/4 p1, 0x0

    .line 23
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 24
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 25
    add-int/lit8 p1, v2, 0x1

    .line 32
    .end local v2    # "i":I
    .end local v4    # "startIndex":I
    :cond_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 33
    .local v0, "editableLength":I
    move v1, p2

    .line 34
    .local v1, "endIndex":I
    move p2, v0

    .line 35
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-gt v2, v0, :cond_1

    .line 36
    const/4 v5, 0x1

    if-le v2, v5, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    .line 37
    move p2, v2

    .line 42
    :cond_1
    const-class v5, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-static {p0, p1, p2, v5}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->removeSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 43
    const-class v5, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-static {p0, p1, p2, v5}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->removeSpansExludeAncepsAdjacencySorted(Landroid/text/Editable;IILjava/lang/Class;)[Ljava/lang/Object;

    .line 45
    move v3, p1

    .line 46
    .local v3, "lastEnd":I
    move v2, p1

    :goto_2
    if-ge v2, p2, :cond_5

    .line 47
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    .line 48
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v5, v8}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v5, v3, v6, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 49
    add-int/lit8 v3, v2, 0x1

    .line 46
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    .end local v0    # "editableLength":I
    .end local v1    # "endIndex":I
    .end local v3    # "lastEnd":I
    .restart local v4    # "startIndex":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 35
    .end local v4    # "startIndex":I
    .restart local v0    # "editableLength":I
    .restart local v1    # "endIndex":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .restart local v3    # "lastEnd":I
    :cond_5
    if-eq v3, p2, :cond_6

    .line 54
    new-instance v5, Landroid/text/style/LeadingMarginSpan$Standard;

    invoke-direct {v5, v8}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    invoke-interface {p0, v5, v3, v0, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 56
    :cond_6
    return-void
.end method
