.class public Lcom/kingsoft/email/widget/text/span/SpanInterval;
.super Ljava/lang/Object;
.source "SpanInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/span/SpanInterval$RelationType;
    }
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    .line 14
    iput v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    .line 19
    iput p2, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    instance-of v3, p1, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    if-nez v3, :cond_1

    move v1, v2

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;

    .line 46
    .local v0, "value":Lcom/kingsoft/email/widget/text/span/SpanInterval;
    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v4, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    iget v4, v0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/SpanInterval;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
