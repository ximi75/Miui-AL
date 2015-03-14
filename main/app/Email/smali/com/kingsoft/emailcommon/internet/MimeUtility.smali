.class public Lcom/kingsoft/emailcommon/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "GB18030"

.field private static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static final MIME_TYPE_RFC822:Ljava/lang/String; = "message/rfc822"

.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .param p0, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Part;>;"
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "disposition":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v5, v15}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "dispositionType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "inline"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_0
    const/4 v10, 0x1

    .line 441
    .local v10, "inline":Z
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "image/tiff"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 442
    const-string/jumbo v15, "Email"

    const-string/jumbo v16, "unsupported inline format, MimeType : %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 443
    const/4 v10, 0x0

    .line 447
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 449
    .local v12, "mimeType":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, "contentType":Ljava/lang/String;
    const-string/jumbo v15, "name"

    invoke-static {v4, v15}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 451
    .local v14, "name":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 452
    invoke-static {v5}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "contentDisposition":Ljava/lang/String;
    const-string/jumbo v15, "filename"

    invoke-static {v3, v15}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 456
    .end local v3    # "contentDisposition":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 458
    .local v9, "inferedMime":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v15

    instance-of v15, v15, Lcom/kingsoft/emailcommon/mail/Multipart;

    if-eqz v15, :cond_7

    .line 462
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v13

    check-cast v13, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    .line 463
    .local v13, "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    const/4 v7, 0x0

    .line 464
    .local v7, "foundHtml":Z
    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->getSubTypeForTest()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "alternative"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 465
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->getCount()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 466
    invoke-virtual {v13, v8}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->getBodyPart(I)Lcom/kingsoft/emailcommon/mail/BodyPart;

    move-result-object v15

    const-string/jumbo v16, "text/html"

    invoke-virtual/range {v15 .. v16}, Lcom/kingsoft/emailcommon/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 467
    const/4 v7, 0x1

    .line 472
    .end local v8    # "i":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->getCount()I

    move-result v15

    if-ge v8, v15, :cond_8

    .line 474
    invoke-virtual {v13, v8}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->getBodyPart(I)Lcom/kingsoft/emailcommon/mail/BodyPart;

    move-result-object v2

    .line 476
    .local v2, "bp":Lcom/kingsoft/emailcommon/mail/BodyPart;
    if-eqz v7, :cond_6

    const-string/jumbo v15, "text/plain"

    invoke-virtual {v2, v15}, Lcom/kingsoft/emailcommon/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 472
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 438
    .end local v2    # "bp":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v7    # "foundHtml":Z
    .end local v8    # "i":I
    .end local v9    # "inferedMime":Ljava/lang/String;
    .end local v10    # "inline":Z
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    .end local v14    # "name":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 465
    .restart local v4    # "contentType":Ljava/lang/String;
    .restart local v7    # "foundHtml":Z
    .restart local v8    # "i":I
    .restart local v9    # "inferedMime":Ljava/lang/String;
    .restart local v10    # "inline":Z
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v13    # "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    .restart local v14    # "name":Ljava/lang/String;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 479
    .restart local v2    # "bp":Lcom/kingsoft/emailcommon/mail/BodyPart;
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 481
    .end local v2    # "bp":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .end local v7    # "foundHtml":Z
    .end local v8    # "i":I
    .end local v13    # "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    :cond_7
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v15

    instance-of v15, v15, Lcom/kingsoft/emailcommon/mail/Message;

    if-eqz v15, :cond_9

    .line 484
    invoke-interface/range {p0 .. p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/emailcommon/mail/Message;

    .line 485
    .local v11, "message":Lcom/kingsoft/emailcommon/mail/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v11, v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->collectParts(Lcom/kingsoft/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 498
    .end local v11    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    :cond_8
    :goto_4
    return-void

    .line 486
    :cond_9
    if-eqz v10, :cond_c

    const-string/jumbo v15, "text"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string/jumbo v15, "text/rfc822-headers"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    const-string/jumbo v15, "image"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "image"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 491
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 492
    :cond_c
    const-string/jumbo v15, "message/delivery"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string/jumbo v15, "text/rfc822-headers"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 496
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Body;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {p0, p1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 408
    new-instance v1, Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v1}, Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 409
    .local v1, "tempBody":Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 411
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Landroid/util/Base64DataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 419
    :goto_0
    return-object v1

    .line 412
    :catch_0
    move-exception v2

    .line 417
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method public static findFirstPartByMimeType(Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Part;
    .locals 6
    .param p0, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v5

    instance-of v5, v5, Lcom/kingsoft/emailcommon/mail/Multipart;

    if-eqz v5, :cond_1

    .line 229
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v3

    check-cast v3, Lcom/kingsoft/emailcommon/mail/Multipart;

    .line 230
    .local v3, "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/Multipart;->getCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 231
    invoke-virtual {v3, v2}, Lcom/kingsoft/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/kingsoft/emailcommon/mail/BodyPart;

    move-result-object v0

    .line 232
    .local v0, "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->findFirstPartByMimeType(Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Part;

    move-result-object v4

    .line 233
    .local v4, "ret":Lcom/kingsoft/emailcommon/mail/Part;
    if-eqz v4, :cond_0

    .line 241
    .end local v0    # "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    .end local v4    # "ret":Lcom/kingsoft/emailcommon/mail/Part;
    :goto_1
    return-object v4

    .line 230
    .restart local v0    # "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    .restart local v4    # "ret":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    .end local v4    # "ret":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 239
    goto :goto_1

    .line 241
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findPartByContentId(Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Part;
    .locals 7
    .param p0, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p1, "contentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 245
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/kingsoft/emailcommon/mail/Multipart;

    if-eqz v6, :cond_1

    .line 246
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/emailcommon/mail/Multipart;

    .line 247
    .local v4, "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v4}, Lcom/kingsoft/emailcommon/mail/Multipart;->getCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 248
    invoke-virtual {v4, v3}, Lcom/kingsoft/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/kingsoft/emailcommon/mail/BodyPart;

    move-result-object v0

    .line 249
    .local v0, "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->findPartByContentId(Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Part;

    move-result-object v5

    .line 250
    .local v5, "ret":Lcom/kingsoft/emailcommon/mail/Part;
    if-eqz v5, :cond_0

    .line 259
    .end local v0    # "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    .end local v5    # "ret":Lcom/kingsoft/emailcommon/mail/Part;
    :goto_1
    return-object v5

    .line 247
    .restart local v0    # "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    .restart local v5    # "ret":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "bodyPart":Lcom/kingsoft/emailcommon/mail/BodyPart;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    .end local v5    # "ret":Lcom/kingsoft/emailcommon/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "cid":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, p0

    .line 257
    goto :goto_1

    .line 259
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 138
    const/16 v2, 0x4c

    .line 140
    .local v2, "maxCharacters":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 141
    .local v1, "length":I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    .line 151
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 144
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v4, "sb":Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 147
    .local v0, "lastLineBreak":I
    invoke-static {p0, v7}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 149
    .local v5, "wspIdx":I
    :goto_1
    if-ne v5, v1, :cond_1

    .line 150
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 154
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, "nextWspIdx":I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 157
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    move v0, v5

    .line 162
    :cond_2
    move v5, v3

    .line 163
    goto :goto_1
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "usedCharacters"    # I

    .prologue
    .line 112
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "encoded":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 201
    if-nez p0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v4

    .line 204
    :cond_1
    invoke-static {p0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "parts":[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 206
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "lowerCaseName":Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 210
    .local v6, "part":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 211
    const-string/jumbo v8, "="

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "parameterParts":[Ljava/lang/String;
    array-length v8, v5

    if-lt v8, v11, :cond_0

    .line 215
    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "parameter":Ljava/lang/String;
    const-string/jumbo v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 209
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v5    # "parameterParts":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 389
    const-string/jumbo v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    move-object p0, v0

    .line 396
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 392
    :cond_1
    const-string/jumbo v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    move-object p0, v0

    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "in":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/kingsoft/emailcommon/mail/Part;)Ljava/lang/String;
    .locals 15
    .param p0, "part"    # Lcom/kingsoft/emailcommon/mail/Part;

    .prologue
    const/4 v13, -0x1

    const/4 v14, 0x0

    .line 271
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 272
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v11

    invoke-interface {v11}, Lcom/kingsoft/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 273
    .local v4, "in":Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "mimeType":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string/jumbo v11, "text/*"

    invoke-static {v6, v11}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 278
    invoke-interface {p0}, Lcom/kingsoft/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "charset"

    invoke-static {v11, v12}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "charset":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 280
    const/16 v11, 0x5c

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 281
    .local v5, "index":I
    if-ne v5, v13, :cond_3

    .line 282
    :goto_0
    const/16 v11, 0x22

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v13, :cond_0

    .line 283
    const-string/jumbo v11, "\""

    const-string/jumbo v12, ""

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    :cond_0
    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .end local v5    # "index":I
    :cond_1
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    if-nez v1, :cond_6

    .line 296
    new-instance v2, Lcom/kingsoft/emailcommon/utility/CharsetDetector;

    invoke-direct {v2}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;-><init>()V

    .line 297
    .local v2, "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 299
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "n":I
    if-eq v13, v7, :cond_4

    .line 300
    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 301
    invoke-virtual {v2, v0, v7}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->consume([BI)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 328
    .end local v0    # "buffer":[B
    .end local v1    # "charset":Ljava/lang/String;
    .end local v2    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "n":I
    .end local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v8

    .line 333
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v11, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to getTextFromPart "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_2
    const/4 v10, 0x0

    :goto_3
    return-object v10

    .line 281
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "index":I
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 303
    .end local v5    # "index":I
    .restart local v0    # "buffer":[B
    .restart local v2    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v7    # "n":I
    .restart local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_4
    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->getCharset()Ljava/lang/String;

    move-result-object v1

    .line 307
    .end local v0    # "buffer":[B
    .end local v2    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .end local v7    # "n":I
    :goto_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 308
    const/4 v4, 0x0

    .line 314
    if-nez v1, :cond_5

    .line 315
    const-string/jumbo v1, "GB18030"

    .line 321
    :cond_5
    invoke-virtual {v9, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "result":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 335
    .end local v1    # "charset":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 340
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "Email"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to getTextFromPart "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 305
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :try_start_2
    invoke-static {v4, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "fromIndex"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 174
    .local v2, "len":I
    move v1, p1

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 176
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    .line 179
    .end local v0    # "c":C
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 174
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_2
    move v1, v2

    .line 179
    goto :goto_1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string/jumbo v1, "\\*"

    const-string/jumbo v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 356
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # [Ljava/lang/String;

    .prologue
    .line 369
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 370
    .local v3, "matchType":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    const/4 v4, 0x1

    .line 374
    .end local v3    # "matchType":Ljava/lang/String;
    :goto_1
    return v4

    .line 369
    .restart local v3    # "matchType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v3    # "matchType":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p0, :cond_1

    .line 66
    const/4 p0, 0x0

    .line 73
    .local v0, "patternMatcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object p0

    .line 68
    .end local v0    # "patternMatcher":Ljava/util/regex/Matcher;
    :cond_1
    sget-object v1, Lcom/kingsoft/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 69
    .restart local v0    # "patternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 71
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
