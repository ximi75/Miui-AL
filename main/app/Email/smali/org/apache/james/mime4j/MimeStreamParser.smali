.class public Lorg/apache/james/mime4j/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# static fields
.field private static fieldChars:Ljava/util/BitSet;

.field private static final log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private bodyDescriptors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/james/mime4j/BodyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lorg/apache/james/mime4j/ContentHandler;

.field private prematureEof:Z

.field private raw:Z

.field private rootStream:Lorg/apache/james/mime4j/RootInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-class v1, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-static {v1}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    .line 61
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 70
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    sput-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 71
    const/16 v0, 0x21

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 72
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 75
    sget-object v1, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v2, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    .line 65
    iput-object v2, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 66
    iput-boolean v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    .line 67
    iput-boolean v1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->prematureEof:Z

    .line 83
    return-void
.end method

.method public static extractCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 232
    .local v3, "start":I
    if-eq v3, v7, :cond_2

    .line 233
    const/16 v5, 0xa

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 234
    .local v1, "end":I
    if-eq v1, v7, :cond_1

    .line 235
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 243
    :goto_0
    const-string/jumbo v5, "charset"

    invoke-static {p0, v5}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 245
    const/16 v5, 0x5c

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 246
    .local v2, "index":I
    if-ne v2, v7, :cond_3

    .line 247
    :goto_1
    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 248
    const-string/jumbo v5, "\""

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 255
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "end":I
    .end local v2    # "index":I
    :goto_2
    return-object v0

    .line 237
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v1    # "end":I
    :cond_2
    move-object v0, v4

    .line 240
    goto :goto_2

    .line 246
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v1    # "end":I
    .restart local v2    # "index":I
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v2    # "index":I
    :cond_4
    move-object v0, v4

    .line 255
    goto :goto_2
.end method

