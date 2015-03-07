.class public Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;
.super Ljava/lang/Object;
.source "HtmlTree.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPlainTextConverter"
.end annotation


# static fields
.field private static final BLANK_LINE_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private neteaseDepth:I

.field private preDepth:I

.field protected final printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

.field private styleDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 874
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->P_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    .line 882
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    .line 883
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    .line 884
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;II)Z
    .locals 11
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .param p2, "nodeNum"    # I
    .param p3, "endNum"    # I

    .prologue
    const/4 v10, 0x1

    .line 888
    instance-of v8, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v8, :cond_2

    move-object v7, p1

    .line 890
    check-cast v7, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 891
    .local v7, "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v7}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, "str":Ljava/lang/String;
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    if-lez v8, :cond_1

    .line 894
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v8, v5}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendPreText(Ljava/lang/String;)V

    .line 978
    .end local v5    # "str":Ljava/lang/String;
    .end local v7    # "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_0
    :goto_0
    return v10

    .line 896
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v7    # "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_1
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    if-gtz v8, :cond_0

    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    if-gtz v8, :cond_0

    .line 899
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v8, v5}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendNormalText(Ljava/lang/String;)V

    goto :goto_0

    .line 902
    .end local v5    # "str":Ljava/lang/String;
    .end local v7    # "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_2
    instance-of v8, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v8, :cond_c

    move-object v6, p1

    .line 905
    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 906
    .local v6, "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 908
    .local v2, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 909
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v9, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v8, v9}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 928
    :cond_3
    :goto_1
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 929
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v8}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->incQuoteDepth()V

    .line 936
    :cond_4
    :goto_2
    const-string/jumbo v8, "div"

    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 937
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    if-lez v8, :cond_a

    .line 938
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    goto :goto_0

    .line 911
    :cond_5
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->BR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 913
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v8}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendForcedLineBreak()V

    .line 915
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    const/4 v9, 0x0

    # setter for: Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->endingNewLines:I
    invoke-static {v8, v9}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->access$002(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;I)I

    .line 916
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    # setter for: Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->containBR:Z
    invoke-static {v8, v10}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->access$102(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;Z)Z

    goto :goto_1

    .line 918
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 920
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v9, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v8, v9}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 922
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->HR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 923
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    const-string/jumbo v9, "________________________________"

    invoke-virtual {v8, v9}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->appendNormalText(Ljava/lang/String;)V

    .line 924
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v9, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v8, v9}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_1

    .line 931
    :cond_7
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 932
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    goto :goto_2

    .line 933
    :cond_8
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->TITLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 934
    :cond_9
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    goto :goto_2

    .line 940
    :cond_a
    sget-object v8, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v6, v8}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v1

    .line 941
    .local v1, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 942
    .local v0, "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string/jumbo v8, "netease-attDown"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 943
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    goto/16 :goto_0

    .line 950
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v2    # "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_c
    instance-of v8, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v8, :cond_0

    move-object v3, p1

    .line 953
    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .line 954
    .local v3, "endTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 956
    .restart local v2    # "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 957
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v9, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->BlankLine:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v8, v9}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 964
    :cond_d
    :goto_3
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 965
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v8}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->decQuoteDepth()V

    .line 972
    :cond_e
    :goto_4
    const-string/jumbo v8, "div"

    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 973
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    if-lez v8, :cond_0

    .line 974
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->neteaseDepth:I

    goto/16 :goto_0

    .line 959
    :cond_f
    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->breaksFlow()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 961
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v9, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->LineBreak:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v8, v9}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->setSeparator(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_3

    .line 967
    :cond_10
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 968
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->preDepth:I

    goto :goto_4

    .line 969
    :cond_11
    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    sget-object v8, Lcom/google/android/mail/common/html/parser/HTML4;->TITLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v8, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 970
    :cond_12
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->styleDepth:I

    goto :goto_4
.end method

.method public final getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlainTextLength()I
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree$DefaultPlainTextConverter;->printer:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->getTextLength()I

    move-result v0

    return v0
.end method
