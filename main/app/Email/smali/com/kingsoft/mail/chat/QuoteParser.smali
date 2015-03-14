.class public Lcom/kingsoft/mail/chat/QuoteParser;
.super Ljava/lang/Object;
.source "QuoteParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/chat/QuoteParser$BodyPlainTextConverter;
    }
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

.field private static final BODY_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field public static final ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private static final ELIDED_TEXT_ATTRIBUTE_HREF:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private static final ELIDED_TEXT_ATTRIBUTE_ID:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private static final ELIDED_TEXT_ATTRIBUTE_SRC:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private static final ELIDED_TEXT_ATTRIBUTE_TITLE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE_APPLE_NEWLINE:Ljava/lang/String; = "Apple-interchange-newline"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE_ELIDED_TEXT:Ljava/lang/String; = "elided-text"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE_GMAIL_QUOTE:Ljava/lang/String; = "gmail_quote"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE_MOZ_CITE_PREFIX:Ljava/lang/String; = "moz-cite-prefix"

.field public static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE_NETEASE_ATTDOWN:Ljava/lang/String; = "netease-attDown"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_CLASS_VALUE_QUOTE:Ljava/lang/String; = "quote"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_ID_VALUE_CONTEXT_OLD:Ljava/lang/String; = "content_old"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_ID_VALUE_DIVNETEASEMAILCARD:Ljava/lang/String; = "divNeteaseMailCard"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_ID_VALUE_DIVRPLYFWDMSG:Ljava/lang/String; = "divRplyFwdMsg"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_ID_VALUE_ORIGBODY:Ljava/lang/String; = "origbody"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_ID_VALUE_REPLYSPLIT:Ljava/lang/String; = "replySplit"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_ID_VALUE_STOPSPELLING:Ljava/lang/String; = "stopSpelling"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME_CLASS:Ljava/lang/String; = "class"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME_HREF:Ljava/lang/String; = "href"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME_ID:Ljava/lang/String; = "id"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME_SRC:Ljava/lang/String; = "src"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME_TITLE:Ljava/lang/String; = "title"

.field private static final ELIDED_TEXT_ELEMENT_NAME_A:Ljava/lang/String; = "a"

.field private static final ELIDED_TEXT_ELEMENT_NAME_B:Ljava/lang/String; = "b"

.field private static final ELIDED_TEXT_ELEMENT_NAME_BLOCKQUOTE:Ljava/lang/String; = "blockquote"

.field private static final ELIDED_TEXT_ELEMENT_NAME_BODY:Ljava/lang/String; = "body"

.field private static final ELIDED_TEXT_ELEMENT_NAME_BR:Ljava/lang/String; = "br"

.field public static final ELIDED_TEXT_ELEMENT_NAME_DIV:Ljava/lang/String; = "div"

.field private static final ELIDED_TEXT_ELEMENT_NAME_HEAD:Ljava/lang/String; = "head"

.field private static final ELIDED_TEXT_ELEMENT_NAME_HR:Ljava/lang/String; = "hr"

.field private static final ELIDED_TEXT_ELEMENT_NAME_IMG:Ljava/lang/String; = "img"

.field private static final ELIDED_TEXT_ELEMENT_NAME_P:Ljava/lang/String; = "p"

.field private static final ELIDED_TEXT_ELEMENT_NAME_SPAN:Ljava/lang/String; = "span"

.field private static final ELIDED_TEXT_ELEMENT_NAME_TABLE:Ljava/lang/String; = "table"

.field private static final ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

.field private static final GREP_RANGE_FOR_QUOTE:I = 0x5

.field private static mContext:Landroid/content/Context;

.field private static parser:Lcom/kingsoft/mail/chat/QuoteParser;


# instance fields
.field private mBlockQuoteNodeIndex:I

.field private mBodyNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mHrBlock:I

.field private mHtml:Ljava/lang/StringBuffer;

.field private mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

