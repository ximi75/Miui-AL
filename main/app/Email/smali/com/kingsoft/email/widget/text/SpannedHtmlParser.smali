.class public Lcom/kingsoft/email/widget/text/SpannedHtmlParser;
.super Ljava/lang/Object;
.source "SpannedHtmlParser.java"


# static fields
.field private static final SCHEMA:Lorg/ccil/cowan/tagsoup/HTMLSchema;

.field private static final density:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->SCHEMA:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->density:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustFontSizeToHtml(F)I
    .locals 1
    .param p0, "fontSize"    # F

    .prologue
    .line 344
    sget v0, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->density:F

    div-float v0, p0, v0

    float-to-int v0, v0

    return v0
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0, v0}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p2, "tagHandler"    # Landroid/text/Html$TagHandler;

    .prologue
    .line 98
    new-instance v3, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v3}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 100
    .local v3, "parser":Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_0
    const-string/jumbo v4, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    sget-object v5, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->SCHEMA:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    new-instance v0, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 113
    .local v0, "converter":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 117
    .end local v0    # "converter":Lcom/kingsoft/email/widget/text/HtmlToSpannedConverter;
    :goto_0
    return-object v4

    .line 101
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 104
    .end local v1    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 114
    .end local v1    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_2
    move-exception v2

    .line 115
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 117
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_0
.end method

