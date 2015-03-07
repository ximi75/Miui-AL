.class public Lcom/kingsoft/mail/providers/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADDRESS_DELIMETER:Ljava/lang/String; = ","

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingsoft/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/mail/providers/Address;

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final LIST_EMAIL_LEFT_ANGLE_BRACKETS:C = '<'

.field private static final LIST_EMAIL_RIGHT_ANGLE_BRACKETS:C = '>'

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSimplifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 69
    const-string/jumbo v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 71
    const-string/jumbo v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/kingsoft/mail/providers/Address;

    sput-object v0, Lcom/kingsoft/mail/providers/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/mail/providers/Address;

    .line 81
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/Address;->LOG_TAG:Ljava/lang/String;

    .line 547
    new-instance v0, Lcom/kingsoft/mail/providers/Address$1;

    invoke-direct {v0}, Lcom/kingsoft/mail/providers/Address$1;-><init>()V

    sput-object v0, Lcom/kingsoft/mail/providers/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Address;->setName(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/providers/Address;->setAddress(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/Address;->setAddress(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/providers/Address;->setName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/kingsoft/mail/providers/Address;->setAddress(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static decodeAddressName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    sget-object v0, Lcom/kingsoft/mail/providers/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    sget-object v0, Lcom/kingsoft/mail/providers/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 p0, 0x0

    .line 190
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;
    .locals 6
    .param p0, "rawAddress"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v5, Lcom/kingsoft/mail/providers/Address;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    const/4 v4, 0x0

    .line 141
    :goto_0
    monitor-exit v5

    return-object v4

    .line 130
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 131
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v4, v3

    if-lez v4, :cond_2

    .line 132
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "tokenizedName":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "name":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .end local v2    # "tokenizedName":Ljava/lang/String;
    .local v0, "address":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/kingsoft/mail/providers/Address;

    invoke-direct {v4, v1, v0}, Lcom/kingsoft/mail/providers/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "tokens":[Landroid/text/util/Rfc822Token;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 133
    .restart local v2    # "tokenizedName":Ljava/lang/String;
    .restart local v3    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    :try_start_2
    const-string/jumbo v1, ""

    goto :goto_1

    .line 137
    .end local v2    # "tokenizedName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    .line 138
    .restart local v1    # "name":Ljava/lang/String;
    if-nez p0, :cond_3

    const-string/jumbo v0, ""

    .restart local v0    # "address":Ljava/lang/String;
    :goto_3
    goto :goto_2

    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/kingsoft/mail/utils/Utils;->convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3
.end method

.method public static isAllValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 201
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 202
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 203
    aget-object v3, v4, v1

    .line 204
    .local v3, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    const/4 v5, 0x0

    .line 210
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :goto_1
    return v5

    .line 202
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "token":Landroid/text/util/Rfc822Token;
    .restart local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 252
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/kingsoft/common/Rfc822Validator;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/kingsoft/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/kingsoft/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public static pack([Lcom/kingsoft/mail/providers/Address;)Ljava/lang/String;
    .locals 8
    .param p0, "addresses"    # [Lcom/kingsoft/mail/providers/Address;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 502
    if-nez p0, :cond_0

    .line 503
    const/4 v5, 0x0

    .line 528
    :goto_0
    return-object v5

    .line 505
    :cond_0
    array-length v3, p0

    .line 506
    .local v3, "nAddr":I
    if-nez v3, :cond_1

    .line 507
    const-string/jumbo v5, ""

    goto :goto_0

    .line 511
    :cond_1
    if-ne v3, v7, :cond_2

    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 512
    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 515
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 516
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 517
    if-eqz v2, :cond_3

    .line 518
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    :cond_3
    aget-object v0, p0, v2

    .line 521
    .local v0, "address":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "displayName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 524
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    .end local v0    # "address":Lcom/kingsoft/mail/providers/Address;
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static packedToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {p0}, Lcom/kingsoft/mail/providers/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->toHeader([Lcom/kingsoft/mail/providers/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;
    .locals 8
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 222
    :cond_0
    sget-object v7, Lcom/kingsoft/mail/providers/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/mail/providers/Address;

    .line 239
    :goto_0
    return-object v7

    .line 224
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 225
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v6

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 227
    aget-object v5, v6, v2

    .line 228
    .local v5, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 230
    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 231
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 233
    const/4 v4, 0x0

    .line 235
    :cond_2
    new-instance v7, Lcom/kingsoft/mail/providers/Address;

    invoke-direct {v7, v4, v0}, Lcom/kingsoft/mail/providers/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "token":Landroid/text/util/Rfc822Token;
    :cond_4
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/kingsoft/mail/providers/Address;

    goto :goto_0
.end method

.method public static parseAndPack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "textList"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {p0}, Lcom/kingsoft/mail/providers/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->pack([Lcom/kingsoft/mail/providers/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toFriendly([Lcom/kingsoft/mail/providers/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/kingsoft/mail/providers/Address;

    .prologue
    const/4 v4, 0x0

    .line 392
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 393
    :cond_0
    const/4 v2, 0x0

    .line 403
    :goto_0
    return-object v2

    .line 395
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 396
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 398
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 400
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 403
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toHeader([Lcom/kingsoft/mail/providers/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/kingsoft/mail/providers/Address;

    .prologue
    const/4 v4, 0x0

    .line 354
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 355
    :cond_0
    const/4 v2, 0x0

    .line 366
    :goto_0
    return-object v2

    .line 357
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 358
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 360
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 363
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Lcom/kingsoft/mail/providers/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Lcom/kingsoft/mail/providers/Address;

    .prologue
    .line 298
    const-string/jumbo v0, ","

    invoke-static {p0, v0}, Lcom/kingsoft/mail/providers/Address;->toString([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Lcom/kingsoft/mail/providers/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/kingsoft/mail/providers/Address;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 309
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 310
    :cond_0
    const/4 v2, 0x0

    .line 321
    :goto_0
    return-object v2

    .line 312
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 313
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 315
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;
    .locals 11
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 445
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 446
    :cond_0
    sget-object v6, Lcom/kingsoft/mail/providers/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/mail/providers/Address;

    .line 486
    :goto_0
    return-object v6

    .line 450
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 452
    invoke-static {p0}, Lcom/kingsoft/mail/providers/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v6

    goto :goto_0

    .line 455
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/mail/providers/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 457
    .local v3, "length":I
    const/4 v5, 0x0

    .line 458
    .local v5, "pairStartIndex":I
    const/4 v4, 0x0

    .line 465
    .local v4, "pairEndIndex":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 467
    .local v1, "addressEndIndex":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 468
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 469
    if-ne v4, v8, :cond_3

    .line 470
    move v4, v3

    .line 473
    :cond_3
    if-eq v1, v8, :cond_4

    if-gt v4, v1, :cond_5

    .line 476
    :cond_4
    new-instance v0, Lcom/kingsoft/mail/providers/Address;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/kingsoft/mail/providers/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v0, "address":Lcom/kingsoft/mail/providers/Address;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v5, v4, 0x1

    .line 485
    goto :goto_1

    .line 478
    .end local v0    # "address":Lcom/kingsoft/mail/providers/Address;
    :cond_5
    new-instance v0, Lcom/kingsoft/mail/providers/Address;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/kingsoft/mail/providers/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .restart local v0    # "address":Lcom/kingsoft/mail/providers/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 486
    .end local v0    # "address":Lcom/kingsoft/mail/providers/Address;
    :cond_6
    sget-object v6, Lcom/kingsoft/mail/providers/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/mail/providers/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/kingsoft/mail/providers/Address;

    goto :goto_0
.end method

.method public static unpackFirst(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;
    .locals 2
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p0}, Lcom/kingsoft/mail/providers/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    .line 427
    .local v0, "array":[Lcom/kingsoft/mail/providers/Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static unpackToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {p0}, Lcom/kingsoft/mail/providers/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/mail/providers/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->toString([Lcom/kingsoft/mail/providers/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 258
    instance-of v0, p1, Lcom/kingsoft/mail/providers/Address;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/kingsoft/mail/providers/Address;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 269
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimplifiedName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mSimplifiedName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 99
    .local v0, "atSign":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mSimplifiedName:Ljava/lang/String;

    .line 122
    .end local v0    # "atSign":I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mSimplifiedName:Ljava/lang/String;

    return-object v2

    .line 99
    .restart local v0    # "atSign":I
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 100
    .end local v0    # "atSign":I
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 104
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 106
    .local v1, "end":I
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    .line 108
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mSimplifiedName:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_3
    :goto_2
    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4

    .line 112
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 114
    :cond_4
    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    :goto_3
    iput-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mSimplifiedName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 118
    .end local v1    # "end":I
    :cond_6
    sget-object v2, Lcom/kingsoft/mail/providers/Address;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to get a simplified name"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/kingsoft/mail/providers/Address;->mSimplifiedName:Ljava/lang/String;

    goto :goto_1
.end method

.method public pack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "personal":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 543
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "address":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/kingsoft/mail/providers/Address;->toHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lcom/kingsoft/mail/providers/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Address;->decodeAddressName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public toFriendly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    .line 379
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "personal"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 342
    .end local p2    # "address":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    const-string/jumbo v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->ensureQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 571
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/kingsoft/mail/providers/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    return-void
.end method
