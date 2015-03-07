.class public Lcom/kingsoft/email/jni/DESUtil;
.super Ljava/lang/Object;
.source "DESUtil.java"


# static fields
.field private static md5Chars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingsoft/email/jni/DESUtil;->md5Chars:[C

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

.method public static EncodedKeySpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v5, ""

    invoke-static {v5}, Lcom/kingsoft/email/jni/DESUtil;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "keyString":Ljava/lang/String;
    const-string/jumbo v0, "err"

    .line 96
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 98
    .local v1, "data_code":[B
    :try_start_0
    invoke-static {v1, v4}, Lcom/kingsoft/email/jni/DESCoder;->encrypt([BLjava/lang/String;)[B

    move-result-object v3

    .line 99
    .local v3, "inputData":[B
    invoke-static {v3}, Lcom/kingsoft/email/jni/DESCoder;->encryptBASE64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .end local v3    # "inputData":[B
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 135
    sget-object v2, Lcom/kingsoft/email/jni/DESUtil;->md5Chars:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 136
    .local v0, "c0":C
    sget-object v2, Lcom/kingsoft/email/jni/DESUtil;->md5Chars:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 137
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 122
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/kingsoft/email/jni/DESUtil;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 127
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 128
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 129
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcom/kingsoft/email/jni/DESUtil;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 16
    move-object v0, p0

    .line 18
    .local v0, "bac":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v7}, Lcom/kingsoft/email/jni/DESUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/email/jni/DESUtil;->getStringMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    .local v4, "mymd5":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/kingsoft/email/jni/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v5

    .line 21
    .local v5, "oriCodeArr":[B
    const-string/jumbo v6, ""

    invoke-static {v6}, Lcom/kingsoft/email/jni/DESUtil;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kingsoft/email/jni/DESCoder;->decrypt([BLjava/lang/String;)[B

    move-result-object v2

    .line 22
    .local v2, "deCodeArr":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bac":Ljava/lang/String;
    .local v1, "bac":Ljava/lang/String;
    move-object v0, v1

    .line 30
    .end local v1    # "bac":Ljava/lang/String;
    .end local v2    # "deCodeArr":[B
    .end local v4    # "mymd5":Ljava/lang/String;
    .end local v5    # "oriCodeArr":[B
    :goto_0
    return-object v1

    .restart local v0    # "bac":Ljava/lang/String;
    .restart local v4    # "mymd5":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .local v1, "bac":Ljava/lang/Object;
    goto :goto_0

    .line 26
    .end local v1    # "bac":Ljava/lang/Object;
    .end local v4    # "mymd5":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 28
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 30
    .restart local v1    # "bac":Ljava/lang/Object;
    goto :goto_0

    .end local v1    # "bac":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    move-object v1, v0

    .restart local v1    # "bac":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v0, ""

    .line 38
    .local v0, "bac":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 39
    .local v4, "oriCodeArr":[B
    const-string/jumbo v5, ""

    invoke-static {v5}, Lcom/kingsoft/email/jni/DESUtil;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingsoft/email/jni/DESCoder;->encrypt([BLjava/lang/String;)[B

    move-result-object v3

    .line 40
    .local v3, "enCodeArr":[B
    invoke-static {v3}, Lcom/kingsoft/email/jni/DESCoder;->encryptBASE64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 41
    .local v2, "enCode":Ljava/lang/String;
    move-object v0, v2

    .line 46
    .end local v2    # "enCode":Ljava/lang/String;
    .end local v3    # "enCodeArr":[B
    .end local v4    # "oriCodeArr":[B
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, ""

    .line 53
    .local v0, "bac":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v3}, Lcom/kingsoft/email/jni/DESUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/email/jni/DESUtil;->getStringMD5String(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBack(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "FoOPW1KM/tU="

    return-object v0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v0, "FoOPW1KM/tU="

    return-object v0
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getMd5Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getStringMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string/jumbo v9, "utf-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 147
    .local v0, "b1Data":[B
    :try_start_0
    const-string/jumbo v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 148
    .local v7, "md5Digest":Ljava/security/MessageDigest;
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 150
    .local v1, "b2Data":[B
    array-length v6, v1

    .line 151
    .local v6, "l":I
    shl-int/lit8 v9, v6, 0x1

    new-array v8, v9, [C

    .line 152
    .local v8, "out":[C
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    move v5, v4

    .end local v4    # "j":I
    .local v5, "j":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 153
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    sget-object v9, Lcom/kingsoft/email/jni/DESUtil;->md5Chars:[C

    aget-byte v10, v1, v3

    and-int/lit16 v10, v10, 0xf0

    ushr-int/lit8 v10, v10, 0x4

    aget-char v9, v9, v10

    aput-char v9, v8, v5

    .line 154
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .restart local v5    # "j":I
    sget-object v9, Lcom/kingsoft/email/jni/DESUtil;->md5Chars:[C

    aget-byte v10, v1, v3

    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v8, v4

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_0
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "b2Data":[B
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "l":I
    .end local v7    # "md5Digest":Ljava/security/MessageDigest;
    .end local v8    # "out":[C
    :goto_1
    return-object v9

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 162
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v0, "KSO_9527"

    return-object v0
.end method

.method public static getinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 83
    .line 84
    const-string/jumbo v0, ""

    return-object v0
.end method
