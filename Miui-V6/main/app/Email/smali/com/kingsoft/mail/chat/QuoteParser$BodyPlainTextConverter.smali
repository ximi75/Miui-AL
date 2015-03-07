.class public Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;
.super Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;
.source "QuoteParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/chat/QuoteParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyPlainTextConverter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;->mContext:Landroid/content/Context;

    .line 575
    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)Z
    .locals 8
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .param p2, "nodeNum"    # I
    .param p3, "endNum"    # I

    .prologue
    const/4 v6, 0x1

    .line 580
    instance-of v5, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 581
    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 582
    .local v3, "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 583
    .local v2, "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    const-string/jumbo v5, "img"

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_SRC:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    invoke-static {}, Lcom/kingsoft/mail/chat/QuoteParser;->access$100()Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 585
    iget-object v5, p0, Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringPictureInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendNormalText(Ljava/lang/String;)V

    move v5, v6

    .line 602
    .end local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_0
    return v5

    .line 588
    .restart local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .restart local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_0
    sget-object v5, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v3, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v1

    .line 589
    .local v1, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 590
    .local v0, "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string/jumbo v5, "netease-attDown"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 591
    const/4 v5, 0x0

    goto :goto_0

    .line 596
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    instance-of v5, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 598
    check-cast v5, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    invoke-virtual {v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringQQSubscribe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    .line 599
    goto :goto_0

    .line 602
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)Z

    move-result v5

    goto :goto_0
.end method