.method private parseBodyPart(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startBodyPart()V

    .line 222
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 223
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endBodyPart()V

    goto :goto_0
.end method

.method private parseEntity(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;

    move-result-object v0

    .line 147
    .local v0, "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 150
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v3, v0}, Lorg/apache/james/mime4j/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 152
    new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 154
    .local v2, "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, v2}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->preamble(Ljava/io/InputStream;)V

    .line 155
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 157
    :cond_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->hasMoreParts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v2, Lorg/apache/james/mime4j/MimeBoundaryInputStream;

    .end local v2    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 159
    .restart local v2    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/MimeStreamParser;->parseBodyPart(Ljava/io/InputStream;)V

    .line 160
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->consume()V

    .line 161
    invoke-virtual {v2}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parentEOF()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->prematureEof:Z

    .line 173
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    .line 175
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/ContentHandler;->endMultipart()V

    .line 177
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 199
    .end local v2    # "tempIs":Lorg/apache/james/mime4j/MimeBoundaryInputStream;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 201
    return-void

    .line 179
    :cond_3
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 180
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isBase64Encoded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    const-string/jumbo v4, "base64 encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 182
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v3, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p1, v1

    .line 189
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 191
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 185
    sget-object v3, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    const-string/jumbo v4, "quoted-printable encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 186
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    new-instance v3, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    move-object p1, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 193
    :cond_6
    iget-object v3, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v4, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v0, v4}, Lorg/apache/james/mime4j/ContentHandler;->body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private parseHeader(Ljava/io/InputStream;)Lorg/apache/james/mime4j/BodyDescriptor;
    .locals 22
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v3, Lorg/apache/james/mime4j/BodyDescriptor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 269
    .local v3, "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/james/mime4j/ContentHandler;->startHeader()V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/james/mime4j/RootInputStream;->getLineNumber()I

    move-result v12

    .line 272
    .local v12, "lineNumber":I
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    .local v15, "sb":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 275
    .local v6, "curr":I
    const/4 v14, 0x0

    .line 276
    .local v14, "prev":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_1

    .line 277
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v6, v0, :cond_3

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v14, v0, :cond_0

    if-nez v14, :cond_3

    .line 281
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 294
    :cond_1
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/james/mime4j/MimeStreamParser;->extractCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "charset":Ljava/lang/String;
    const/4 v7, 0x0

    .line 296
    .local v7, "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    const/16 v16, 0x0

    .line 297
    .local v16, "start":I
    const/4 v13, 0x0

    .line 298
    .local v13, "pos":I
    move/from16 v17, v12

    .line 299
    .local v17, "startLineNumber":I
    :goto_2
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_12

    .line 300
    :goto_3
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 301
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 266
    .end local v3    # "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    .end local v4    # "charset":Ljava/lang/String;
    .end local v6    # "curr":I
    .end local v7    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .end local v12    # "lineNumber":I
    .end local v13    # "pos":I
    .end local v14    # "prev":I
    .end local v15    # "sb":Ljava/lang/StringBuffer;
    .end local v16    # "start":I
    .end local v17    # "startLineNumber":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/james/mime4j/BodyDescriptor;

    goto :goto_0

    .line 284
    .restart local v3    # "bd":Lorg/apache/james/mime4j/BodyDescriptor;
    .restart local v6    # "curr":I
    .restart local v12    # "lineNumber":I
    .restart local v14    # "prev":I
    .restart local v15    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    int-to-char v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v6, v0, :cond_4

    :goto_4
    goto :goto_1

    :cond_4
    move v14, v6

    goto :goto_4

    .line 303
    .restart local v4    # "charset":Ljava/lang/String;
    .restart local v7    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v13    # "pos":I
    .restart local v16    # "start":I
    .restart local v17    # "startLineNumber":I
    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 304
    add-int/lit8 v13, v13, 0x1

    .line 305
    goto :goto_2

    .line 308
    :cond_6
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    if-ge v13, v0, :cond_7

    sget-object v19, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    add-int/lit8 v20, v13, 0x2

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/BitSet;->get(I)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 316
    :cond_7
    const-string/jumbo v8, ""

    .line 317
    .local v8, "field":Ljava/lang/String;
    sub-int v19, v13, v16

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    new-array v2, v0, [B

    .line 318
    .local v2, "array":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    sub-int v19, v13, v16

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    if-ge v10, v0, :cond_8

    add-int v19, v16, v10

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 319
    add-int v19, v16, v10

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v2, v10

    .line 318
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 320
    :cond_8
    if-nez v4, :cond_10

    .line 321
    if-nez v7, :cond_e

    .line 322
    new-instance v7, Lcom/kingsoft/emailcommon/utility/CharsetDetector;

    .end local v7    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    invoke-direct {v7}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;-><init>()V

    .line 326
    .restart local v7    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    :goto_6
    array-length v0, v2

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v2, v0}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->consume([BI)V

    .line 327
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->getCharset()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "charsetGuess":Ljava/lang/String;
    if-eqz v5, :cond_f

    const-string/jumbo v19, "ASCII"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 329
    move-object v4, v5

    .line 333
    :cond_9
    :goto_7
    new-instance v8, Ljava/lang/String;

    .end local v8    # "field":Ljava/lang/String;
    invoke-direct {v8, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 338
    .end local v5    # "charsetGuess":Ljava/lang/String;
    .restart local v8    # "field":Ljava/lang/String;
    :goto_8
    add-int/lit8 v16, v13, 0x2

    .line 343
    const/16 v19, 0x3a

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 344
    .local v11, "index":I
    const/16 v18, 0x0

    .line 345
    .local v18, "valid":Z
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_b

    sget-object v19, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/BitSet;->get(I)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 346
    const/16 v18, 0x1

    .line 347
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "fieldName":Ljava/lang/String;
    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_a

    .line 349
    sget-object v19, Lorg/apache/james/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/BitSet;->get(I)Z

    move-result v19

    if-nez v19, :cond_11

    .line 350
    const/16 v18, 0x0

    .line 355
    :cond_a
    if-eqz v18, :cond_b

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lorg/apache/james/mime4j/ContentHandler;->field(Ljava/lang/String;)V

    .line 357
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v9, v0}, Lorg/apache/james/mime4j/BodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v9    # "fieldName":Ljava/lang/String;
    :cond_b
    if-nez v18, :cond_c

    sget-object v19, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 362
    sget-object v19, Lorg/apache/james/mime4j/MimeStreamParser;->log:Lorg/apache/james/mime4j/Log;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Line "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": Ignoring invalid field: \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 366
    :cond_c
    move/from16 v17, v12

    .line 369
    .end local v2    # "array":[B
    .end local v8    # "field":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v18    # "valid":Z
    :cond_d
    add-int/lit8 v13, v13, 0x2

    .line 370
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 324
    .restart local v2    # "array":[B
    .restart local v8    # "field":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_e
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->reset()V

    goto/16 :goto_6

    .line 330
    .restart local v5    # "charsetGuess":Ljava/lang/String;
    :cond_f
    if-nez v5, :cond_9

    .line 331
    const-string/jumbo v5, "GB18030"

    goto/16 :goto_7

    .line 335
    .end local v5    # "charsetGuess":Ljava/lang/String;
    :cond_10
    new-instance v8, Ljava/lang/String;

    .end local v8    # "field":Ljava/lang/String;
    invoke-direct {v8, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v8    # "field":Ljava/lang/String;
    goto/16 :goto_8

    .line 348
    .restart local v9    # "fieldName":Ljava/lang/String;
    .restart local v11    # "index":I
    .restart local v18    # "valid":Z
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 373
    .end local v2    # "array":[B
    .end local v8    # "field":Ljava/lang/String;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v18    # "valid":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/james/mime4j/ContentHandler;->endHeader()V

    .line 375
    return-object v3
.end method

.method private parseMessage(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    new-instance v1, Lorg/apache/james/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->startMessage()V

    .line 208
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 209
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    invoke-interface {v0}, Lorg/apache/james/mime4j/ContentHandler;->endMessage()V

    goto :goto_0
.end method


# virtual methods
.method public getPrematureEof()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->prematureEof:Z

    return v0
.end method

.method public isRaw()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/RootInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    .line 93
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 94
    return-void
.end method

.method public setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V
    .locals 0
    .param p1, "h"    # Lorg/apache/james/mime4j/ContentHandler;

    .prologue
    .line 385
    iput-object p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->handler:Lorg/apache/james/mime4j/ContentHandler;

    .line 386
    return-void
.end method

.method public setRaw(Z)V
    .locals 0
    .param p1, "raw"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/apache/james/mime4j/MimeStreamParser;->raw:Z

    .line 119
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeStreamParser;->rootStream:Lorg/apache/james/mime4j/RootInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/RootInputStream;->truncate()V

    .line 135
    return-void
.end method
