.class public Lcom/kingsoft/email/mail/attachment/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;,
        Lcom/kingsoft/email/mail/attachment/StringUtil$StringComparator;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HASH_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final HEX_DIGITS:[C

.field private static final ROOT_PATH:Ljava/lang/String; = "/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/StringUtil;->HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->bytesToHex([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHex([BZ)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "withSpaces"    # Z

    .prologue
    .line 538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-byte v1, v0, v2

    .line 541
    .local v1, "hashByte":B
    and-int/lit16 v3, v1, 0xff

    .line 542
    .local v3, "intVal":I
    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 544
    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    if-eqz p1, :cond_1

    .line 549
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "hashByte":B
    .end local v3    # "intVal":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 609
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Lcom/kingsoft/email/mail/attachment/StringUtil;->bytesToString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 611
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;

    const-string/jumbo v2, "UTF-8 not supported"

    invoke-direct {v1, v2, v0}, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static bytesToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "charSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 624
    if-nez p0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static createRandomKey(I)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # I

    .prologue
    .line 378
    const/16 v4, 0xa

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 379
    .local v0, "c":[C
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 380
    .local v2, "random":Ljava/util/Random;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 383
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    array-length v5, v0

    rem-int/2addr v4, v5

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 378
    nop

    :array_0
    .array-data 2
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
    .end array-data
.end method

.method public static getFileNameSubStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x2f

    .line 427
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 428
    const-string/jumbo v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 432
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 434
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileNameSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 690
    if-nez p0, :cond_0

    .line 691
    const-string/jumbo v1, ""

    .line 698
    :goto_0
    return-object v1

    .line 693
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 694
    .local v0, "pos":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 696
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 698
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getNameDelLastPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 276
    if-nez p0, :cond_1

    .line 285
    .end local p0    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 278
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->getPathLastIndex(Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "point":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 285
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getNamePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 236
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->getPathLastIndex(Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "point":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 238
    .local v0, "length":I
    if-ne v1, v4, :cond_1

    .line 263
    .end local p0    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 242
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_3

    .line 244
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Lcom/kingsoft/email/mail/attachment/StringUtil;->getPathLastIndex(Ljava/lang/String;I)I

    move-result v2

    .line 245
    .local v2, "secondPoint":I
    if-ne v2, v4, :cond_2

    .line 247
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 253
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 258
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 263
    .end local v2    # "secondPoint":I
    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getPathLastIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 300
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 301
    .local v0, "point":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 303
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 305
    :cond_0
    return v0
.end method

.method public static getPathLastIndex(Ljava/lang/String;I)I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .prologue
    .line 321
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 322
    .local v0, "point":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 324
    const/16 v1, 0x5c

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 326
    :cond_0
    return v0
.end method

.method public static hash(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    :try_start_0
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 654
    .local v1, "digest":Ljava/security/MessageDigest;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 656
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 658
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    .end local v0    # "buf":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 664
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;

    const-string/jumbo v5, "MD5 not supported"

    invoke-direct {v4, v5, v2}, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 660
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "buf":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "len":I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method public static hash(Ljava/lang/String;)[B
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hash([B)[B
    .locals 3
    .param p0, "body"    # [B

    .prologue
    .line 638
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;

    const-string/jumbo v2, "MD5 not supported"

    invoke-direct {v1, v2, v0}, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 565
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 567
    mul-int/lit8 v1, v0, 0x2

    .line 568
    .local v1, "offset":I
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    .end local v1    # "offset":I
    :cond_0
    return-object v2
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHave([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 35
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 41
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isStartWith([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 64
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static lowerCaseExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->stringByDeletingPathExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "strFileNameBody":Ljava/lang/String;
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->pathExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "strExt":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    return-object p0
.end method

.method public static mergeString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "seperator"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->mergeString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static mergeString([Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "seperator"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 110
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 120
    :cond_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 114
    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 481
    :try_start_0
    invoke-static {p0}, Lcom/kingsoft/email/mail/attachment/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 491
    :cond_0
    :goto_0
    return-object p0

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static pathExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 169
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 170
    .local v1, "point":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 171
    .local v0, "length":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_1

    .line 173
    :cond_0
    const-string/jumbo v2, ""

    .line 177
    :goto_0
    return-object v2

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string/jumbo v2, "[`~!@#$%^&*()+=|{}\':;\uff07,\\[\\].<>/?\uff5e\uff01\uff20\uff03\uffe5\uff05\u2026\u2026\uff06\uff0a\uff08\uff09\u2014\u2014\uff0b\uff5c\uff5b\uff5d\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 356
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 357
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 358
    .local v0, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 454
    .local v5, "tagLength":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "temp":[Ljava/lang/String;
    array-length v1, v6

    .line 457
    .local v1, "l":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 459
    add-int/lit8 v1, v1, -0x1

    .line 462
    :cond_0
    const/4 v2, 0x0

    .line 463
    .local v2, "position":I
    new-array v3, v1, [I

    .line 464
    .local v3, "positionarr":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 466
    aget-object v4, v6, v0

    .line 467
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v2, v7

    .line 468
    aput v2, v3, v0

    .line 469
    add-int/2addr v2, v5

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, p2, -0x1

    aget v7, v3, v7

    return v7
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "tokenedStr"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "ids":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 84
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 86
    .local v0, "arraySize":I
    if-lez v0, :cond_0

    .line 88
    new-array v3, v0, [Ljava/lang/String;

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "counter":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "counter":I
    .local v2, "counter":I
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    move v1, v2

    .end local v2    # "counter":I
    .restart local v1    # "counter":I
    goto :goto_0

    .line 96
    .end local v0    # "arraySize":I
    .end local v1    # "counter":I
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_0
    return-object v3
.end method

.method public static stringByAppendingPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strFolder"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringByAppendingPathExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "trimExt"    # Ljava/lang/String;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringByDeletingPathExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 197
    .end local p0    # "filename":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static stringFromSize(D)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # D

    .prologue
    .line 397
    const-wide/16 v8, 0x0

    cmpg-double v8, p0, v8

    if-gez v8, :cond_0

    .line 398
    const-string/jumbo v8, "-"

    .line 415
    :goto_0
    return-object v8

    .line 400
    :cond_0
    move-wide v0, p0

    .line 401
    .local v0, "B":D
    const-wide/high16 v8, 0x3ff0000000000000L

    cmpg-double v8, v0, v8

    if-gez v8, :cond_1

    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-lez v8, :cond_1

    .line 402
    const-wide/high16 v0, 0x3ff0000000000000L

    .line 403
    :cond_1
    const-wide/high16 v8, 0x4090000000000000L

    cmpg-double v8, v0, v8

    if-gez v8, :cond_2

    .line 404
    const-string/jumbo v8, "%.0f B"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/kingsoft/email/mail/attachment/StringUtil;->stringWithFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 406
    :cond_2
    const-wide/high16 v8, 0x4090000000000000L

    div-double v4, p0, v8

    .line 407
    .local v4, "K":D
    const-wide/high16 v8, 0x4090000000000000L

    cmpg-double v8, v4, v8

    if-gez v8, :cond_3

    .line 408
    const-string/jumbo v8, "%.1f KB"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/kingsoft/email/mail/attachment/StringUtil;->stringWithFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 410
    :cond_3
    const-wide/high16 v8, 0x4090000000000000L

    div-double v6, v4, v8

    .line 411
    .local v6, "M":D
    const-wide/high16 v8, 0x4090000000000000L

    cmpg-double v8, v6, v8

    if-gez v8, :cond_4

    .line 412
    const-string/jumbo v8, "%.1f MB"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/kingsoft/email/mail/attachment/StringUtil;->stringWithFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 414
    :cond_4
    const-wide/high16 v8, 0x4090000000000000L

    div-double v2, v6, v8

    .line 415
    .local v2, "G":D
    const-string/jumbo v8, "%.1f GB"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/kingsoft/email/mail/attachment/StringUtil;->stringWithFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 581
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Lcom/kingsoft/email/mail/attachment/StringUtil;->stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 583
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;

    const-string/jumbo v2, "UTF-8 not supported"

    invoke-direct {v1, v2, v0}, Lcom/kingsoft/email/mail/attachment/StringUtil$StringUtilException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 595
    if-nez p0, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 599
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs stringWithFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 124
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 125
    return-object p0
.end method

.method public static final toString([B)Ljava/lang/String;
    .locals 2
    .param p0, "ba"    # [B

    .prologue
    .line 331
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/mail/attachment/StringUtil;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toString([BII)Ljava/lang/String;
    .locals 8
    .param p0, "ba"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 336
    mul-int/lit8 v6, p2, 0x2

    new-array v0, v6, [C

    .line 337
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 339
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v6, p1, v2

    aget-byte v5, p0, v6

    .line 340
    .local v5, "k":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    sget-object v6, Lcom/kingsoft/email/mail/attachment/StringUtil;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v4

    .line 341
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    sget-object v6, Lcom/kingsoft/email/mail/attachment/StringUtil;->HEX_DIGITS:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 343
    .end local v5    # "k":I
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 707
    const-string/jumbo v0, ""

    .line 708
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    const-string/jumbo v1, "(^[ |\u3000]*|[ |\u3000]*$)"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 711
    const-string/jumbo v1, "\u3000"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    :cond_0
    return-object v0
.end method
