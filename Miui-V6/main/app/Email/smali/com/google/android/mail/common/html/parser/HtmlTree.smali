.class public Lcom/google/android/mail/common/html/parser/HtmlTree;
.super Ljava/lang/Object;
.source "HtmlTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/html/parser/HtmlTree$2;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$Block;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;,
        Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DEFAULT_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private static final HTML_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final begins:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private final ends:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private html:Ljava/lang/String;

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private parent:I

.field private plainText:Ljava/lang/String;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textPositions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, " \t\u000c\u200b\r\n"

    invoke-static {v0}, Lcom/google/android/mail/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->HTML_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    .line 95
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree$1;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$1;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 134
    const-class v0, Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    .line 112
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    .line 129
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->DEFAULT_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 142
    return-void
.end method

.method private addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V
    .locals 2
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1068
    return-void
.end method

.method private canBeginBlockAt(I)Z
    .locals 5
    .param p1, "nodePos"    # I

    .prologue
    const/4 v3, 0x1

    .line 476
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    aget v2, v4, p1

    .line 480
    .local v2, "textPos":I
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 481
    add-int/lit8 v2, v2, -0x1

    .line 486
    :cond_0
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 487
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    .local v0, "ch":C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 495
    .end local v0    # "ch":C
    :cond_1
    :goto_1
    return v3

    .line 491
    .restart local v0    # "ch":C
    :cond_2
    if-ge v1, v2, :cond_3

    sget-object v4, Lcom/google/android/mail/common/html/parser/HtmlTree;->HTML_WHITESPACE:Lcom/google/android/mail/common/base/CharMatcher;

    invoke-virtual {v4, v0}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 492
    const/4 v3, 0x0

    goto :goto_1

    .line 486
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private convertToPlainText()V
    .locals 5

    .prologue
    .line 578
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 580
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 584
    .local v2, "numNodes":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    .line 586
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    invoke-interface {v3}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;->createInstance()Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;

    move-result-object v0

    .line 588
    .local v0, "converter":Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 589
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->getPlainTextLength()I

    move-result v4

    aput v4, v3, v1

    .line 590
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v3, v1, v4}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 596
    :cond_0
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->getPlainTextLength()I

    move-result v4

    aput v4, v3, v2

    .line 598
    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    .line 609
    return-void

    .line 578
    .end local v0    # "converter":Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    .end local v1    # "i":I
    .end local v2    # "numNodes":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 588
    .restart local v0    # "converter":Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    .restart local v1    # "i":I
    .restart local v2    # "numNodes":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static final debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1074
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private getBlockEnd(I)I
    .locals 3
    .param p1, "textPos"    # I

    .prologue
    .line 522
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 523
    .local v0, "nodenum":I
    if-ltz v0, :cond_0

    .line 525
    :goto_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    :cond_0
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 532
    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 533
    return v0

    .line 532
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBlockStart(I)I
    .locals 3
    .param p1, "textPos"    # I

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 503
    .local v0, "nodenum":I
    if-ltz v0, :cond_0

    .line 506
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    .line 507
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 511
    :cond_0
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 514
    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 515
    return v0

    .line 514
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method addEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 4
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1034
    .local v0, "nodenum":I
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 1036
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :cond_0
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    .line 1041
    return-void
.end method

.method addSingularTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 2
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1048
    .local v0, "nodenum":I
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 1049
    return-void
.end method

.method addStartTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 3
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1023
    .local v0, "nodenum":I
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 1025
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1026
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    .line 1027
    return-void
.end method

.method addText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 2
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1058
    .local v0, "nodenum":I
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)V

    .line 1059
    return-void
.end method

