.class public Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;
.super Ljava/lang/Object;
.source "ListItemSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/span/ListItemSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemSpanBuilder"
.end annotation


# instance fields
.field private mListItemSpan:Lcom/kingsoft/email/widget/text/span/ListItemSpan;

.field private mNumber:I

.field private mParent:Lcom/kingsoft/email/widget/text/span/ListSpan;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mNumber:I

    return-void
.end method


# virtual methods
.method public create()Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;-><init>(Lcom/kingsoft/email/widget/text/span/ListItemSpan$1;)V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mListItemSpan:Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 33
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mParent:Lcom/kingsoft/email/widget/text/span/ListSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mParent:Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mListItemSpan:Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    const/4 v1, -0x1

    # setter for: Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I
    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->access$102(Lcom/kingsoft/email/widget/text/span/ListItemSpan;I)I

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mListItemSpan:Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    return-object v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mListItemSpan:Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mNumber:I

    # setter for: Lcom/kingsoft/email/widget/text/span/ListItemSpan;->mNumber:I
    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->access$102(Lcom/kingsoft/email/widget/text/span/ListItemSpan;I)I

    goto :goto_0
.end method

.method public setNumber(I)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mNumber:I

    .line 27
    return-object p0
.end method

.method public setParent(Lcom/kingsoft/email/widget/text/span/ListSpan;)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;
    .locals 0
    .param p1, "span"    # Lcom/kingsoft/email/widget/text/span/ListSpan;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->mParent:Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 21
    return-object p0
.end method
