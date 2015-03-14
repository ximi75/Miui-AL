.class public Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;
.super Ljava/lang/Object;
.source "ListSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/widget/text/span/ListSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListSpanBuilder"
.end annotation


# instance fields
.field private mFirst:I

.field private mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

.field private mListType:Lcom/kingsoft/email/widget/text/span/ListType;

.field private mRest:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 14
    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mFirst:I

    .line 15
    iput v1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mRest:I

    return-void
.end method


# virtual methods
.method public create()Lcom/kingsoft/email/widget/text/span/ListSpan;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/kingsoft/email/widget/text/span/ListSpan;

    iget v1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mFirst:I

    iget v2, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mRest:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/email/widget/text/span/ListSpan;-><init>(IILcom/kingsoft/email/widget/text/span/ListSpan$1;)V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 31
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListSpan;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)V

    .line 32
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    return-object v0
.end method

.method public setEvery(I)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;
    .locals 0
    .param p1, "every"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mRest:I

    iput p1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mFirst:I

    .line 26
    return-object p0
.end method

.method public setListType(Lcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;
    .locals 0
    .param p1, "listType"    # Lcom/kingsoft/email/widget/text/span/ListType;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->mListType:Lcom/kingsoft/email/widget/text/span/ListType;

    .line 20
    return-object p0
.end method