.method public createBlocks(IIII)Ljava/util/ArrayList;
    .locals 10
    .param p1, "textStart"    # I
    .param p2, "textEnd"    # I
    .param p3, "minNode"    # I
    .param p4, "maxNode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlTree$Block;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlTree$Block;>;"
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getBlockStart(I)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 399
    .local v7, "startNode":I
    invoke-direct {p0, p2}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getBlockEnd(I)I

    move-result v8

    invoke-static {v8, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 410
    .local v3, "endNode":I
    const/4 v1, -0x1

    .line 411
    .local v1, "blockStart":I
    move v4, v7

    .local v4, "n":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 414
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-virtual {v8, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 415
    .local v5, "nBegin":I
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-virtual {v8, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 417
    .local v6, "nEnd":I
    if-ne v1, v9, :cond_1

    .line 419
    if-lt v5, v4, :cond_0

    if-gt v6, v3, :cond_0

    invoke-direct {p0, v4}, Lcom/google/android/mail/common/html/parser/HtmlTree;->canBeginBlockAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 421
    move v1, v4

    .line 422
    add-int/lit8 v4, v6, 0x1

    goto :goto_0

    .line 424
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 426
    goto :goto_0

    .line 431
    :cond_1
    if-lt v5, v1, :cond_2

    if-ge v6, v3, :cond_2

    .line 432
    add-int/lit8 v4, v6, 0x1

    .line 433
    goto :goto_0

    .line 443
    :cond_2
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;-><init>()V

    .line 444
    .local v0, "b":Lcom/google/android/mail/common/html/parser/HtmlTree$Block;
    iput v1, v0, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;->start_node:I

    .line 445
    iput v4, v0, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;->end_node:I

    .line 446
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    const/4 v1, -0x1

    .line 449
    add-int/lit8 v4, v4, 0x1

    .line 450
    goto :goto_0

    .line 453
    .end local v0    # "b":Lcom/google/android/mail/common/html/parser/HtmlTree$Block;
    .end local v5    # "nBegin":I
    .end local v6    # "nEnd":I
    :cond_3
    if-eq v1, v9, :cond_4

    .line 454
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;-><init>()V

    .line 455
    .restart local v0    # "b":Lcom/google/android/mail/common/html/parser/HtmlTree$Block;
    iput v1, v0, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;->start_node:I

    .line 456
    iput v3, v0, Lcom/google/android/mail/common/html/parser/HtmlTree$Block;->end_node:I

    .line 457
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v0    # "b":Lcom/google/android/mail/common/html/parser/HtmlTree$Block;
    :cond_4
    return-object v2
.end method

.method public findEndTag(I)I
    .locals 1
    .param p1, "openTagNodeNum"    # I

    .prologue
    .line 186
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 187
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findOpenTag(I)I
    .locals 1
    .param p1, "endTagNodeNum"    # I

    .prologue
    .line 177
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findPairedTag(I)I
    .locals 3
    .param p1, "tagNodeNum"    # I

    .prologue
    .line 195
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 196
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->begins:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    .local v1, "openNodeNum":I
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->ends:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, "endNodeNum":I
    if-ne p1, v1, :cond_1

    .end local v0    # "endNodeNum":I
    :goto_1
    return v0

    .line 195
    .end local v1    # "openNodeNum":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0    # "endNodeNum":I
    .restart local v1    # "openNodeNum":I
    :cond_1
    move v0, v1

    .line 198
    goto :goto_1
.end method

.method finish()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1013
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1014
    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1015
    return-void

    :cond_0
    move v0, v2

    .line 1013
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1014
    goto :goto_1
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(I)Ljava/lang/String;
    .locals 2
    .param p1, "wrapSize"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->html:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->html:Ljava/lang/String;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml(II)Ljava/lang/String;
    .locals 1
    .param p1, "fromNode"    # I
    .param p2, "toNode"    # I

    .prologue
    .line 223
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(III)Ljava/lang/String;
    .locals 8
    .param p1, "fromNode"    # I
    .param p2, "toNode"    # I
    .param p3, "wrapSize"    # I

    .prologue
    const/16 v7, 0xa

    .line 231
    if-ltz p1, :cond_4

    iget-object v6, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt p2, v6, :cond_4

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 233
    sub-int v6, p2, p1

    mul-int/lit8 v0, v6, 0xa

    .line 234
    .local v0, "estSize":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 236
    .local v1, "lastWrapIndex":I
    move v2, p1

    .local v2, "n":I
    :goto_1
    if-ge v2, p2, :cond_5

    .line 237
    iget-object v6, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 238
    .local v3, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v3, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->toHTML(Ljava/lang/StringBuilder;)V

    .line 242
    if-lez p3, :cond_3

    .line 246
    instance-of v6, v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    instance-of v6, v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v6, :cond_3

    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .end local v3    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    :cond_1
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 252
    .local v4, "recentNewLine":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 253
    add-int/2addr v1, v4

    .line 257
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v1

    if-le v6, p3, :cond_3

    .line 258
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 236
    .end local v4    # "recentNewLine":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "estSize":I
    .end local v1    # "lastWrapIndex":I
    .end local v2    # "n":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 265
    .restart local v0    # "estSize":I
    .restart local v1    # "lastWrapIndex":I
    .restart local v2    # "n":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getHtmlChunks(III)Ljava/util/ArrayList;
    .locals 12
    .param p1, "fromNode"    # I
    .param p2, "toNode"    # I
    .param p3, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 273
    if-ltz p1, :cond_3

    iget-object v9, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt p2, v9, :cond_3

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 283
    .local v8, "stack":I
    const/4 v0, 0x1

    .line 285
    .local v0, "balanced":Z
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit16 v9, p3, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v7, "sb":Ljava/lang/StringBuilder;
    move v5, p1

    .local v5, "n":I
    :goto_1
    if-ge v5, p2, :cond_5

    .line 287
    iget-object v9, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 288
    .local v6, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v6, v7}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->toHTML(Ljava/lang/StringBuilder;)V

    .line 290
    instance-of v9, v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v9, :cond_0

    .line 291
    sget-object v11, Lcom/google/android/mail/common/html/parser/HTML4;->TEXTAREA_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-object v9, v6

    check-cast v9, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    invoke-virtual {v9}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 293
    add-int/lit8 v8, v8, 0x1

    .line 296
    :cond_0
    instance-of v9, v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v9, :cond_1

    .line 297
    sget-object v9, Lcom/google/android/mail/common/html/parser/HTML4;->TEXTAREA_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .end local v6    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 299
    if-nez v8, :cond_4

    .line 300
    const/4 v0, 0x0

    .line 307
    :cond_1
    :goto_2
    if-nez v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lt v9, p3, :cond_2

    .line 308
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 286
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "balanced":Z
    .end local v2    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "n":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "stack":I
    :cond_3
    move v9, v10

    .line 273
    goto :goto_0

    .line 302
    .restart local v0    # "balanced":Z
    .restart local v2    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "n":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "stack":I
    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 314
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 315
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v8, :cond_9

    .line 322
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Returning unbalanced HTML:\n"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .local v3, "debug":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v9, "\nfromNode: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v9, "\ntoNode: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v9, "\nNum nodes_: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "chunk":Ljava/lang/String;
    const-string/jumbo v9, "\nChunk:\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 330
    .end local v1    # "chunk":Ljava/lang/String;
    :cond_8
    sget-object v9, Lcom/google/android/mail/common/html/parser/HtmlTree;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 333
    .end local v3    # "debug":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    return-object v2
.end method

.method public getNodesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumNodes()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->convertToPlainText()V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainText(II)Ljava/lang/String;
    .locals 3
    .param p1, "fromNode"    # I
    .param p2, "toNode"    # I

    .prologue
    .line 561
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->convertToPlainText()V

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    aget v1, v2, p1

    .line 565
    .local v1, "textstart":I
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    aget v0, v2, p2

    .line 566
    .local v0, "textend":I
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->plainText:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTextPosition(I)I
    .locals 1
    .param p1, "node"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->textPositions:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTreeHeight()I
    .locals 5

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "currentHeight":I
    const/4 v2, 0x0

    .line 345
    .local v2, "maxHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 346
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->nodes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 347
    .local v3, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    instance-of v4, v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v4, :cond_2

    .line 348
    add-int/lit8 v0, v0, 0x1

    .line 349
    if-le v0, v2, :cond_0

    .line 350
    move v2, v0

    .line 352
    :cond_0
    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .end local v3    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HTML$Element;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    add-int/lit8 v0, v0, -0x1

    .line 345
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .restart local v3    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_2
    instance-of v4, v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v4, :cond_1

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 362
    .end local v3    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_3
    return v2
.end method

.method public setPlainTextConverterFactory(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;)V
    .locals 2
    .param p1, "factory"    # Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->converterFactory:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 153
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 1005
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->stack:Ljava/util/Stack;

    .line 1006
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->parent:I

    .line 1007
    return-void
.end method
