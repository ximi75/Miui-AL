.class public Lcom/kingsoft/email/mail/attachment/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/email/mail/attachment/MD5Util;->hexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "s":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 105
    .end local v1    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 98
    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    .local v0, "fin":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingsoft/email/mail/attachment/MD5Util;->getMD5(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fin":Ljava/io/FileInputStream;
    :goto_1
    move-object v2, v1

    .line 105
    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getMD5(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "fin"    # Ljava/io/InputStream;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 119
    const-string/jumbo v10, ""

    .line 146
    :goto_0
    return-object v10

    .line 123
    :cond_0
    :try_start_0
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 124
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 126
    .local v0, "arr":[B
    const/4 v6, -0x1

    .line 127
    .local v6, "len":I
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_1

    .line 129
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    .end local v0    # "arr":[B
    .end local v6    # "len":I
    .end local v7    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v10, 0x0

    goto :goto_0

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr":[B
    .restart local v6    # "len":I
    .restart local v7    # "md":Ljava/security/MessageDigest;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 132
    .local v9, "tmp":[B
    const/16 v10, 0x20

    new-array v8, v10, [C

    .line 133
    .local v8, "str":[C
    const/4 v4, 0x0

    .line 134
    .local v4, "k":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    :goto_2
    const/16 v10, 0x10

    if-ge v3, v10, :cond_2

    .line 136
    aget-byte v1, v9, v3

    .line 137
    .local v1, "byte0":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    sget-object v10, Lcom/kingsoft/email/mail/attachment/MD5Util;->hexDigits:[C

    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v8, v5

    .line 138
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "k":I
    .restart local v5    # "k":I
    sget-object v10, Lcom/kingsoft/email/mail/attachment/MD5Util;->hexDigits:[C

    and-int/lit8 v11, v1, 0xf

    aget-char v10, v10, v11

    aput-char v10, v8, v4

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 140
    .end local v1    # "byte0":B
    :cond_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/attachment/MD5Util;->getMD5([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "place"    # I

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kingsoft/email/mail/attachment/MD5Util;->getMD5([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMD5([BI)Ljava/lang/String;
    .locals 12
    .param p0, "source"    # [B
    .param p1, "place"    # I

    .prologue
    .line 59
    const/4 v6, 0x0

    .line 62
    .local v6, "s":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 63
    .local v5, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 64
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 65
    .local v9, "tmp":[B
    mul-int/lit8 v10, p1, 0x2

    new-array v8, v10, [C

    .line 66
    .local v8, "str":[C
    const/4 v3, 0x0

    .line 67
    .local v3, "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "k":I
    .local v4, "k":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 69
    aget-byte v0, v9, v2

    .line 70
    .local v0, "byte0":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    sget-object v10, Lcom/kingsoft/email/mail/attachment/MD5Util;->hexDigits:[C

    ushr-int/lit8 v11, v0, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    aput-char v10, v8, v4

    .line 71
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    sget-object v10, Lcom/kingsoft/email/mail/attachment/MD5Util;->hexDigits:[C

    and-int/lit8 v11, v0, 0xf

    aget-char v10, v10, v11

    aput-char v10, v8, v3

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "byte0":B
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "s":Ljava/lang/String;
    .local v7, "s":Ljava/lang/String;
    move-object v6, v7

    .line 79
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "str":[C
    .end local v9    # "tmp":[B
    .restart local v6    # "s":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 152
    const-string/jumbo v1, "/mnt/sdcard/KingsoftOffice/file/\u8bf4\u660e.doc"

    invoke-static {v1}, Lcom/kingsoft/email/mail/attachment/MD5Util;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "md5":Ljava/lang/String;
    return-void
.end method
