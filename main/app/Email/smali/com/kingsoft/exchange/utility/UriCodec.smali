.class public abstract Lcom/kingsoft/exchange/utility/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "isPartiallyEncoded"    # Z

    .prologue
    const/16 v5, 0x25

    const/4 v4, -0x1

    .line 115
    if-nez p2, :cond_0

    .line 116
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 119
    :cond_0
    const/4 v1, -0x1

    .line 120
    .local v1, "escapeStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 122
    .local v0, "c":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/utility/UriCodec;->isRetained(C)Z

    move-result v3

    if-nez v3, :cond_4

    if-ne v0, v5, :cond_9

    if-eqz p4, :cond_9

    .line 127
    :cond_4
    if-eq v1, v4, :cond_5

    .line 128
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Lcom/kingsoft/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 129
    const/4 v1, -0x1

    .line 131
    :cond_5
    if-ne v0, v5, :cond_7

    if-eqz p4, :cond_7

    .line 133
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v2, v2, 0x2

    .line 120
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_7
    const/16 v3, 0x20

    if-ne v0, v3, :cond_8

    .line 136
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    :cond_9
    if-ne v1, v4, :cond_6

    .line 141
    move v1, v2

    goto :goto_1

    .line 144
    .end local v0    # "c":C
    :cond_a
    if-eq v1, v4, :cond_b

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Lcom/kingsoft/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 147
    :cond_b
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B

    .prologue
    .line 230
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {p1}, Lcom/kingsoft/exchange/utility/Misc;->byteToHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 225
    .local v1, "b":B
    invoke-static {p0, v1}, Lcom/kingsoft/exchange/utility/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "b":B
    :cond_0
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    sget-object v1, Lcom/kingsoft/exchange/utility/Misc;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, v1}, Lcom/kingsoft/exchange/utility/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "convertPlus"    # Z
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/16 v10, 0x2b

    const/16 v9, 0x25

    const/4 v8, -0x1

    .line 168
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 200
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 172
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 173
    .local v5, "result":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 175
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 176
    .local v0, "c":C
    if-ne v0, v9, :cond_7

    .line 178
    :cond_2
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 179
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Incomplete % sequence at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    :cond_3
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/exchange/utility/UriCodec;->hexToInt(C)I

    move-result v1

    .line 182
    .local v1, "d1":I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/exchange/utility/UriCodec;->hexToInt(C)I

    move-result v2

    .line 183
    .local v2, "d2":I
    if-eq v1, v8, :cond_4

    if-ne v2, v8, :cond_5

    .line 184
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid % sequence "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 187
    :cond_5
    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    add-int/lit8 v3, v3, 0x3

    .line 189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_2

    .line 190
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_1

    .line 193
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :cond_7
    if-eqz p1, :cond_8

    if-ne v0, v10, :cond_8

    .line 194
    const/16 v0, 0x20

    .line 196
    :cond_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 200
    .end local v0    # "c":C
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static hexToInt(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 208
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 209
    add-int/lit8 v0, p0, -0x30

    .line 215
    :goto_0
    return v0

    .line 210
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 211
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 212
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 213
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "legal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 96
    .local v0, "ch":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_3

    .line 100
    new-instance v2, Ljava/net/URISyntaxException;

    const-string/jumbo v3, "Illegal character"

    invoke-direct {v2, p0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 94
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "ch":C
    :cond_4
    return-void
.end method


# virtual methods
.method public final appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/kingsoft/exchange/utility/Misc;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingsoft/exchange/utility/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 158
    return-void
.end method

.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lcom/kingsoft/exchange/utility/Misc;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingsoft/exchange/utility/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 162
    return-void
.end method

.method public final encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/kingsoft/exchange/utility/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract isRetained(C)Z
.end method

.method public final validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 63
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_9

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "ch":C
    const/16 v4, 0x61

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3

    :cond_0
    const/16 v4, 0x41

    if-lt v0, v4, :cond_1

    const/16 v4, 0x5a

    if-le v0, v4, :cond_3

    :cond_1
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-le v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/utility/UriCodec;->isRetained(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 69
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_4
    const/16 v4, 0x25

    if-ne v0, v4, :cond_8

    .line 71
    add-int/lit8 v4, v3, 0x2

    if-lt v4, p3, :cond_5

    .line 72
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Incomplete % sequence in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 74
    :cond_5
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/kingsoft/exchange/utility/UriCodec;->hexToInt(C)I

    move-result v1

    .line 75
    .local v1, "d1":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/kingsoft/exchange/utility/UriCodec;->hexToInt(C)I

    move-result v2

    .line 76
    .local v2, "d2":I
    if-eq v1, v5, :cond_6

    if-ne v2, v5, :cond_7

    .line 77
    :cond_6
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid % sequence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 80
    :cond_7
    add-int/lit8 v3, v3, 0x3

    .line 81
    goto/16 :goto_0

    .line 82
    .end local v1    # "d1":I
    .end local v2    # "d2":I
    :cond_8
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal character in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 85
    .end local v0    # "ch":C
    :cond_9
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
