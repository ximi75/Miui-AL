.class Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagNameScanner"
.end annotation


# instance fields
.field private endNamePos:I

.field private final html:Ljava/lang/String;

.field private startNamePos:I

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    .line 406
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    .line 409
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->html:Ljava/lang/String;

    .line 410
    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 440
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    if-eq v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->html:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->tagName:Ljava/lang/String;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public scanName(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 421
    move v1, p1

    .local v1, "pos":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->html:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 425
    .local v0, "ch":C
    const/16 v2, 0x3e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    .end local v0    # "ch":C
    :cond_0
    if-le v1, p1, :cond_1

    .line 430
    iput p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->startNamePos:I

    .line 431
    iput v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->endNamePos:I

    .line 433
    :cond_1
    return v1

    .line 421
    .restart local v0    # "ch":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
