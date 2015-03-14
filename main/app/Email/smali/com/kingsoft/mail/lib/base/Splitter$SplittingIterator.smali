.class abstract Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;
.super Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/lib/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "splitter"    # Lcom/kingsoft/mail/lib/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$1;)V

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->offset:I

    .line 372
    # getter for: Lcom/kingsoft/mail/lib/base/Splitter;->trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Splitter;->access$200(Lcom/kingsoft/mail/lib/base/Splitter;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;

    .line 373
    # getter for: Lcom/kingsoft/mail/lib/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Splitter;->access$300(Lcom/kingsoft/mail/lib/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 374
    iput-object p2, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 375
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 378
    :cond_0
    iget v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->offset:I

    if-eq v3, v6, :cond_5

    .line 379
    iget v2, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->offset:I

    .line 382
    .local v2, "start":I
    iget v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v3}, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 383
    .local v1, "separatorPosition":I
    if-ne v1, v6, :cond_1

    .line 384
    iget-object v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 385
    .local v0, "end":I
    iput v6, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->offset:I

    .line 391
    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;

    iget-object v4, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/lib/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "end":I
    :cond_1
    move v0, v1

    .line 388
    .restart local v0    # "end":I
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->offset:I

    goto :goto_0

    .line 394
    :cond_2
    :goto_1
    if-le v0, v2, :cond_3

    iget-object v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;

    iget-object v4, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kingsoft/mail/lib/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 398
    :cond_3
    iget-boolean v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v3, :cond_4

    if-eq v2, v0, :cond_0

    .line 402
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    .end local v0    # "end":I
    .end local v1    # "separatorPosition":I
    .end local v2    # "start":I
    :goto_2
    return-object v3

    :cond_5
    invoke-virtual {p0}, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
