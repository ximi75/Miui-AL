.class public Lcom/kingsoft/email/widget/text/span/ListTagHandler;
.super Ljava/lang/Object;
.source "ListTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# instance fields
.field private mCurrentListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

.field private mIndex:I

.field private mParents:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSiblings:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mIndex:I

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mParents:Ljava/util/Stack;

    .line 17
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mSiblings:Ljava/util/Stack;

    return-void
.end method

.method private handleListTag(Landroid/text/Editable;)V
    .locals 6
    .param p1, "output"    # Landroid/text/Editable;

    .prologue
    const/16 v5, 0x33

    .line 49
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mParents:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 50
    .local v1, "parent":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "ul"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string/jumbo v3, "\n"

    invoke-interface {p1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 52
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mSiblings:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 53
    .local v2, "start":I
    new-instance v3, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    invoke-direct {v3}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;-><init>()V

    iget-object v4, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mCurrentListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setParent(Lcom/kingsoft/email/widget/text/span/ListSpan;)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setNumber(I)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v0

    .line 54
    .local v0, "listItemSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v0, v2, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 63
    .end local v0    # "listItemSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .end local v2    # "start":I
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "ol"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget v3, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mIndex:I

    .line 58
    const-string/jumbo v3, "\n"

    invoke-interface {p1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 59
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mSiblings:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 60
    .restart local v2    # "start":I
    new-instance v3, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    invoke-direct {v3}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;-><init>()V

    iget-object v4, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mCurrentListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setParent(Lcom/kingsoft/email/widget/text/span/ListSpan;)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v3

    iget v4, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mIndex:I

    invoke-virtual {v3, v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setNumber(I)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v0

    .line 61
    .restart local v0    # "listItemSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v0, v2, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 6
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v5, 0x0

    .line 22
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 23
    .local v1, "textLength":I
    const-string/jumbo v2, "ul"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ol"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "dd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    :cond_0
    if-eqz p1, :cond_3

    .line 25
    new-instance v2, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    invoke-direct {v2}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;-><init>()V

    invoke-virtual {v2, v5}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setEvery(I)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mCurrentListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 26
    const-string/jumbo v2, "ol"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mCurrentListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    sget-object v3, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/span/ListSpan;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)V

    .line 29
    :cond_1
    const-string/jumbo v2, "\n"

    invoke-interface {p3, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 30
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mParents:Ljava/util/Stack;

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mSiblings:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 38
    :goto_0
    iput v5, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mIndex:I

    .line 46
    :cond_2
    :goto_1
    return-void

    .line 33
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mParents:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 34
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mCurrentListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x33

    invoke-interface {p3, v3, v2, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 35
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mCurrentListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    goto :goto_0

    .line 39
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    const-string/jumbo v2, "li"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    if-eqz p1, :cond_5

    .line 41
    iget-object v2, p0, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->mSiblings:Ljava/util/Stack;

    const-string/jumbo v3, "li"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_5
    invoke-direct {p0, p3}, Lcom/kingsoft/email/widget/text/span/ListTagHandler;->handleListTag(Landroid/text/Editable;)V

    goto :goto_1
.end method
