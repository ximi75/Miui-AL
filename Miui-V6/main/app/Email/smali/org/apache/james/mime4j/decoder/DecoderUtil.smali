.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/decoder/DecoderUtil$1;,
        Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method private static concatBytes(Ljava/util/ArrayList;I)[B
    .locals 6
    .param p1, "byteTotalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)[B"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "bytesAL":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-array v0, p1, [B

    .line 345
    .local v0, "dst":[B
    const/4 v1, 0x0

    .line 346
    .local v1, "dstPos":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 347
    .local v3, "src":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    array-length v4, v3

    add-int/2addr v1, v4

    .line 349
    goto :goto_0

    .line 350
    .end local v3    # "src":[B
    :cond_0
    return-object v0
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 85
    .local v2, "bytes":[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v4, "is":Lorg/apache/james/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 89
    .local v0, "b":I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 90
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "is":Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 101
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 93
    .restart local v0    # "b":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "is":Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 55
    .local v2, "bytes":[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    .local v4, "is":Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 59
    .local v0, "b":I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 60
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "is":Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 70
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 62
    .restart local v0    # "b":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "is":Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 176
    .end local p0    # "body":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 171
    .restart local p0    # "body":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->splitEncodedWords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, "ews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 174
    invoke-static {v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->getDecodedWords(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encodedWord"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 139
    .local v0, "c":C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 140
    const-string/jumbo v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 146
    .end local v0    # "c":C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private static decodeToBytes(Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;)[B
    .locals 5
    .param p0, "ew"    # Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;

    .prologue
    .line 318
    const-string/jumbo v3, "Q"

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    .local v2, "tem":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 321
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 322
    .local v0, "c":C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 323
    const-string/jumbo v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 329
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v3

    .line 336
    .end local v1    # "i":I
    .end local v2    # "tem":Ljava/lang/StringBuffer;
    :goto_2
    return-object v3

    .line 332
    :cond_2
    const-string/jumbo v3, "B"

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_2

    .line 336
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static getDecodedWords(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "ews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 267
    .local v4, "preCharset":Ljava/lang/String;
    const/4 v7, 0x0

    .line 268
    .local v7, "preEncoding":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v6, "preDecodedBytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .line 271
    .local v5, "preDecodedByteCount":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;

    .line 272
    .local v2, "ew":Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
    iget-object v9, v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->charset:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->charset:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encoding:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encoding:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 274
    :cond_0
    if-lez v5, :cond_1

    .line 275
    invoke-static {v6, v5}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->concatBytes(Ljava/util/ArrayList;I)[B

    move-result-object v0

    .line 277
    .local v0, "bs":[B
    :try_start_0
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 282
    const/4 v5, 0x0

    .line 284
    .end local v0    # "bs":[B
    :cond_1
    iget-object v4, v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->charset:Ljava/lang/String;

    .line 285
    iget-object v7, v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encoding:Ljava/lang/String;

    .line 288
    :cond_2
    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeToBytes(Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;)[B

    move-result-object v0

    .line 289
    .restart local v0    # "bs":[B
    if-nez v0, :cond_3

    .line 290
    iget-object v9, v2, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 292
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    array-length v9, v0

    add-int/2addr v5, v9

    goto :goto_0

    .line 297
    .end local v0    # "bs":[B
    .end local v2    # "ew":Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
    :cond_4
    if-lez v5, :cond_5

    .line 298
    invoke-static {v6, v5}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->concatBytes(Ljava/util/ArrayList;I)[B

    move-result-object v0

    .line 300
    .restart local v0    # "bs":[B
    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 305
    const/4 v5, 0x0

    .line 308
    .end local v0    # "bs":[B
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 301
    .restart local v0    # "bs":[B
    :catch_1
    move-exception v1

    .line 302
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private static recordEncodedWord(Ljava/lang/String;IILorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;)Z
    .locals 7
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "ew"    # Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;

    .prologue
    const/16 v6, 0x3f

    const/4 v4, 0x0

    .line 235
    add-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 236
    .local v2, "qm1":I
    add-int/lit8 v5, p2, -0x2

    if-ne v2, v5, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v4

    .line 239
    :cond_1
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 240
    .local v3, "qm2":I
    add-int/lit8 v5, p2, -0x2

    if-eq v3, v5, :cond_0

    .line 243
    add-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "encoding":Ljava/lang/String;
    const-string/jumbo v5, "Q"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "B"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    :cond_2
    iput-object v0, p3, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->charset:Ljava/lang/String;

    .line 251
    iput-object v1, p3, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encoding:Ljava/lang/String;

    .line 252
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, p2, -0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    .line 253
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static splitEncodedWords(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "encodedWords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v6, 0x0

    .line 185
    .local v6, "previousEnd":I
    const/4 v7, 0x0

    .line 186
    .local v7, "previousWasRecorded":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v4, "ews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;>;"
    :goto_0
    const-string/jumbo v12, "=?"

    invoke-virtual {p0, v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, "begin":I
    add-int/lit8 v2, v0, 0x2

    .line 191
    .local v2, "endScan":I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_0

    .line 192
    const/16 v12, 0x3f

    add-int/lit8 v13, v2, 0x2

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 193
    .local v8, "qm1":I
    const/16 v12, 0x3f

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 194
    .local v9, "qm2":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_0

    .line 195
    add-int/lit8 v2, v9, 0x1

    .line 199
    .end local v8    # "qm1":I
    .end local v9    # "qm2":I
    :cond_0
    const/4 v12, -0x1

    if-ne v0, v12, :cond_2

    const/4 v1, -0x1

    .line 200
    .local v1, "end":I
    :goto_1
    const/4 v12, -0x1

    if-ne v1, v12, :cond_3

    .line 201
    if-lez v6, :cond_1

    .line 202
    new-instance v3, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;

    const/4 v12, 0x0

    invoke-direct {v3, v12}, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;-><init>(Lorg/apache/james/mime4j/decoder/DecoderUtil$1;)V

    .line 203
    .local v3, "ew":Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    .line 204
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v3    # "ew":Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
    :cond_1
    return-object v4

    .line 199
    .end local v1    # "end":I
    :cond_2
    const-string/jumbo v12, "?="

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 208
    .restart local v1    # "end":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    .line 210
    new-instance v3, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;

    const/4 v12, 0x0

    invoke-direct {v3, v12}, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;-><init>(Lorg/apache/james/mime4j/decoder/DecoderUtil$1;)V

    .line 211
    .restart local v3    # "ew":Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
    invoke-static {p0, v0, v1, v3}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->recordEncodedWord(Ljava/lang/String;IILorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;)Z

    move-result v5

    .line 212
    .local v5, "isRecorded":Z
    if-nez v5, :cond_5

    .line 213
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    .line 222
    :cond_4
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    move v6, v1

    .line 225
    move v7, v5

    .line 226
    goto :goto_0

    .line 215
    :cond_5
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, "sep":Ljava/lang/String;
    if-eqz v7, :cond_6

    invoke-static {v10}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 217
    :cond_6
    new-instance v11, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;-><init>(Lorg/apache/james/mime4j/decoder/DecoderUtil$1;)V

    .line 218
    .local v11, "temEW":Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;
    iput-object v10, v11, Lorg/apache/james/mime4j/decoder/DecoderUtil$EncodedWord;->encodedText:Ljava/lang/String;

    .line 219
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
