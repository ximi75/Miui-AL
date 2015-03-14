.class public Lcom/kingsoft/mail/chat/ChatSignatureParser;
.super Ljava/lang/Object;
.source "ChatSignatureParser.java"


# static fields
.field private static final ASCII_NINE:I = 0x39

.field private static final ASCII_ONE:I = 0x30

.field private static final BODY_TEXT_LINE_MAX:I = 0x7fff

.field private static final BODY_TEXT_MAX:I = 0xffff

.field private static final LINE_MAX_LENGTH:I = 0x32

.field private static final LINE_MIN_LENGTH:I = 0x2

.field private static final NAME_LINE_MAX_LENGTH:I = 0x14

.field private static final STR_COLON:Ljava/lang/String; = ":"

.field private static final STR_WEB:Ljava/lang/String; = "www."

.field private static final THRESHOLD_LINE:I = 0xc

.field private static mInstance:Lcom/kingsoft/mail/chat/ChatSignatureParser;


# instance fields
.field private mPyFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

.field private mSignMark:[Ljava/lang/String;

.field private mSignMarkContains:[Ljava/lang/String;

.field private mSignNormal:[Ljava/lang/String;

.field private mSignSpecial:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mInstance:Lcom/kingsoft/mail/chat/ChatSignatureParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignNormal:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignSpecial:[Ljava/lang/String;

    .line 44
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "-"

    aput-object v1, v0, v3

    const-string/jumbo v1, "--"

    aput-object v1, v0, v4

    const-string/jumbo v1, "---"

    aput-object v1, v0, v5

    const-string/jumbo v1, "----"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "-----"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "------"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "-------"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "--------"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "---------"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "----------"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "-----------"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "------------"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "-------------"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "--------------"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "---------------"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "----------------"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "-----------------"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "------------------"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "-------------------"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "--------------------"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "----------------------------------------"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "==============================="

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignMark:[Ljava/lang/String;

    .line 53
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "--------------------"

    aput-object v1, v0, v3

    const-string/jumbo v1, "===================="

    aput-object v1, v0, v4

    const-string/jumbo v1, "____________________"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignMarkContains:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method private calcMarkLine(Ljava/util/List;I)I
    .locals 2
    .param p2, "lineIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 308
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 313
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 307
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private checkEmail(Ljava/lang/String;)Z
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 574
    const/4 v2, 0x0

    .line 577
    .local v2, "flag":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 579
    const/4 v3, 0x0

    .line 588
    :goto_0
    return v3

    .line 582
    :cond_0
    const-string/jumbo v0, "[a-zA-Z_]{1,}[0-9]{0,}@(([a-zA-z0-9]-*){1,}\\.){1,3}[a-zA-z\\-]{1,}"

    .line 583
    .local v0, "check":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "check":Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 588
    goto :goto_0

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkMobileNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 598
    const/4 v1, 0x0

    .line 600
    .local v1, "flag":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 602
    const/4 v3, 0x0

    .line 610
    :goto_0
    return v3

    .line 604
    :cond_0
    const-string/jumbo v2, "^(((13[0-9])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8})|(0\\d{2}-\\d{8})|(0\\d{3}-\\d{7})$"

    .line 605
    .local v2, "regex":Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2    # "regex":Ljava/lang/String;
    :goto_1
    move v3, v1

    .line 610
    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "first"    # [Ljava/lang/String;
    .param p2, "second"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 639
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 640
    .local v0, "array":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    return-object v0
.end method

.method private getBlankCount(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "splitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 368
    .local v3, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "rstCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 369
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 370
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "str":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 371
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7fff

    if-le v4, v5, :cond_1

    .line 372
    const/4 v1, -0x1

    .line 381
    .end local v1    # "rstCount":I
    :cond_0
    return v1

    .line 374
    .restart local v1    # "rstCount":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->replaceBlankAndComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 375
    add-int/lit8 v1, v1, 0x1

    .line 369
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getDBCSignature([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 652
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->replaceBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->toDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_0
    return-object p1
.end method

.method private getHanyuPinyinOutputFormat()Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mPyFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mPyFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    .line 87
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mPyFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 88
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mPyFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 89
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mPyFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    sget-object v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    invoke-virtual {v0, v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mPyFormat:Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    return-object v0
.end method

.method public static getInstance()Lcom/kingsoft/mail/chat/ChatSignatureParser;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mInstance:Lcom/kingsoft/mail/chat/ChatSignatureParser;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/kingsoft/mail/chat/ChatSignatureParser;

    invoke-direct {v0}, Lcom/kingsoft/mail/chat/ChatSignatureParser;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mInstance:Lcom/kingsoft/mail/chat/ChatSignatureParser;

    .line 66
    :cond_0
    sget-object v0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mInstance:Lcom/kingsoft/mail/chat/ChatSignatureParser;

    return-object v0
.end method

.method private getLineFromMark(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 187
    iget-object v5, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignMark:[Ljava/lang/String;

    array-length v0, v5

    .line 188
    .local v0, "count1":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 190
    .local v4, "length":I
    if-nez v4, :cond_1

    .line 188
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignMark:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->calcMarkLine(Ljava/util/List;I)I

    move-result v2

    .line 196
    .local v2, "index":I
    if-eq v2, v6, :cond_2

    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_2

    .line 212
    .end local v2    # "index":I
    .end local v3    # "j":I
    .end local v4    # "length":I
    :goto_2
    return v2

    .restart local v2    # "index":I
    .restart local v3    # "j":I
    .restart local v4    # "length":I
    :cond_2
    move v2, v1

    .line 196
    goto :goto_2

    .line 193
    .end local v2    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "j":I
    .end local v4    # "length":I
    :cond_4
    move v2, v6

    .line 212
    goto :goto_2
.end method

.method private getLineFromNormal(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, -0x1

    .line 223
    const/4 v7, 0x0

    .line 224
    .local v7, "str":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 225
    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "flag":I
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignNormal:[Ljava/lang/String;

    array-length v4, v8

    .line 226
    .local v4, "length":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 227
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 226
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->toDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    const-string/jumbo v8, "www."

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 233
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignNormal:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 235
    move v1, v2

    .line 232
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 240
    .end local v3    # "j":I
    :cond_4
    const/4 v8, 0x1

    if-le v0, v8, :cond_5

    .line 241
    invoke-direct {p0, p1, v1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->calcMarkLine(Ljava/util/List;I)I

    move-result v5

    .line 242
    .local v5, "markLine":I
    if-eq v5, v9, :cond_5

    .line 247
    .end local v5    # "markLine":I
    :goto_2
    return v5

    :cond_5
    move v5, v9

    goto :goto_2
.end method

.method private getLineFromSender(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p2, "sender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 169
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->matchSender(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->calcMarkLine(Ljava/util/List;I)I

    move-result v1

    .line 174
    :goto_1
    return v1

    .line 168
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLineFromSpecial(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v11, 0x32

    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 257
    .local v6, "size":I
    const/4 v0, 0x0

    .line 260
    .local v0, "count":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ltz v2, :cond_2

    .line 261
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 262
    .local v4, "length":I
    if-le v4, v10, :cond_8

    if-le v4, v11, :cond_1

    move v0, v1

    .line 260
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 265
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->isSpecStr(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 266
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-lt v1, v10, :cond_0

    .line 267
    invoke-direct {p0, p1, v2}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->calcMarkLine(Ljava/util/List;I)I

    move-result v5

    .line 268
    .local v5, "markLine":I
    if-eq v5, v9, :cond_3

    .line 295
    .end local v4    # "length":I
    .end local v5    # "markLine":I
    :goto_2
    return v5

    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_2
    move v0, v1

    .line 277
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_3
    const/4 v7, 0x0

    .line 278
    .local v7, "str":Ljava/lang/String;
    add-int/lit8 v2, v6, -0x1

    :goto_3
    if-ltz v2, :cond_7

    .line 279
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 280
    .restart local v4    # "length":I
    if-le v4, v10, :cond_4

    if-le v4, v11, :cond_5

    .line 278
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 283
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 284
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignSpecial:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 285
    iget-object v8, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignSpecial:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 286
    invoke-direct {p0, p1, v2}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->calcMarkLine(Ljava/util/List;I)I

    move-result v5

    .line 287
    .restart local v5    # "markLine":I
    if-eq v5, v9, :cond_4

    goto :goto_2

    .line 284
    .end local v5    # "markLine":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "j":I
    .end local v4    # "length":I
    :cond_7
    move v5, v9

    .line 295
    goto :goto_2

    .end local v0    # "count":I
    .end local v7    # "str":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v4    # "length":I
    :cond_8
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method private getListReplaceBlank(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 416
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v3, "rstList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 418
    .local v4, "str":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .line 419
    .local v2, "num":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 420
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x7fff

    if-le v5, v7, :cond_0

    .line 430
    .end local v3    # "rstList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v6

    .line 423
    .restart local v3    # "rstList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->replaceBlankAndComma(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 427
    :cond_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_2
    if-ne v2, v0, :cond_3

    move-object v3, v6

    .end local v3    # "rstList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v6, v3

    goto :goto_1
.end method

.method private getMarkLineFromSingleMail(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .param p2, "sender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 138
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getLineFromMark(Ljava/util/List;)I

    move-result v0

    .line 139
    .local v0, "markLine":I
    if-eq v0, v2, :cond_0

    move v1, v0

    .line 158
    .end local v0    # "markLine":I
    .local v1, "markLine":I
    :goto_0
    return v1

    .line 143
    .end local v1    # "markLine":I
    .restart local v0    # "markLine":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getLineFromSender(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 144
    if-eq v0, v2, :cond_1

    move v1, v0

    .line 145
    .end local v0    # "markLine":I
    .restart local v1    # "markLine":I
    goto :goto_0

    .line 148
    .end local v1    # "markLine":I
    .restart local v0    # "markLine":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getLineFromNormal(Ljava/util/List;)I

    move-result v0

    .line 149
    if-eq v0, v2, :cond_2

    move v1, v0

    .line 150
    .end local v0    # "markLine":I
    .restart local v1    # "markLine":I
    goto :goto_0

    .line 153
    .end local v1    # "markLine":I
    .restart local v0    # "markLine":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getLineFromSpecial(Ljava/util/List;)I

    move-result v0

    .line 154
    if-eq v0, v2, :cond_3

    move v1, v0

    .line 155
    .end local v0    # "markLine":I
    .restart local v1    # "markLine":I
    goto :goto_0

    .end local v1    # "markLine":I
    .restart local v0    # "markLine":I
    :cond_3
    move v1, v0

    .line 158
    .end local v0    # "markLine":I
    .restart local v1    # "markLine":I
    goto :goto_0
.end method

.method private getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 472
    .local v4, "t":[C
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/String;

    .line 474
    .local v5, "t1":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 475
    .local v3, "py":Ljava/lang/StringBuffer;
    array-length v2, v4

    .line 477
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 478
    :try_start_0
    aget-char v6, v4, v1

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "[\\u4e00-\\u9fa5]+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 479
    aget-char v6, v4, v1

    invoke-direct {p0}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getHanyuPinyinOutputFormat()Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v5

    .line 480
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_0
    aget-char v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v6

    .line 486
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2
.end method

.method private isDate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 564
    :goto_0
    return v1

    .line 554
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->toDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "."

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 555
    const-string/jumbo v1, "/"

    const-string/jumbo v2, "-"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 556
    const-string/jumbo v0, "^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))"

    .line 564
    .local v0, "rexp":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isSpecStr(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 531
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->isDate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v0

    .line 533
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->checkEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->checkMobileNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 622
    const/4 v1, 0x0

    .line 628
    :goto_0
    return v1

    .line 624
    :cond_0
    const-string/jumbo v0, "(^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]|(www.))\\w+[.]([a-z]{2,4})?[[.]([a-z]{2,4})]+((/[\\S&&[^,;\u4e00-\u9fa5]]+)+)?([.][a-z]{2,4}+|/?)"

    .line 628
    .local v0, "regex":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private matchSender(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "lineText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 441
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v2

    .line 445
    :cond_1
    invoke-direct {p0, p2}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "py":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    .line 449
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 453
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 447
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string/jumbo v0, "\\s*"

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->replaceChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceBlankAndComma(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string/jumbo v0, ",+|\\s*"

    invoke-direct {p0, p1, v0}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->replaceChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "regularExpression"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string/jumbo v0, ""

    .line 353
    .local v0, "rst":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    const-string/jumbo v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_0
    return-object v0
.end method

.method private splitStr(Ljava/lang/StringBuffer;)Ljava/util/List;
    .locals 7
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const v6, 0xffff

    if-le v5, v6, :cond_1

    .line 392
    :cond_0
    const/4 v3, 0x0

    .line 406
    :goto_0
    return-object v3

    .line 394
    :cond_1
    const/4 v0, 0x0

    .line 395
    .local v0, "c":C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "start":I
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 397
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 398
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 399
    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    :cond_2
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_3

    .line 400
    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    move v4, v1

    .line 397
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    :cond_4
    invoke-virtual {p1, v4, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string/jumbo v2, "[`~!@#$%^&*()+=|{}\':;\',//[//].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f-]"

    .line 502
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 503
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 505
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private stringMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "rexp"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 518
    .local v0, "isMatch":Z
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 519
    .local v2, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 520
    .local v1, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 522
    return v0
.end method

.method private toDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 324
    .local v0, "array":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 325
    aget-char v3, v0, v1

    const/16 v4, 0x3000

    if-ne v3, v4, :cond_1

    .line 326
    const/16 v3, 0x20

    aput-char v3, v0, v1

    .line 324
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_1
    aget-char v3, v0, v1

    const v4, 0xff00

    if-le v3, v4, :cond_0

    aget-char v3, v0, v1

    const v4, 0xff5f

    if-ge v3, v4, :cond_0

    .line 328
    aget-char v3, v0, v1

    const v4, 0xfee0

    sub-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v1

    goto :goto_1

    .line 331
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 333
    .local v2, "returnString":Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignSpecial:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignNormal:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, "res":Landroid/content/res/Resources;
    const v6, 0x7f090028

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "signatureSpecial":[Ljava/lang/String;
    const v6, 0x7f090029

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "signatureSpecialNext":[Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "tmp":[Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getDBCSignature([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignSpecial:[Ljava/lang/String;

    .line 77
    const v6, 0x7f090026

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "signatureNormal":[Ljava/lang/String;
    const v6, 0x7f090027

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "signatureNormalNext":[Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-direct {p0, v5}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getDBCSignature([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kingsoft/mail/chat/ChatSignatureParser;->mSignNormal:[Ljava/lang/String;

    .line 82
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "signatureNormal":[Ljava/lang/String;
    .end local v2    # "signatureNormalNext":[Ljava/lang/String;
    .end local v3    # "signatureSpecial":[Ljava/lang/String;
    .end local v4    # "signatureSpecialNext":[Ljava/lang/String;
    .end local v5    # "tmp":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public parser(Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "message"    # Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->getBodyText()Ljava/lang/StringBuffer;

    move-result-object v6

    .line 102
    .local v6, "rstBodyText":Ljava/lang/StringBuffer;
    invoke-direct {p0, v6}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->splitStr(Ljava/lang/StringBuffer;)Ljava/util/List;

    move-result-object v7

    .line 103
    .local v7, "splitList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 127
    .end local v6    # "rstBodyText":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v6

    .line 106
    .restart local v6    # "rstBodyText":Ljava/lang/StringBuffer;
    :cond_1
    invoke-direct {p0, v7}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getBlankCount(Ljava/util/List;)I

    move-result v0

    .line 107
    .local v0, "blankCount":I
    if-ltz v0, :cond_0

    .line 110
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v0, 0xc

    if-le v9, v10, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v10, v0, 0xc

    sub-int v8, v9, v10

    .line 112
    .local v8, "start":I
    :goto_1
    invoke-direct {p0, v7, v8}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getListReplaceBlank(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/kingsoft/mail/chat/ChatSignatureParserMessage;->getSender()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/kingsoft/mail/chat/ChatSignatureParser;->getMarkLineFromSingleMail(Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    .line 118
    .local v4, "markLine":I
    if-ltz v4, :cond_0

    .line 119
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v9, ""

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .local v5, "rst":Ljava/lang/StringBuffer;
    add-int v1, v4, v8

    .line 121
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 122
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "markLine":I
    .end local v5    # "rst":Ljava/lang/StringBuffer;
    .end local v8    # "start":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "lineList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "markLine":I
    .restart local v5    # "rst":Ljava/lang/StringBuffer;
    .restart local v8    # "start":I
    :cond_3
    move-object v6, v5

    .line 124
    goto :goto_0
.end method
