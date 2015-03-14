.class public Lcom/kingsoft/exchange/utility/SimpleIcsWriter;
.super Ljava/lang/Object;
.source "SimpleIcsWriter.java"


# static fields
.field private static final CHAR_MAX_BYTES_IN_UTF8:I = 0x4

.field private static final MAX_LINE_LENGTH:I = 0x4b


# instance fields
.field private final mOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    .line 33
    return-void
.end method

.method static escapeTextValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5c

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, "ch":C
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 142
    const-string/jumbo v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 145
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    .line 146
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 152
    .end local v0    # "ch":C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static quoteParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    const-string/jumbo v2, "\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/Utility;->fromUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 39
    const/4 v4, 0x0

    .line 40
    .local v4, "numBytes":I
    invoke-static {p1}, Lcom/kingsoft/emailcommon/utility/Utility;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 45
    .local v1, "b":B
    const/16 v5, 0x47

    if-le v4, v5, :cond_0

    invoke-static {v1}, Lcom/kingsoft/emailcommon/utility/Utility;->isFirstUtf8Byte(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    iget-object v5, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 48
    iget-object v5, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    iget-object v5, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    const/4 v4, 0x1

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "b":B
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    iget-object v5, p0, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    return-void
.end method

.method public writeTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string/jumbo v0, "CALSCALE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "METHOD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PRODID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VERSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CATEGORIES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CLASS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "COMMENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "DESCRIPTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LOCATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "RESOURCES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SUMMARY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TRANSP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TZID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "TZNAME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CONTACT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "RELATED-TO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "REQUEST-STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "X-LIC-LOCATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :cond_1
    invoke-static {p2}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->escapeTextValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/exchange/utility/SimpleIcsWriter;->writeLine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