.method private static getHexColorString(I)Ljava/lang/String;
    .locals 3
    .param p0, "color"    # I

    .prologue
    .line 350
    const/high16 v1, 0x1000000

    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "strColor":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getListItemSpanStyles([Lcom/kingsoft/email/widget/text/span/ListItemSpan;)[Ljava/lang/String;
    .locals 9
    .param p0, "liSpans"    # [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 302
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, v6

    const-string/jumbo v4, ""

    aput-object v4, v3, v7

    const-string/jumbo v4, ""

    aput-object v4, v3, v8

    .line 304
    .local v3, "styles":[Ljava/lang/String;
    if-eqz p0, :cond_5

    array-length v4, p0

    if-lez v4, :cond_5

    .line 305
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .line 306
    .local v0, "curSpanIndex":I
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->getFontColor()I

    move-result v2

    .line 307
    .local v2, "liSpanColor":I
    const/high16 v4, -0x1000000

    if-eq v2, v4, :cond_0

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "color:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->getHexColorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 309
    const-string/jumbo v4, "color:black;"

    aput-object v4, v3, v7

    .line 312
    :cond_0
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->getFontSize()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 313
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->getFontSize()F

    move-result v4

    invoke-static {v4}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->adjustFontSizeToHtml(F)I

    move-result v1

    .line 314
    .local v1, "fontSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "font-size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "px;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "font-size:small;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 318
    .end local v1    # "fontSize":I
    :cond_1
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->isFontBold()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "font-weight:bold;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "font-weight:normal;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 323
    :cond_2
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->isFontItalic()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "font-style:italic;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "font-style:normal;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 328
    :cond_3
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/kingsoft/email/widget/text/span/ListItemSpan;->isFontUnderline()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "font-style:underline;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "text-decoration:none;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 333
    :cond_4
    aget-object v4, v3, v6

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, v3, v7

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " style=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<span style=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 336
    const-string/jumbo v4, "</span>"

    aput-object v4, v3, v8

    .line 340
    .end local v0    # "curSpanIndex":I
    .end local v2    # "liSpanColor":I
    :cond_5
    return-object v3
.end method

.method private static getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 195
    sub-int v1, p2, p1

    .line 196
    .local v1, "len":I
    invoke-static {v1}, Lcom/kingsoft/email/widget/text/internal/ArrayUtils;->idealByteArraySize(I)I

    move-result v4

    new-array v2, v4, [B

    .line 197
    .local v2, "levels":[B
    invoke-static {v1}, Lcom/kingsoft/email/widget/text/internal/MyTextUtils;->obtain(I)[C

    move-result-object v0

    .line 198
    .local v0, "buffer":[C
    invoke-static {p0, p1, p2, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 200
    const/4 v4, 0x2

    invoke-static {v4, v0, v2, v1, v5}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->getParaDir(I[C[BIZ)I

    move-result v3

    .line 201
    .local v3, "paraDir":I
    packed-switch v3, :pswitch_data_0

    .line 206
    const-string/jumbo v4, "<div dir=\"ltr\">"

    :goto_0
    return-object v4

    .line 203
    :pswitch_0
    const-string/jumbo v4, "<div dir=\"rtl\">"

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getParaDir(I[C[BIZ)I
    .locals 1
    .param p0, "dir"    # I
    .param p1, "chars"    # [C
    .param p2, "charInfo"    # [B
    .param p3, "count"    # I
    .param p4, "haveInfo"    # Z

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 11
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 216
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-interface {p1, p2, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 217
    .local v8, "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    array-length v0, v8

    if-eqz v0, :cond_1

    .line 218
    array-length v0, v8

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 219
    invoke-static {p1, v8}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->sortSpansAscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V

    .line 221
    :cond_0
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v8, v0

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 222
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v8, v0

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    const-string/jumbo v0, "<ol>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_1
    :goto_0
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-interface {p1, p2, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 232
    .local v6, "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    invoke-static {v6}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->getListItemSpanStyles([Lcom/kingsoft/email/widget/text/span/ListItemSpan;)[Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "listItemSpanStyles":[Ljava/lang/String;
    array-length v0, v6

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 234
    invoke-static {p1, v6}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->sortSpansAscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V

    .line 236
    :cond_2
    array-length v0, v6

    if-eqz v0, :cond_5

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v6, v0

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_5

    .line 237
    const-string/jumbo v0, "<li"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_1
    move v2, p2

    .local v2, "i":I
    :goto_2
    if-ge v2, p3, :cond_8

    .line 247
    const/16 v0, 0xa

    invoke-static {p1, v0, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v9

    .line 248
    .local v9, "next":I
    if-gez v9, :cond_3

    .line 249
    move v9, p3

    .line 252
    :cond_3
    const/4 v4, 0x0

    .line 254
    .local v4, "nl":I
    :goto_3
    if-ge v9, p3, :cond_6

    invoke-interface {p1, v9}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 255
    add-int/lit8 v4, v4, 0x1

    .line 256
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 226
    .end local v2    # "i":I
    .end local v4    # "nl":I
    .end local v6    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .end local v7    # "listItemSpanStyles":[Ljava/lang/String;
    .end local v9    # "next":I
    :cond_4
    const-string/jumbo v0, "<ul>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    .restart local v6    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    .restart local v7    # "listItemSpanStyles":[Ljava/lang/String;
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    .restart local v2    # "i":I
    .restart local v4    # "nl":I
    .restart local v9    # "next":I
    :cond_6
    sub-int v3, v9, v4

    if-ne v9, p3, :cond_7

    const/4 v5, 0x1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    .line 246
    move v2, v9

    goto :goto_2

    .line 259
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 262
    .end local v4    # "nl":I
    .end local v9    # "next":I
    :cond_8
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    invoke-interface {p1, p3, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    check-cast v6, [Lcom/kingsoft/email/widget/text/span/ListItemSpan;

    .line 263
    .restart local v6    # "liSpans":[Lcom/kingsoft/email/widget/text/span/ListItemSpan;
    array-length v0, v6

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 264
    invoke-static {p1, v6}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->sortSpansAscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V

    .line 266
    :cond_9
    array-length v0, v6

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p3, :cond_e

    .line 267
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 268
    .local v10, "outLength":I
    const/4 v0, 0x5

    if-lt v10, v0, :cond_d

    add-int/lit8 v0, v10, -0x5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<br>\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 269
    add-int/lit8 v0, v10, -0x5

    invoke-virtual {p0, v0, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 273
    :cond_a
    :goto_5
    const/4 v0, 0x2

    aget-object v0, v7, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v0, "</li>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .end local v10    # "outLength":I
    :goto_6
    const-class v0, Lcom/kingsoft/email/widget/text/span/ListSpan;

    invoke-interface {p1, p3, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    check-cast v8, [Lcom/kingsoft/email/widget/text/span/ListSpan;

    .line 280
    .restart local v8    # "listSpans":[Lcom/kingsoft/email/widget/text/span/ListSpan;
    if-eqz v8, :cond_c

    array-length v0, v8

    if-lez v0, :cond_c

    .line 281
    array-length v0, v8

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    .line 282
    invoke-static {p1, v8}, Lcom/kingsoft/email/widget/text/span/SpanHelper;->sortSpansAscByStart(Landroid/text/Spanned;[Ljava/lang/Object;)V

    .line 284
    :cond_b
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p3, :cond_c

    .line 285
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/span/ListSpan;->getListType()Lcom/kingsoft/email/widget/text/span/ListType;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/email/widget/text/span/ListType;->NUMBERED:Lcom/kingsoft/email/widget/text/span/ListType;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/widget/text/span/ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    const-string/jumbo v0, "</ol>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_c
    :goto_7
    return-void

    .line 270
    .restart local v10    # "outLength":I
    :cond_d
    const/4 v0, 0x4

    if-lt v10, v0, :cond_a

    add-int/lit8 v0, v10, -0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    add-int/lit8 v0, v10, -0x4

    invoke-virtual {p0, v0, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 276
    .end local v10    # "outLength":I
    :cond_e
    const-string/jumbo v0, "</div>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 288
    :cond_f
    const-string/jumbo v0, "</ul>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 178
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 179
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 180
    .local v4, "next":I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 182
    .local v6, "quotes":[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, "arr$":[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 183
    .local v5, "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 186
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    :cond_0
    invoke-static {p0, p1, v1, v4}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 188
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 189
    .restart local v5    # "quote":Landroid/text/style/QuoteSpan;
    const-string/jumbo v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 178
    .end local v5    # "quote":Landroid/text/style/QuoteSpan;
    :cond_1
    move v1, v4

    goto :goto_0

    .line 192
    .end local v0    # "arr$":[Landroid/text/style/QuoteSpan;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "next":I
    .end local v6    # "quotes":[Landroid/text/style/QuoteSpan;
    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 143
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 144
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 145
    .local v6, "next":I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 146
    .local v7, "style":[Landroid/text/style/ParagraphStyle;
    const-string/jumbo v1, " "

    .line 147
    .local v1, "elements":Ljava/lang/String;
    const/4 v5, 0x0

    .line 149
    .local v5, "needDiv":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_3

    .line 150
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_0

    .line 151
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 153
    .local v0, "align":Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 154
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_1

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .restart local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_2

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 159
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 163
    .end local v0    # "align":Landroid/text/Layout$Alignment;
    :cond_3
    if-eqz v5, :cond_4

    .line 164
    const-string/jumbo v8, "<div "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_4
    invoke-static {p0, p1, v2, v6}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 169
    if-eqz v5, :cond_5

    .line 170
    const-string/jumbo v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_5
    move v2, v6

    goto/16 :goto_0

    .line 173
    .end local v1    # "elements":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "needDiv":Z
    .end local v6    # "next":I
    .end local v7    # "style":[Landroid/text/style/ParagraphStyle;
    :cond_6
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .locals 9
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "nl"    # I
    .param p5, "last"    # Z

    .prologue
    .line 363
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_18

    .line 364
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, p3, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 365
    .local v3, "next":I
    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v1, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/CharacterStyle;

    .line 368
    .local v6, "style":[Landroid/text/style/CharacterStyle;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_c

    .line 369
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_1

    .line 370
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 372
    .local v5, "s":I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_0

    .line 373
    const-string/jumbo v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_0
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1

    .line 376
    const-string/jumbo v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .end local v5    # "s":I
    :cond_1
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_2

    .line 380
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    const-string/jumbo v7, "<tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_3

    .line 387
    const-string/jumbo v7, "<sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_3
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_4

    .line 390
    const-string/jumbo v7, "<sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_4
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_5

    .line 393
    const-string/jumbo v7, "<u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_5
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_6

    .line 396
    const-string/jumbo v7, "<strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_6
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_7

    .line 399
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/URLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_7
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ImageSpan;

    if-eqz v7, :cond_8

    .line 404
    const-string/jumbo v7, "<img src=\""

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ImageSpan;

    invoke-virtual {v7}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    move v1, v3

    .line 411
    :cond_8
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_9

    .line 412
    const-string/jumbo v7, "<font style=\"font-size:"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v7}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->adjustFontSizeToHtml(F)I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string/jumbo v7, "px\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_9
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_b

    .line 418
    const-string/jumbo v7, "<font color =\"#"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    const/high16 v8, 0x1000000

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "color":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_a

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 424
    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string/jumbo v7, "\">"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .end local v0    # "color":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 429
    :cond_c
    invoke-static {p0, p1, v1, v3}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    .line 431
    array-length v7, v6

    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-ltz v2, :cond_17

    .line 432
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_d

    .line 433
    const-string/jumbo v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_d
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v7, :cond_e

    .line 436
    const-string/jumbo v7, "</font>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_e
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/URLSpan;

    if-eqz v7, :cond_f

    .line 439
    const-string/jumbo v7, "</a>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_f
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v7, :cond_10

    .line 442
    const-string/jumbo v7, "</strike>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_10
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_11

    .line 445
    const-string/jumbo v7, "</u>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_11
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SubscriptSpan;

    if-eqz v7, :cond_12

    .line 448
    const-string/jumbo v7, "</sub>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_12
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/SuperscriptSpan;

    if-eqz v7, :cond_13

    .line 451
    const-string/jumbo v7, "</sup>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_13
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v7, :cond_14

    .line 454
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v7}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    .line 456
    .restart local v5    # "s":Ljava/lang/String;
    const-string/jumbo v7, "monospace"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 457
    const-string/jumbo v7, "</tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .end local v5    # "s":Ljava/lang/String;
    :cond_14
    aget-object v7, v6, v2

    instance-of v7, v7, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_16

    .line 461
    aget-object v7, v6, v2

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    .line 463
    .local v5, "s":I
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_15

    .line 464
    const-string/jumbo v7, "</b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_15
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_16

    .line 467
    const-string/jumbo v7, "</i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .end local v5    # "s":I
    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 363
    :cond_17
    move v1, v3

    goto/16 :goto_0

    .line 473
    .end local v2    # "j":I
    .end local v3    # "next":I
    .end local v6    # "style":[Landroid/text/style/CharacterStyle;
    :cond_18
    if-eqz p5, :cond_19

    const-string/jumbo v4, ""

    .line 475
    .local v4, "p":Ljava/lang/String;
    :goto_4
    const/4 v7, 0x1

    if-ne p4, v7, :cond_1a

    .line 476
    const-string/jumbo v7, "<br>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :goto_5
    return-void

    .line 473
    .end local v4    # "p":Ljava/lang/String;
    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "</div>\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1, p2, p3}, Lcom/kingsoft/email/widget/text/SpannedHtmlParser;->getOpenParaTagWithDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 477
    .restart local v4    # "p":Ljava/lang/String;
    :cond_1a
    const/4 v7, 0x2

    if-ne p4, v7, :cond_1b

    .line 478
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 480
    :cond_1b
    const/4 v1, 0x2

    :goto_6
    if-ge v1, p4, :cond_1c

    .line 481
    const-string/jumbo v7, "<br>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 483
    :cond_1c
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 10
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const v9, 0xdfff

    const v8, 0xd800

    const v7, 0xdc00

    const/16 v6, 0x20

    .line 489
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_9

    .line 490
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 492
    .local v0, "c":C
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1

    .line 493
    const-string/jumbo v4, "&lt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    :cond_1
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_2

    .line 495
    const-string/jumbo v4, "&gt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 496
    :cond_2
    const/16 v4, 0x26

    if-ne v0, v4, :cond_3

    .line 497
    const-string/jumbo v4, "&amp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 498
    :cond_3
    if-lt v0, v8, :cond_4

    if-gt v0, v9, :cond_4

    .line 499
    if-ge v0, v7, :cond_0

    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_0

    .line 500
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 501
    .local v2, "d":C
    if-lt v2, v7, :cond_0

    if-gt v2, v9, :cond_0

    .line 502
    add-int/lit8 v3, v3, 0x1

    .line 503
    const/high16 v4, 0x10000

    sub-int v5, v0, v8

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    sub-int v5, v2, v7

    or-int v1, v4, v5

    .line 504
    .local v1, "codepoint":I
    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 507
    .end local v1    # "codepoint":I
    .end local v2    # "d":C
    :cond_4
    const/16 v4, 0x7e

    if-gt v0, v4, :cond_5

    if-ge v0, v6, :cond_6

    .line 508
    :cond_5
    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 509
    :cond_6
    if-ne v0, v6, :cond_8

    .line 510
    :goto_2
    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_7

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_7

    .line 511
    const-string/jumbo v4, "&nbsp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 515
    :cond_7
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 517
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 520
    .end local v0    # "c":C
    :cond_9
    return-void
.end method
