.class Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeScanner"
.end annotation


# instance fields
.field attrValueIsQuoted:Z

.field endNamePos:I

.field endValuePos:I

.field private final html:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field startNamePos:I

.field startValuePos:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    .line 459
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    .line 460
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 461
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    .line 465
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    .line 466
    return-void
.end method

.method private skipSpaces(II)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 583
    move v0, p1

    .local v0, "pos":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 584
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    :cond_0
    return v0

    .line 583
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 592
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    if-eq v0, v1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 599
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    if-eq v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 472
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    .line 473
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    .line 474
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 475
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    .line 477
    iput-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->name:Ljava/lang/String;

    .line 478
    iput-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->value:Ljava/lang/String;

    .line 479
    return-void
.end method

.method scanName(II)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v3, 0x3e

    .line 490
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 491
    if-ne p1, p2, :cond_1

    .line 507
    .end local p1    # "start":I
    :goto_1
    return p1

    .line 490
    .restart local p1    # "start":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 497
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .local v1, "pos":I
    :goto_2
    if-ge v1, p2, :cond_2

    .line 498
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 501
    .local v0, "ch":C
    if-eq v0, v3, :cond_2

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    .end local v0    # "ch":C
    :cond_2
    iput p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    .line 506
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    move p1, v1

    .line 507
    goto :goto_1

    .line 497
    .restart local v0    # "ch":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method scanValue(II)I
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->skipSpaces(II)I

    move-result v1

    .line 522
    .local v1, "pos":I
    if-eq v1, p2, :cond_0

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3d

    if-eq v3, v6, :cond_1

    .line 571
    .end local p1    # "start":I
    :cond_0
    :goto_0
    return p1

    .line 529
    .restart local p1    # "start":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 530
    invoke-direct {p0, v1, p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->skipSpaces(II)I

    move-result v1

    .line 533
    if-ne v1, p2, :cond_2

    move p1, v1

    .line 534
    goto :goto_0

    .line 538
    :cond_2
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 539
    .local v0, "ch":C
    const/16 v3, 0x27

    if-eq v0, v3, :cond_3

    const/16 v3, 0x22

    if-ne v0, v3, :cond_6

    .line 540
    :cond_3
    iput-boolean v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    .line 541
    add-int/lit8 v1, v1, 0x1

    .line 542
    move v2, v1

    .line 543
    .local v2, "valueStart":I
    :goto_1
    if-ge v1, p2, :cond_4

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_4

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    :cond_4
    iput v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 547
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    .line 548
    if-ge v1, p2, :cond_5

    .line 549
    add-int/lit8 v1, v1, 0x1

    .line 566
    :cond_5
    :goto_2
    iget v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    if-le v3, v7, :cond_9

    move v3, v4

    :goto_3
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 567
    iget v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    if-le v3, v7, :cond_a

    move v3, v4

    :goto_4
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 568
    iget v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    iget v6, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    if-gt v3, v6, :cond_b

    move v3, v4

    :goto_5
    invoke-static {v3}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 569
    if-gt v1, p2, :cond_c

    :goto_6
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    move p1, v1

    .line 571
    goto :goto_0

    .line 552
    .end local v2    # "valueStart":I
    :cond_6
    move v2, v1

    .line 553
    .restart local v2    # "valueStart":I
    :goto_7
    if-ge v1, p2, :cond_7

    .line 554
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->html:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 558
    const/16 v3, 0x3e

    if-eq v0, v3, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 562
    :cond_7
    iput v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    .line 563
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    goto :goto_2

    .line 553
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    move v3, v5

    .line 566
    goto :goto_3

    :cond_a
    move v3, v5

    .line 567
    goto :goto_4

    :cond_b
    move v3, v5

    .line 568
    goto :goto_5

    :cond_c
    move v4, v5

    .line 569
    goto :goto_6
.end method