.field private tableDeepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    const-string/jumbo v1, "class"

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 58
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    const-string/jumbo v1, "id"

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_ID:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 60
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    const-string/jumbo v1, "href"

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_HREF:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 62
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    const-string/jumbo v1, "title"

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_TITLE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 64
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    const-string/jumbo v1, "src"

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_SRC:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 67
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->BR_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v3, v3, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_REPLACEMENT_NODE:Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 70
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->P_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML4;->BLOCKQUOTE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->PRE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->BLANK_LINE_ELEMENTS:Ljava/util/Set;

    .line 83
    new-instance v0, Lcom/kingsoft/mail/chat/QuoteParser$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/QuoteParser$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->BODY_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;Landroid/content/Context;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/StringBuffer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v0, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    .line 73
    iput v0, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/mail/chat/QuoteParser;->tableDeepth:I

    .line 91
    sput-object p2, Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtml:Ljava/lang/StringBuffer;

    .line 93
    return-void
.end method

.method private BodyHtmlTreeParser(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "nodelist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    const/4 v12, -0x1

    .line 382
    const/4 v6, 0x0

    .line 383
    .local v6, "isComeToQuotation":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v8, "shortlist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_11

    .line 386
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 387
    .local v7, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    instance-of v10, v7, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v10, :cond_6

    move-object v3, v7

    .line 388
    check-cast v3, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 389
    .local v3, "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 390
    .local v2, "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    const-string/jumbo v10, "table"

    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 391
    iget v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->tableDeepth:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->tableDeepth:I

    .line 392
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 394
    .restart local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .restart local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_1
    iget v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->tableDeepth:I

    if-lez v10, :cond_2

    .line 395
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 398
    :cond_2
    invoke-direct {p0, v3, p1, v5}, Lcom/kingsoft/mail/chat/QuoteParser;->checkQuotePositionFromTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;Ljava/util/List;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 399
    iput v5, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    .line 454
    .end local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .end local v7    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .end local v8    # "shortlist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    :goto_2
    return-object v8

    .line 401
    .restart local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .restart local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .restart local v7    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .restart local v8    # "shortlist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    :cond_3
    const-string/jumbo v10, "hr"

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 402
    iget v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    if-ne v10, v12, :cond_4

    .line 403
    iput v5, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    .line 405
    :cond_4
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    :cond_5
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    .end local v2    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v3    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_6
    instance-of v10, v7, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v10, :cond_f

    .line 410
    iget v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->tableDeepth:I

    if-lez v10, :cond_7

    .line 411
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v4, v7

    .line 414
    check-cast v4, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 415
    .local v4, "htmlText":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "text":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/kingsoft/mail/chat/QuoteParser;->isQuoteDeviderText(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 417
    const/4 v6, 0x1

    .line 440
    :cond_8
    :goto_3
    if-eqz v6, :cond_e

    .line 441
    iput v5, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    goto :goto_2

    .line 418
    :cond_9
    invoke-direct {p0, v9, p1, v5}, Lcom/kingsoft/mail/chat/QuoteParser;->isSpecialTextSender(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 419
    const/4 v6, 0x1

    goto :goto_3

    .line 421
    :cond_a
    invoke-static {v9}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->replaceSpaceToSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 422
    invoke-static {v9}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isContainsTimeParameter(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 425
    invoke-static {v9}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isContainsEmailParameter(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 426
    const/4 v6, 0x1

    goto :goto_3

    .line 427
    :cond_b
    invoke-direct {p0, v9}, Lcom/kingsoft/mail/chat/QuoteParser;->isSpecialTextWrote(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 428
    const/4 v6, 0x1

    goto :goto_3

    .line 430
    :cond_c
    invoke-direct {p0, p1, v5}, Lcom/kingsoft/mail/chat/QuoteParser;->getBackQuoteDeviderPosition(Ljava/util/List;I)I

    move-result v0

    .line 432
    .local v0, "emailAddressPosition":I
    if-eq v0, v12, :cond_d

    .line 433
    invoke-direct {p0, v0, v8}, Lcom/kingsoft/mail/chat/QuoteParser;->clearNodeList(ILjava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    .line 434
    :cond_d
    invoke-direct {p0, p1, v5}, Lcom/kingsoft/mail/chat/QuoteParser;->getForwardQuoteDeviderPosition(Ljava/util/List;I)I

    move-result v10

    if-eq v10, v12, :cond_8

    .line 435
    invoke-direct {p0, v5, v8}, Lcom/kingsoft/mail/chat/QuoteParser;->clearNodeList(ILjava/util/List;)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    .line 444
    .end local v0    # "emailAddressPosition":I
    :cond_e
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 445
    .end local v4    # "htmlText":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .end local v9    # "text":Ljava/lang/String;
    :cond_f
    instance-of v10, v7, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v10, :cond_0

    move-object v1, v7

    .line 446
    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .line 447
    .local v1, "endTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    const-string/jumbo v10, "table"

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 448
    iget v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->tableDeepth:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->tableDeepth:I

    .line 450
    :cond_10
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 453
    .end local v1    # "endTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    .end local v7    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    goto/16 :goto_2
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_SRC:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    return-object v0
.end method

.method private checkQuotePositionFromTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;Ljava/util/List;I)Z
    .locals 8
    .param p1, "htmlTag"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "nodelist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    const/4 v5, 0x0

    .line 499
    .local v5, "isQuoteDevider":Z
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 506
    .local v2, "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    const-string/jumbo v6, "div"

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 509
    sget-object v6, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_CLASS:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {p1, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v1

    .line 511
    .local v1, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    sget-object v6, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_ID:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {p1, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v4

    .line 513
    .local v4, "idAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 514
    .local v0, "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string/jumbo v6, "quote"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 516
    const/4 v5, 0x1

    goto :goto_0

    .line 517
    :cond_1
    const-string/jumbo v6, "elided-text"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 519
    const/4 v5, 0x1

    goto :goto_0

    .line 520
    :cond_2
    const-string/jumbo v6, "moz-cite-prefix"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 522
    iget-object v6, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNodesList()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->ContainsTimeParameterInNextTextNode(Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 524
    const/4 v5, 0x1

    goto :goto_0

    .line 526
    :cond_3
    const-string/jumbo v6, "gmail_quote"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 528
    const/4 v5, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 532
    .restart local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string/jumbo v6, "divNeteaseMailCard"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 534
    const/4 v5, 0x1

    goto :goto_1

    .line 535
    :cond_6
    const-string/jumbo v6, "origbody"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 537
    const/4 v5, 0x1

    goto :goto_1

    .line 538
    :cond_7
    const-string/jumbo v6, "divRplyFwdMsg"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 540
    const/4 v5, 0x1

    goto :goto_1

    .line 545
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .end local v1    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "idAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    :cond_8
    const-string/jumbo v6, "span"

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 547
    sget-object v6, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_ID:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {p1, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v4

    .line 549
    .restart local v4    # "idAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 550
    .restart local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    const-string/jumbo v6, "content_old"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 552
    const/4 v5, 0x1

    goto :goto_2

    .line 559
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "idAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    :cond_a
    return v5
.end method

.method private clearNodeList(ILjava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "quotePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p2, "shortlist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    move v3, p1

    .line 289
    .local v3, "position":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 290
    iput v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    .line 315
    :goto_0
    return-object p2

    .line 293
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-le v2, v4, :cond_1

    .line 294
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 293
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 296
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-lez v2, :cond_5

    .line 297
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v4, :cond_4

    .line 298
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 299
    .local v1, "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 300
    .local v0, "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    const-string/jumbo v4, "div"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "br"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "b"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 304
    iput v2, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    goto :goto_0

    .line 307
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    .end local v0    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v1    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 310
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 314
    :cond_5
    const/4 v4, -0x1

    iput v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    goto :goto_0
.end method

.method private getBackQuoteDeviderPosition(Ljava/util/List;I)I
    .locals 11
    .param p2, "timePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    move v5, p2

    .line 198
    .local v5, "position":I
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-lez v3, :cond_0

    const/4 v9, 0x5

    if-ge v4, v9, :cond_0

    .line 199
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v9, :cond_1

    .line 200
    add-int/lit8 v4, v4, 0x1

    .line 201
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 202
    .local v8, "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v8}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "str":Ljava/lang/String;
    invoke-static {v6}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isContainsEmailParameter(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 204
    move v5, v3

    .line 215
    .end local v6    # "str":Ljava/lang/String;
    .end local v8    # "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_0
    :goto_1
    if-ne v5, p2, :cond_3

    .line 216
    const/4 v9, -0x1

    .line 237
    :goto_2
    return v9

    .line 207
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v9, :cond_2

    .line 208
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 209
    .local v1, "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/chat/QuoteParser;->isTagContainAddress(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 210
    move v5, v3

    .line 211
    goto :goto_1

    .line 198
    .end local v1    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 219
    :cond_3
    add-int/lit8 v3, v5, -0x1

    :goto_3
    if-lez v3, :cond_7

    .line 220
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v9, :cond_5

    .line 221
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 222
    .local v2, "htmlText":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isContainsEmailParameter(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 224
    move v5, v3

    .line 219
    .end local v2    # "htmlText":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 226
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v9, :cond_4

    .line 227
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 228
    .restart local v1    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 229
    .local v0, "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/chat/QuoteParser;->isTagContainAddress(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 230
    move v5, v3

    goto :goto_4

    .line 231
    :cond_6
    const-string/jumbo v9, "div"

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .end local v0    # "htmlElement":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v1    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_7
    move v9, v5

    .line 237
    goto :goto_2
.end method

.method private getForwardQuoteDeviderPosition(Ljava/util/List;I)I
    .locals 7
    .param p2, "timePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    const/4 v3, -0x1

    .line 253
    .local v3, "position":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    const/4 v6, 0x5

    if-ge v2, v6, :cond_0

    .line 254
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v6, :cond_1

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 256
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 258
    .local v5, "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isContainsEmailParameter(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 260
    move v3, v1

    .line 272
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_0
    :goto_1
    return v3

    .line 263
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v6, :cond_2

    .line 264
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 266
    .local v0, "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-direct {p0, v0}, Lcom/kingsoft/mail/chat/QuoteParser;->isTagContainAddress(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 267
    move v3, v1

    .line 268
    goto :goto_1

    .line 253
    .end local v0    # "htmlTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/StringBuffer;Landroid/content/Context;)Lcom/kingsoft/mail/chat/QuoteParser;
    .locals 1
    .param p0, "html"    # Ljava/lang/StringBuffer;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->parser:Lcom/kingsoft/mail/chat/QuoteParser;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/kingsoft/mail/chat/QuoteParser;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/chat/QuoteParser;-><init>(Ljava/lang/StringBuffer;Landroid/content/Context;)V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->parser:Lcom/kingsoft/mail/chat/QuoteParser;

    .line 103
    :goto_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->parser:Lcom/kingsoft/mail/chat/QuoteParser;

    return-object v0

    .line 101
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParser;->parser:Lcom/kingsoft/mail/chat/QuoteParser;

    invoke-direct {v0, p0}, Lcom/kingsoft/mail/chat/QuoteParser;->setHtml(Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method private isQuoteDeviderText(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getQuoteArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 330
    sget-object v1, Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getQuoteArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const/4 v1, 0x1

    .line 334
    :goto_1
    return v1

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isSpecialTextSender(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "nodelist":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    const/4 v3, 0x0

    .line 458
    sget-object v4, Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getSenderArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isArrayContainsText([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    add-int/lit8 v0, p3, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 460
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v4, :cond_1

    .line 461
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 462
    .local v2, "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "str":Ljava/lang/String;
    sget-object v4, Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getColonArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isArrayContainsText([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    const/4 v3, 0x1

    .line 470
    .end local v0    # "i":I
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_0
    return v3

    .line 459
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSpecialTextWrote(Ljava/lang/String;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 474
    sget-object v4, Lcom/kingsoft/mail/chat/QuoteParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getWrotedArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 475
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    const/4 v4, 0x1

    .line 481
    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    return v4

    .line 474
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isTagContainAddress(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)Z
    .locals 7
    .param p1, "tag"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .prologue
    .line 348
    const-string/jumbo v5, "a"

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 349
    const/4 v1, 0x0

    .line 368
    :cond_0
    return v1

    .line 351
    :cond_1
    sget-object v5, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_HREF:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {p1, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v2

    .line 353
    .local v2, "hrefAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    sget-object v5, Lcom/kingsoft/mail/chat/QuoteParser;->ELIDED_TEXT_ATTRIBUTE_TITLE:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {p1, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes(Lcom/google/android/mail/common/html/parser/HTML$Attribute;)Ljava/util/List;

    move-result-object v4

    .line 355
    .local v4, "titleAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    const/4 v1, 0x0

    .line 356
    .local v1, "flag":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 357
    .local v0, "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isEmailTag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 358
    const/4 v1, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    :cond_3
    if-nez v1, :cond_0

    .line 362
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    .line 363
    .restart local v0    # "attribute":Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isContainsEmailParameter(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 364
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private reCleanBodyNodesList()V
    .locals 5

    .prologue
    .line 168
    iget-object v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 169
    iget-object v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 170
    .local v2, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    instance-of v4, v2, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 171
    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 172
    .local v0, "htmlText":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    .end local v0    # "htmlText":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .end local v3    # "text":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 182
    .end local v2    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_2
    return-void
.end method

.method private setHtml(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 107
    iput-object p1, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtml:Ljava/lang/StringBuffer;

    .line 108
    iput-object v1, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    .line 109
    iput-object v1, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    .line 110
    iput v0, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    .line 111
    iput v0, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    .line 112
    return-void
.end method


# virtual methods
.method public getBodyNodesIndex()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/kingsoft/mail/chat/QuoteParser;->getBodyWithoutQuoteText()Ljava/lang/String;

    .line 129
    :cond_0
    iget v0, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    return v0
.end method

.method public getBodyWithoutQuoteText()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 133
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtml:Ljava/lang/StringBuffer;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iput v5, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    .line 136
    const-string/jumbo v3, ""

    .line 161
    :goto_0
    return-object v3

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtml:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    .line 139
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtml:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 140
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtml:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNodesList()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    invoke-direct {p0, v2}, Lcom/kingsoft/mail/chat/QuoteParser;->BodyHtmlTreeParser(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    .line 143
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/kingsoft/mail/chat/QuoteParser;->reCleanBodyNodesList()V

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    .line 147
    const-string/jumbo v0, ""

    .line 149
    .local v0, "bodyHtml":Ljava/lang/String;
    iget v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBodyNodeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    :cond_2
    iput v6, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    .line 151
    const-string/jumbo v3, ""

    goto :goto_0

    .line 153
    :cond_3
    iget v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    iget-object v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 154
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getNumNodes()I

    move-result v3

    iput v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    .line 155
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtml:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_1
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v1

    .line 160
    .local v1, "bodyTree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    sget-object v3, Lcom/kingsoft/mail/chat/QuoteParser;->BODY_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    invoke-virtual {v1, v3}, Lcom/google/android/mail/common/html/parser/HtmlTree;->setPlainTextConverterFactory(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;)V

    .line 161
    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 157
    .end local v1    # "bodyTree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    :cond_4
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    iget v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    invoke-virtual {v3, v5, v4}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getHrPositionInText()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 115
    iget v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    if-eq v4, v3, :cond_0

    iget v4, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    iget v5, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mBlockQuoteNodeIndex:I

    if-lt v4, v5, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v3

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHtmlTree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    const/4 v4, 0x0

    iget v5, p0, Lcom/kingsoft/mail/chat/QuoteParser;->mHrBlock:I

    invoke-virtual {v3, v4, v5}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "signHtml":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v2

    .line 120
    .local v2, "signTree":Lcom/google/android/mail/common/html/parser/HtmlTree;
    sget-object v3, Lcom/kingsoft/mail/chat/QuoteParser;->BODY_CONVERTER_FACTORY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;

    invoke-virtual {v2, v3}, Lcom/google/android/mail/common/html/parser/HtmlTree;->setPlainTextConverterFactory(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;)V

    .line 121
    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "signText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0
.end method
