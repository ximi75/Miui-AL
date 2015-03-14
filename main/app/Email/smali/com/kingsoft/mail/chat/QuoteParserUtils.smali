.class public Lcom/kingsoft/mail/chat/QuoteParserUtils;
.super Ljava/lang/Object;
.source "QuoteParserUtils.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "show.chat.view.activity"

.field public static final MAX_LENGTH_TO_COMPARE:I = 0x64

.field public static final NBSP:I = 0xa0

.field public static final ONTHERSPACE:I = 0x200e

.field public static QQSubscribe:Ljava/lang/String; = null

.field public static final Quote_Extraction:Z = true

.field public static final SPACE:I = 0x20

.field public static colonArray:[Ljava/lang/String; = null

.field public static forwardEmailInBody:Ljava/lang/String; = null

.field public static mMailBoxs:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mailtoStr:Ljava/lang/String; = "mailto"

.field public static noContent:Landroid/text/SpannableString;

.field public static picInBody:Ljava/lang/String;

.field public static quoteArray:[Ljava/lang/String;

.field public static senderArray:[Ljava/lang/String;

.field public static wrotedArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->mMailBoxs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ContainsTimeParameterInNextTextNode(Ljava/util/List;I)Z
    .locals 5
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    const/4 v3, 0x0

    .line 237
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v3

    .line 240
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 241
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v4, :cond_2

    .line 242
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 244
    .local v2, "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->isContainsTimeParameter(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const/4 v3, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "textNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static colorEmailBody(Ljava/lang/String;Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 9
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x21

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v5, ""

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    return-object v2

    .line 181
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 182
    .local v2, "msp":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0078

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 183
    .local v0, "colorResId":I
    invoke-static {p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringForwardEmailInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringForwardEmailInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    :cond_2
    invoke-static {p0, p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getPicPosition(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 187
    .local v4, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 189
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 190
    .local v3, "position":I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x5b

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v7, 0x5d

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static containsFarword(Ljava/lang/String;)Z
    .locals 3
    .param p0, "sub"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fwd:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u8f6c\u53d1:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getColonArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->colonArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 278
    const v0, 0x7f09002b

    invoke-static {v0, p0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringArrayFromId(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->colonArray:[Ljava/lang/String;

    .line 280
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->colonArray:[Ljava/lang/String;

    return-object v0
.end method

.method public static getPicPosition(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringPictureInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 211
    const/4 v2, 0x0

    .line 223
    :cond_0
    return-object v2

    .line 213
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 215
    .local v1, "position":I
    const/4 v0, 0x0

    .line 216
    .local v0, "lastPosition":I
    move-object v3, p0

    .line 217
    .local v3, "sub":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringPictureInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-static {p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringPictureInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {p1}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringPictureInBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v1, v4

    goto :goto_0
.end method

.method public static getQuoteArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->quoteArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 257
    const v0, 0x7f090021

    invoke-static {v0, p0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringArrayFromId(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->quoteArray:[Ljava/lang/String;

    .line 259
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->quoteArray:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSenderArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->senderArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    const v0, 0x7f09002c

    invoke-static {v0, p0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringArrayFromId(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->senderArray:[Ljava/lang/String;

    .line 273
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->senderArray:[Ljava/lang/String;

    return-object v0
.end method

.method private static getStringArrayFromId(ILandroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForwardEmailInBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->forwardEmailInBody:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->forwardEmailInBody:Ljava/lang/String;

    .line 311
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->forwardEmailInBody:Ljava/lang/String;

    return-object v0
.end method

.method public static getStringNoContent(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    sget-object v1, Lcom/kingsoft/mail/chat/QuoteParserUtils;->noContent:Landroid/text/SpannableString;

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 325
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f10028d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Lcom/kingsoft/mail/chat/QuoteParserUtils;->noContent:Landroid/text/SpannableString;

    .line 326
    sget-object v1, Lcom/kingsoft/mail/chat/QuoteParserUtils;->noContent:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f0b0077

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    sget-object v4, Lcom/kingsoft/mail/chat/QuoteParserUtils;->noContent:Landroid/text/SpannableString;

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 328
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    sget-object v1, Lcom/kingsoft/mail/chat/QuoteParserUtils;->noContent:Landroid/text/SpannableString;

    return-object v1
.end method

.method public static getStringPictureInBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->picInBody:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->picInBody:Ljava/lang/String;

    .line 303
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->picInBody:Ljava/lang/String;

    return-object v0
.end method

.method public static getStringQQSubscribe(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->QQSubscribe:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->QQSubscribe:Ljava/lang/String;

    .line 319
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->QQSubscribe:Ljava/lang/String;

    return-object v0
.end method

.method public static getWrotedArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->wrotedArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 264
    const v0, 0x7f09002d

    invoke-static {v0, p0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->getStringArrayFromId(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->wrotedArray:[Ljava/lang/String;

    .line 266
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/QuoteParserUtils;->wrotedArray:[Ljava/lang/String;

    return-object v0
.end method

.method public static isArrayContainsText([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 289
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    const/4 v4, 0x1

    .line 295
    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    return v4

    .line 288
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isContainsEmailParameter(Ljava/lang/String;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string/jumbo v0, "[^\\s@]+@([^\\s@\\.]+\\.)+[a-zA-z][a-zA-Z][a-zA-Z]*"

    .line 69
    .local v0, "emailPattern":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->regularCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isContainsTimeParameter(Ljava/lang/String;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    const-string/jumbo v2, "201"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string/jumbo v0, "[\\d{2}]?\\d{2}[-|/|\u5e74]\\d{1,2}[-|/|\u6708]\\d{1,2}[\u65e5]?[\uff0c|,]?([(|\\s]\u661f\u671f[\u4e00|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u65e5][)]?)?[\\s]?(AT\\s)?[\uff0c|,]?(\u4e2d\u5348|\u4e0b\u5348|\u4e0a\u5348|AM|PM)?[\\d{1,2}:?]{2,3}|(\\d{1,2}[/]\\d{1,2}[/][\\d{2}]?\\d{2}[\\s]\\d{1,2}:\\d{1,2}[\\s][AM|PM])|([A-Z]{3,9},\\s\\d{1,2}\\s[A-Z]{3,9}\\s[\\d]{4}\\s(\\d{1,2}:){2}\\d{1,2})|(([A-Z]{3,9},\\s)?(([A-Z]{3,9}\\s\\d{1,2})|(\\d{1,2}\\s[A-Z]{3,9})),\\s[\\d]{4},?\\s(AT\\s)?\\d{1,2}:\\d{1,2}\\s[AM|PM])"

    .line 60
    .local v0, "timePattern":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->regularCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isContainsWebAddressParameter(Ljava/lang/String;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    .line 81
    :cond_0
    const-string/jumbo v0, "^(http|https|ftp)\\://([a-zA-Z0-9\\.\\-]+(\\:[a-zA-Z0-9\\.&amp;%\\$\\-]+)*@)?((25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])|([a-zA-Z0-9\\-]+\\.)*[a-zA-Z0-9\\-]+\\.[a-zA-Z]{2,4})(\\:[0-9]+)?(/[^/][a-zA-Z0-9\\.\\,\\?\\\'\\\\/\\+&amp;%\\$#\\=~_\\-@]*)*$"

    .line 86
    .local v0, "pictureAddressPattern":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->regularCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isEmailTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    const-string/jumbo v0, "mailto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFWDEmailFromSubject(Ljava/lang/String;)Z
    .locals 3
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    .line 103
    :cond_0
    const-string/jumbo v0, "^(fw|fwd|forward|\u8f6c\u53d1|\u8f49\u767c)[:|\uff1a]"

    .line 104
    .local v0, "fwdRegular":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "^(fw|fwd|forward|\u8f6c\u53d1|\u8f49\u767c)[:|\uff1a]"

    invoke-static {v1, v2}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->regularCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static regularCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 109
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x1

    .line 113
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static remove([CI)[C
    .locals 3
    .param p0, "c"    # [C
    .param p1, "p"    # I

    .prologue
    .line 154
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [C

    .line 155
    .local v1, "r":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 156
    if-ge v0, p1, :cond_0

    .line 157
    aget-char v2, p0, v0

    aput-char v2, v1, v0

    .line 155
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-char v2, p0, v2

    aput-char v2, v1, v0

    goto :goto_1

    .line 162
    :cond_1
    return-object v1
.end method

.method public static replaceSpaceToSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x200e

    const/16 v4, 0xa0

    .line 125
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    :cond_0
    move-object v1, p0

    .line 129
    .local v1, "replace":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 130
    .local v2, "str":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 131
    aget-char v3, v2, v0

    if-ne v3, v5, :cond_2

    .line 132
    invoke-static {v2, v0}, Lcom/kingsoft/mail/chat/QuoteParserUtils;->remove([CI)[C

    move-result-object v2

    .line 130
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    aget-char v3, v2, v0

    if-ne v3, v4, :cond_1

    .line 134
    const/16 v3, 0x20

    aput-char v3, v2, v0

    goto :goto_1

    .line 137
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    .line 139
    .end local v0    # "i":I
    .end local v1    # "replace":Ljava/lang/String;
    .end local v2    # "str":[C
    .end local p0    # "text":Ljava/lang/String;
    :cond_4
    return-object p0
.end method
