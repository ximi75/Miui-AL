.class public Lcom/kingsoft/mail/photomanager/LetterUtil;
.super Ljava/lang/Object;
.source "LetterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirstCharactor(Ljava/lang/String;)C
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    const-string/jumbo v2, "/^([a-zA-Z]*).*/"

    const-string/jumbo v3, "$1"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "str1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method private static getLastCharactorNotLetter(Ljava/lang/String;)C
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 41
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return v2

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 44
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "w":Ljava/lang/String;
    const-string/jumbo v3, "\u4e00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    const-string/jumbo v3, "\u9fa5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 42
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 50
    .end local v1    # "w":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0
.end method

.method public static getRightChar(Ljava/lang/String;)C
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    .local v4, "result":C
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v5

    .line 20
    :cond_1
    const-string/jumbo v3, "[^a-zA-Z\u4e00-\u9fff]"

    .line 21
    .local v3, "regEx":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 22
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 23
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "newStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 30
    invoke-static {v1}, Lcom/kingsoft/mail/photomanager/LetterUtil;->getLastCharactorNotLetter(Ljava/lang/String;)C

    move-result v4

    :goto_1
    move v5, v4

    .line 37
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1
.end method
