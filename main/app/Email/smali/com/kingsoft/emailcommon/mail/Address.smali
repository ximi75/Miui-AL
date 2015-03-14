.class public Lcom/kingsoft/emailcommon/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final DOMAIN_PART:Ljava/lang/String; = "([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+"

.field private static final DOMAIN_PART_PART:Ljava/lang/String; = "[[\\w][\\d]\\-\\(\\)\\[\\]]+"

.field private static final EMAIL_ADDRESS:Ljava/util/regex/Pattern;

.field private static final EMAIL_ADDRESS_HALF:Ljava/util/regex/Pattern;

.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/emailcommon/mail/Address;

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final LOCAL_PART:Ljava/lang/String; = "[^@]+"

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 57
    const-string/jumbo v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 59
    const-string/jumbo v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 74
    const-string/jumbo v0, "\\A[^@]+@([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 77
    const-string/jumbo v0, "\\A[^@]+@(.*?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Address;->EMAIL_ADDRESS_HALF:Ljava/util/regex/Pattern;

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Address;

    sput-object v0, Lcom/kingsoft/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/emailcommon/mail/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/kingsoft/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0, p1}, Lcom/kingsoft/emailcommon/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/kingsoft/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static isAllValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 138
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 139
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 140
    aget-object v3, v4, v1

    .line 141
    .local v3, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    const/4 v5, 0x0

    .line 147
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :goto_1
    return v5

    .line 139
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "token":Landroid/text/util/Rfc822Token;
    .restart local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "token":Landroid/text/util/Rfc822Token;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static isValidAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Address;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static isValidAddressHalf(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Address;->EMAIL_ADDRESS_HALF:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Lcom/kingsoft/emailcommon/mail/Address;

    .prologue
    .line 515
    invoke-static {p0}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static packedToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {p0}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Landroid/text/util/Rfc822Token;Z)Lcom/kingsoft/emailcommon/mail/Address;
    .locals 6
    .param p0, "token"    # Landroid/text/util/Rfc822Token;
    .param p1, "indulge"    # Z

    .prologue
    const/4 v5, 0x0

    .line 151
    invoke-virtual {p0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 153
    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    const/4 v2, 0x0

    .line 158
    :cond_0
    new-instance v4, Lcom/kingsoft/emailcommon/mail/Address;

    invoke-direct {v4, v0, v2}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v2    # "name":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 161
    invoke-static {v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "decodedAddress":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 164
    .local v3, "oneToken":[Landroid/text/util/Rfc822Token;
    array-length v4, v3

    if-lez v4, :cond_2

    .line 165
    aget-object v4, v3, v5

    invoke-static {v4, v5}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Landroid/text/util/Rfc822Token;Z)Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v4

    goto :goto_0

    .line 170
    .end local v1    # "decodedAddress":Ljava/lang/String;
    .end local v3    # "oneToken":[Landroid/text/util/Rfc822Token;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;
    .locals 7
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 182
    :cond_0
    sget-object v5, Lcom/kingsoft/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 194
    :goto_0
    return-object v5

    .line 185
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 187
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v4

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 189
    aget-object v5, v4, v2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Landroid/text/util/Rfc822Token;Z)Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    .line 190
    .local v0, "address":Lcom/kingsoft/emailcommon/mail/Address;
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_3
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/kingsoft/emailcommon/mail/Address;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;I)[Lcom/kingsoft/emailcommon/mail/Address;
    .locals 9
    .param p0, "addressList"    # Ljava/lang/String;
    .param p1, "tags"    # I

    .prologue
    .line 198
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 199
    :cond_0
    sget-object v7, Lcom/kingsoft/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 237
    :goto_0
    return-object v7

    .line 207
    :cond_1
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;I)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 215
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v6

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 217
    aget-object v5, v6, v2

    .line 218
    .local v5, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 220
    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 221
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 231
    const/4 v4, 0x0

    .line 233
    :cond_3
    new-instance v7, Lcom/kingsoft/emailcommon/mail/Address;

    invoke-direct {v7, v0, v4}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "address":Ljava/lang/String;
    .end local v5    # "token":Landroid/text/util/Rfc822Token;
    :cond_5
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/kingsoft/emailcommon/mail/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public static parseAndPack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "textList"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-static {p0}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->pack([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 309
    if-nez p0, :cond_1

    .line 310
    const/4 p0, 0x0

    .line 316
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 312
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static toFriendly([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/kingsoft/emailcommon/mail/Address;

    .prologue
    const/4 v4, 0x0

    .line 413
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 414
    :cond_0
    const/4 v2, 0x0

    .line 424
    :goto_0
    return-object v2

    .line 416
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 417
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 419
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 421
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toHeader([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/kingsoft/emailcommon/mail/Address;

    .prologue
    const/4 v4, 0x0

    .line 375
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 376
    :cond_0
    const/4 v2, 0x0

    .line 387
    :goto_0
    return-object v2

    .line 378
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 379
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 381
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 384
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Lcom/kingsoft/emailcommon/mail/Address;

    .prologue
    .line 327
    const-string/jumbo v0, ","

    invoke-static {p0, v0}, Lcom/kingsoft/emailcommon/mail/Address;->toString([Lcom/kingsoft/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Lcom/kingsoft/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "addresses"    # [Lcom/kingsoft/emailcommon/mail/Address;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 338
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 339
    :cond_0
    const/4 v2, 0x0

    .line 350
    :goto_0
    return-object v2

    .line 341
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 342
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 344
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 346
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;
    .locals 11
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 467
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 468
    :cond_0
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 507
    :goto_0
    return-object v6

    .line 471
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 473
    invoke-static {p0}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v6

    goto :goto_0

    .line 476
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 478
    .local v3, "length":I
    const/4 v5, 0x0

    .line 479
    .local v5, "pairStartIndex":I
    const/4 v4, 0x0

    .line 486
    .local v4, "pairEndIndex":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 488
    .local v1, "addressEndIndex":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 489
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 490
    if-ne v4, v8, :cond_3

    .line 491
    move v4, v3

    .line 494
    :cond_3
    if-eq v1, v8, :cond_4

    if-gt v4, v1, :cond_5

    .line 497
    :cond_4
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .local v0, "address":Lcom/kingsoft/emailcommon/mail/Address;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    add-int/lit8 v5, v4, 0x1

    .line 506
    goto :goto_1

    .line 499
    .end local v0    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_5
    new-instance v0, Lcom/kingsoft/emailcommon/mail/Address;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/kingsoft/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .restart local v0    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 507
    .end local v0    # "address":Lcom/kingsoft/emailcommon/mail/Address;
    :cond_6
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/kingsoft/emailcommon/mail/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public static unpackFirst(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Address;
    .locals 2
    .param p0, "packedList"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {p0}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    .line 448
    .local v0, "array":[Lcom/kingsoft/emailcommon/mail/Address;
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
    .line 431
    invoke-static {p0}, Lcom/kingsoft/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->toString([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 254
    instance-of v0, p1, Lcom/kingsoft/emailcommon/mail/Address;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/kingsoft/emailcommon/mail/Address;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 265
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
    .line 96
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public pack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "personal":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 527
    .end local v0    # "address":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "address":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 2
    .param p1, "personal"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 p1, 0x0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public toFriendly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    .line 400
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    const-string/jumbo v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingsoft/emailcommon/mail/Address;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/emailcommon/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
