.class Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$KeyLevel;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Sub;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Super;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Blockquote;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Monospace;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Small;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Big;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Underline;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$P;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$List;,
        Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Bold;
    }
.end annotation


# static fields
.field private static final HEADER_SIZES:[F

.field private static final density:F

.field private static mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;


# instance fields
.field private lastParaEnd:I

.field private mImageGetter:Landroid/text/Html$ImageGetter;

.field private mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

.field private mNumber:I

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Landroid/text/Html$TagHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->HEADER_SIZES:[F

    .line 537
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    .line 538
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->density:F

    return-void

    .line 525
    :array_0
    .array-data 4
        0x3fc00000
        0x3fb33333
        0x3fa66666
        0x3f99999a
        0x3f8ccccd
        0x3f800000
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;
    .param p4, "parser"    # Lorg/ccil/cowan/tagsoup/Parser;

    .prologue
    const/4 v1, 0x0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->lastParaEnd:I

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 536
    iput v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mNumber:I

    .line 544
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    .line 545
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 546
    iput-object p2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    .line 547
    iput-object p3, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    .line 548
    iput-object p4, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    .line 549
    return-void
.end method

.method private appendLineBreakIfNeed(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v2, 0xa

    .line 729
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->lastParaEnd:I

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 730
    :cond_1
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 732
    :cond_2
    return-void
.end method

.method private end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "kind"    # Ljava/lang/Class;
    .param p3, "repl"    # Ljava/lang/Object;

    .prologue
    .line 866
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 867
    .local v0, "len":I
    invoke-static {p1, p2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 868
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 870
    .local v2, "where":I
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 872
    if-eq v2, v0, :cond_0

    .line 873
    const/16 v3, 0x21

    invoke-virtual {p1, p3, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 876
    :cond_0
    instance-of v3, p3, Landroid/text/style/ParagraphStyle;

    if-eqz v3, :cond_1

    .line 877
    iput v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->lastParaEnd:I

    .line 880
    :cond_1
    return-void
.end method

.method private static endA(Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 981
    .local v1, "len":I
    const-class v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;

    invoke-static {p0, v4}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 982
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 984
    .local v3, "where":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 986
    if-eq v3, v1, :cond_0

    move-object v0, v2

    .line 987
    check-cast v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;

    .line 989
    .local v0, "h":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;
    iget-object v4, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 990
    new-instance v4, Landroid/text/style/URLSpan;

    iget-object v5, v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x21

    invoke-virtual {p0, v4, v3, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 994
    .end local v0    # "h":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;
    :cond_0
    return-void
.end method

.method private static endFont(Landroid/text/SpannableStringBuilder;)V
    .locals 22
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 917
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 918
    .local v12, "len":I
    const-class v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    .line 919
    .local v15, "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 921
    .local v18, "where":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 923
    move/from16 v0, v18

    if-eq v0, v12, :cond_2

    move-object v10, v15

    .line 924
    check-cast v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;

    .line 926
    .local v10, "f":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;
    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 927
    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 928
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 929
    .local v16, "res":Landroid/content/res/Resources;
    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 930
    .local v14, "name":Ljava/lang/String;
    const-string/jumbo v2, "color"

    const-string/jumbo v3, "android"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 931
    .local v9, "colorRes":I
    if-eqz v9, :cond_0

    .line 932
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 933
    .local v6, "colors":Landroid/content/res/ColorStateList;
    sget-object v19, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    const-string/jumbo v20, "font"

    new-instance v21, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/16 v3, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v0, v2, v1, v12, v3}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;-><init>(Ljava/lang/Object;III)V

    invoke-virtual/range {v19 .. v21}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->addSpan(Ljava/lang/Object;Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;)V

    .line 947
    .end local v6    # "colors":Landroid/content/res/ColorStateList;
    .end local v9    # "colorRes":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mSize:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mSize:Ljava/lang/String;

    const-string/jumbo v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 949
    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mSize:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mSize:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 950
    .local v17, "size":I
    move/from16 v0, v17

    int-to-float v2, v0

    sget v3, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 951
    sget-object v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    const-string/jumbo v3, "font"

    new-instance v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    new-instance v5, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;-><init>(I)V

    const/16 v7, 0x21

    move/from16 v0, v18

    invoke-direct {v4, v5, v0, v12, v7}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->addSpan(Ljava/lang/Object;Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;)V

    .line 954
    .end local v17    # "size":I
    :cond_1
    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 955
    sget-object v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    const-string/jumbo v3, "font"

    new-instance v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    new-instance v5, Landroid/text/style/TypefaceSpan;

    iget-object v7, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x21

    move/from16 v0, v18

    invoke-direct {v4, v5, v0, v12, v7}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->addSpan(Ljava/lang/Object;Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;)V

    .line 960
    .end local v10    # "f":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;
    :cond_2
    sget-object v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    const-string/jumbo v3, "font"

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->subLevel(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_4

    .line 961
    sget-object v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    const-string/jumbo v3, "font"

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->getSpans(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    .line 962
    .local v13, "listSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;>;"
    if-eqz v13, :cond_4

    .line 963
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .local v11, "i":I
    :goto_1
    const/4 v2, -0x1

    if-le v11, v2, :cond_4

    .line 964
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    iget-object v3, v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mSpan:Ljava/lang/Object;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    iget v4, v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mStart:I

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    iget v5, v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mEnd:I

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    iget v2, v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;->mSpanFlags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 963
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 938
    .end local v11    # "i":I
    .end local v13    # "listSpans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;>;"
    .restart local v10    # "f":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;
    :cond_3
    iget-object v2, v10, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingsoft/email/widget/text/internal/HtmlColor;->getHtmlColor(Ljava/lang/String;)I

    move-result v8

    .line 939
    .local v8, "c":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_0

    .line 940
    sget-object v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    const-string/jumbo v3, "font"

    new-instance v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/high16 v7, -0x1000000

    or-int/2addr v7, v8

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    move/from16 v0, v18

    invoke-direct {v4, v5, v0, v12, v7}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->addSpan(Ljava/lang/Object;Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Span;)V

    goto/16 :goto_0

    .line 970
    .end local v8    # "c":I
    .end local v10    # "f":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;
    :cond_4
    return-void
.end method

.method private static endHeader(Landroid/text/SpannableStringBuilder;)V
    .locals 8
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v7, 0x21

    .line 997
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 998
    .local v1, "len":I
    const-class v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;

    invoke-static {p0, v4}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 1000
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1002
    .local v3, "where":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1005
    :goto_0
    if-le v1, v3, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 1006
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1009
    :cond_0
    if-eq v3, v1, :cond_1

    move-object v0, v2

    .line 1010
    check-cast v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;

    .line 1012
    .local v0, "h":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    sget-object v5, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->HEADER_SIZES:[F

    # getter for: Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;->mLevel:I
    invoke-static {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;->access$1100(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;)I

    move-result v6

    aget v5, v5, v6

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1014
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1017
    .end local v0    # "h":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;
    :cond_1
    return-void
.end method

.method private endLi(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->appendLineBreakIfNeed(Landroid/text/SpannableStringBuilder;)V

    .line 830
    new-instance v1, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;-><init>()V

    iget v2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mNumber:I

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setNumber(I)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->setParent(Lcom/kingsoft/email/widget/text/span/ListSpan;)Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/span/ListItemSpan$ListItemSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    move-result-object v0

    .line 831
    .local v0, "liSpan":Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;

    invoke-direct {p0, p1, v1, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 832
    return-void
.end method

.method private endList(Landroid/text/SpannableStringBuilder;)V
    .locals 2
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 749
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListSpan;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mNumber:I

    .line 753
    return-void
.end method

.method private endOL(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endList(Landroid/text/SpannableStringBuilder;)V

    .line 789
    return-void
.end method

.method private endP(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->appendLineBreakIfNeed(Landroid/text/SpannableStringBuilder;)V

    .line 780
    const-class v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$P;

    new-instance v1, Landroid/text/style/LeadingMarginSpan$Standard;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 781
    return-void
.end method

.method private endUL(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endList(Landroid/text/SpannableStringBuilder;)V

    .line 785
    return-void
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "kind"    # Ljava/lang/Class;

    .prologue
    .line 851
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 853
    .local v0, "objs":[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 854
    const/4 v1, 0x0

    .line 856
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private getLiStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "styles"    # Ljava/lang/String;
    .param p2, "beginString"    # Ljava/lang/String;
    .param p3, "endString"    # Ljava/lang/String;

    .prologue
    .line 835
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 836
    .local v0, "beginPos":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 837
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 839
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleBr(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 843
    const-string/jumbo v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 844
    return-void
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 674
    const-string/jumbo v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->handleBr(Landroid/text/SpannableStringBuilder;)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 678
    :cond_2
    const-string/jumbo v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 680
    :cond_3
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 681
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endUL(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 682
    :cond_4
    const-string/jumbo v0, "ol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 683
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endOL(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 684
    :cond_5
    const-string/jumbo v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 685
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endLi(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 686
    :cond_6
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 687
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 688
    :cond_7
    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 689
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 690
    :cond_8
    const-string/jumbo v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 691
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;

    invoke-direct {v2, v3}, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 692
    :cond_9
    const-string/jumbo v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 693
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;

    invoke-direct {v2, v3}, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 694
    :cond_a
    const-string/jumbo v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 695
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;

    invoke-direct {v2, v3}, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 696
    :cond_b
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 697
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    new-instance v2, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;

    invoke-direct {v2, v3}, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 698
    :cond_c
    const-string/jumbo v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 699
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Big;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 700
    :cond_d
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 701
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Small;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 702
    :cond_e
    const-string/jumbo v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 703
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endFont(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 704
    :cond_f
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 705
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 706
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Blockquote;

    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 707
    :cond_10
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 708
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Monospace;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 710
    :cond_11
    const-string/jumbo v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 711
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endA(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 712
    :cond_12
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 713
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Underline;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 714
    :cond_13
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 715
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Super;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 716
    :cond_14
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 717
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Sub;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 718
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_16

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_16

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_16

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_16

    .line 721
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 722
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->endHeader(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0

    .line 723
    :cond_16
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v5, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private handleP(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v2, 0xa

    .line 756
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 758
    .local v0, "len":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 759
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 767
    :cond_2
    if-eqz v0, :cond_0

    .line 768
    const-string/jumbo v1, "\n\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 620
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startP(Landroid/text/SpannableStringBuilder;)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    const-string/jumbo v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 624
    :cond_2
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startUL(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 626
    :cond_3
    const-string/jumbo v0, "ol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startOL(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 628
    :cond_4
    const-string/jumbo v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startLi(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 630
    :cond_5
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 631
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Bold;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 632
    :cond_6
    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 633
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Bold;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 634
    :cond_7
    const-string/jumbo v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 635
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 636
    :cond_8
    const-string/jumbo v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 637
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 638
    :cond_9
    const-string/jumbo v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 639
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 640
    :cond_a
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 641
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Italic;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 642
    :cond_b
    const-string/jumbo v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 643
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Big;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Big;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 644
    :cond_c
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 645
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Small;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Small;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 646
    :cond_d
    const-string/jumbo v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 647
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 648
    :cond_e
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 649
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 650
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Blockquote;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Blockquote;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 651
    :cond_f
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 652
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Monospace;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Monospace;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 653
    :cond_10
    const-string/jumbo v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 654
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 655
    :cond_11
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 656
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Underline;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Underline;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 657
    :cond_12
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 658
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Super;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Super;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 659
    :cond_13
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 660
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Sub;

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Sub;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 661
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_15

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_15

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_15

    .line 664
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 665
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Header;-><init>(I)V

    invoke-static {v0, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 666
    :cond_15
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 667
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    invoke-direct {p0, v0, p2, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V

    goto/16 :goto_0

    .line 668
    :cond_16
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_0
.end method

.method private static start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "mark"    # Ljava/lang/Object;

    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 862
    .local v0, "len":I
    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 863
    return-void
.end method

.method private static startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 973
    const-string/jumbo v2, ""

    const-string/jumbo v3, "href"

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 976
    .local v1, "len":I
    new-instance v2, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;

    invoke-direct {v2, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 977
    return-void
.end method

.method private static startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 904
    const-string/jumbo v4, ""

    const-string/jumbo v5, "color"

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "color":Ljava/lang/String;
    const-string/jumbo v4, ""

    const-string/jumbo v5, "style"

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, "size":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 907
    const-string/jumbo v4, "font-size:"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 909
    :cond_0
    const-string/jumbo v4, ""

    const-string/jumbo v5, "face"

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "face":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 912
    .local v2, "len":I
    new-instance v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;

    invoke-direct {v4, v0, v3, v1}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x11

    invoke-virtual {p0, v4, v2, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 913
    sget-object v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    const-string/jumbo v5, "font"

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->addLevel(Ljava/lang/Object;)I

    .line 914
    return-void
.end method

.method private startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V
    .locals 6
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "img"    # Landroid/text/Html$ImageGetter;

    .prologue
    const/4 v5, 0x0

    .line 883
    const-string/jumbo v3, ""

    const-string/jumbo v4, "src"

    invoke-interface {p2, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 884
    .local v2, "src":Ljava/lang/String;
    const/4 v0, 0x0

    .line 886
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 887
    invoke-interface {p3, v2}, Landroid/text/Html$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 890
    :cond_0
    if-nez v0, :cond_1

    .line 891
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/kingsoft/email/widget/R$drawable;->unknown_image:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 895
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 896
    .local v1, "len":I
    const-string/jumbo v3, "\ufffc"

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 898
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 900
    return-void
.end method

.method private startLi(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 11
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x11

    .line 792
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 793
    .local v3, "len":I
    new-instance v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    .line 794
    .local v4, "liItem":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;
    const-string/jumbo v6, ""

    const-string/jumbo v7, "style"

    invoke-interface {p2, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;->mListItemStyle:Ljava/lang/String;

    .line 795
    invoke-virtual {p1, v4, v3, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 797
    iget-object v6, v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;->mListItemStyle:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 799
    iget-object v6, v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;->mListItemStyle:Ljava/lang/String;

    const-string/jumbo v7, "bold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v6, v10, :cond_0

    .line 800
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v6, v3, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 802
    :cond_0
    iget-object v6, v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;->mListItemStyle:Ljava/lang/String;

    const-string/jumbo v7, "italic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v6, v10, :cond_1

    .line 803
    new-instance v6, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/kingsoft/email/widget/text/span/FontItalicSpan;-><init>(I)V

    invoke-virtual {p1, v6, v3, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 805
    :cond_1
    iget-object v6, v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;->mListItemStyle:Ljava/lang/String;

    const-string/jumbo v7, "underline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v6, v10, :cond_2

    .line 806
    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v6, v3, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 808
    :cond_2
    iget-object v6, v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;->mListItemStyle:Ljava/lang/String;

    const-string/jumbo v7, "color:"

    const-string/jumbo v8, ";"

    invoke-direct {p0, v6, v7, v8}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->getLiStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "fontColor":Ljava/lang/String;
    iget-object v6, v4, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$ListItem;->mListItemStyle:Ljava/lang/String;

    const-string/jumbo v7, "font-size:"

    const-string/jumbo v8, ";"

    invoke-direct {p0, v6, v7, v8}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->getLiStyleString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "fontSize":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 811
    invoke-static {v1}, Lcom/kingsoft/email/widget/text/internal/HtmlColor;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    .line 812
    .local v0, "c":I
    if-eq v0, v10, :cond_3

    .line 813
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/high16 v7, -0x1000000

    or-int/2addr v7, v0

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v6, v3, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 817
    .end local v0    # "c":I
    :cond_3
    if-eqz v2, :cond_4

    const-string/jumbo v6, "px"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 818
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 819
    .local v5, "size":I
    int-to-float v6, v5

    sget v7, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->density:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 820
    new-instance v6, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;

    invoke-direct {v6, v5}, Lcom/kingsoft/email/widget/text/span/FontSizeSpan;-><init>(I)V

    invoke-virtual {p1, v6, v3, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 825
    .end local v1    # "fontColor":Ljava/lang/String;
    .end local v2    # "fontSize":Ljava/lang/String;
    .end local v5    # "size":I
    :cond_4
    return-void
.end method

.method private startList(Landroid/text/SpannableStringBuilder;Lcom/kingsoft/email/widget/text/span/ListType;)V
    .locals 3
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "listType"    # Lcom/kingsoft/email/widget/text/span/ListType;

    .prologue
    .line 735
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 736
    .local v0, "len":I
    new-instance v1, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    invoke-direct {v1}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setEvery(I)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->setListType(Lcom/kingsoft/email/widget/text/span/ListType;)Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/span/ListSpan$ListSpanBuilder;->create()Lcom/kingsoft/email/widget/text/span/ListSpan;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 737
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mListSpan:Lcom/kingsoft/email/widget/text/span/ListSpan;

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 738
    return-void
.end method

.method private startOL(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 745
    sget-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startList(Landroid/text/SpannableStringBuilder;Lcom/kingsoft/email/widget/text/span/ListType;)V

    .line 746
    return-void
.end method

.method private startP(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 773
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 774
    .local v0, "len":I
    new-instance v1, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$P;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$P;-><init>(Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$1;)V

    const/16 v2, 0x11

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 775
    return-void
.end method

.method private startUL(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 741
    sget-object v0, Lcom/kingsoft/email/widget/text/span/ListType;->UNNUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->startList(Landroid/text/SpannableStringBuilder;Lcom/kingsoft/email/widget/text/span/ListType;)V

    .line 742
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 9
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x20

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 1055
    add-int v5, v1, p2

    aget-char v0, p1, v5

    .line 1057
    .local v0, "c":C
    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_4

    .line 1059
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1061
    .local v2, "len":I
    if-nez v2, :cond_3

    .line 1062
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1064
    if-nez v2, :cond_2

    .line 1065
    const/16 v3, 0xa

    .line 1073
    .local v3, "pred":C
    :goto_1
    if-eq v3, v7, :cond_1

    if-eq v3, v8, :cond_1

    .line 1074
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1054
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    .restart local v2    # "len":I
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .restart local v3    # "pred":C
    goto :goto_1

    .line 1070
    .end local v3    # "pred":C
    :cond_3
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .restart local v3    # "pred":C
    goto :goto_1

    .line 1077
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1081
    .end local v0    # "c":C
    :cond_5
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1082
    return-void
.end method

.method public convert()Landroid/text/Spanned;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 575
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v6, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 577
    :try_start_0
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v7, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 587
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Landroid/text/style/CharacterStyle;

    invoke-virtual {v6, v11, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 588
    .local v0, "charStyles":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 589
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 590
    .local v5, "start":I
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 591
    .local v2, "end":I
    if-ne v5, v2, :cond_0

    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 593
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v0, v3

    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 588
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "charStyles":[Ljava/lang/Object;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "start":I
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 581
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 583
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 597
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "charStyles":[Ljava/lang/Object;
    .restart local v2    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_0
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v0, v3

    const/16 v8, 0x22

    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 601
    .end local v2    # "end":I
    .end local v5    # "start":I
    :cond_1
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v6, v11, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 602
    .local v4, "obj":[Ljava/lang/Object;
    const/4 v3, 0x0

    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_3

    .line 603
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 604
    .restart local v5    # "start":I
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 606
    .restart local v2    # "end":I
    if-ne v2, v5, :cond_2

    .line 607
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 602
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 609
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v7, v4, v3

    const/16 v8, 0x33

    invoke-virtual {v6, v7, v5, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 613
    .end local v2    # "end":I
    .end local v5    # "start":I
    :cond_3
    iget-object v6, p0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v6
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1027
    sget-object v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;->dispose()V

    .line 1028
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    .line 1029
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-direct {p0, p2}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    .line 1044
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1035
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1085
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1088
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 1020
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1091
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1023
    new-instance v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;-><init>()V

    sput-object v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->mSpanStack:Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter$SpanStack;

    .line 1024
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-direct {p0, p2, p4}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1040
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1032
    return-void
.end method
