.class public Lcom/kingsoft/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field private static final BODY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BODY_PATTERN_GROUP:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final INDEX_BODY_HTML:I = 0x1

.field private static final INDEX_BODY_TEXT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Email"

.field static sBoundaryDigit:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 70
    const-string/jumbo v0, "(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;Z)[Ljava/lang/String;
    .locals 5
    .param p0, "body"    # Lcom/android/emailcommon/provider/EmailContent$Body;
    .param p1, "useSmartReply"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    if-nez p0, :cond_1

    .line 101
    new-array v0, v2, [Ljava/lang/String;

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 104
    .local v0, "messageBody":[Ljava/lang/String;
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuotedTextStartPos:I

    .line 105
    .local v1, "pos":I
    if-eqz p1, :cond_0

    if-lez v1, :cond_0

    .line 106
    aget-object v2, v0, v3

    if-eqz v2, :cond_2

    .line 107
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 108
    aget-object v2, v0, v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    .line 110
    :cond_2
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    .line 111
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    aget-object v2, v0, v4

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method static getHtmlBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v1, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 89
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 92
    .end local p0    # "html":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static getNextBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v0, "boundary":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 525
    const-class v2, Lcom/kingsoft/emailcommon/internet/Rfc822Output;

    monitor-enter v2

    .line 526
    :try_start_0
    sget-byte v1, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 527
    sget-byte v1, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    sput-byte v1, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    .line 528
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 528
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 449
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 450
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 451
    invoke-static {p2}, Lcom/kingsoft/emailcommon/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 452
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 454
    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "end"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    const-string/jumbo v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 466
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 467
    if-eqz p2, :cond_0

    .line 468
    const-string/jumbo v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 470
    :cond_0
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 471
    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 433
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 435
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 437
    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 415
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 416
    const-string/jumbo v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 417
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 418
    const-string/jumbo v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 420
    :cond_0
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 304
    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "%s;\r\n name=\"%s\""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    sget-object v15, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    const/16 v16, 0x7

    invoke-static/range {v14 .. v16}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v10, "Content-Transfer-Encoding"

    const-string/jumbo v11, "base64"

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_1

    .line 315
    const-string/jumbo v9, "attachment"

    .line 316
    .local v9, "tag":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 317
    const-string/jumbo v9, "inline"

    .line 319
    :cond_0
    const-string/jumbo v10, "Content-Disposition"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";\r\n filename=\"%s\";\r\n size=%d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    sget-object v16, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->WORD_ENTITY:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    const/16 v17, 0xb

    invoke-static/range {v15 .. v17}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p3

    iget-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v9    # "tag":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 328
    const-string/jumbo v10, "Content-ID"

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_2
    const-string/jumbo v10, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 333
    const/4 v7, 0x0

    .line 336
    .local v7, "inStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v10, :cond_4

    .line 337
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v7    # "inStream":Ljava/io/InputStream;
    .local v8, "inStream":Ljava/io/InputStream;
    move-object v7, v8

    .line 373
    .end local v8    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "inStream":Ljava/io/InputStream;
    :cond_3
    :goto_0
    if-nez v7, :cond_7

    .line 374
    const-string/jumbo v10, "Email"

    const-string/jumbo v11, "Rfc822Output#writeOneAttachment(), failed to open inStream: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 404
    :goto_1
    return-void

    .line 340
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "cachedFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 342
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 344
    .local v3, "cachedFileUri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 354
    .end local v3    # "cachedFileUri":Landroid/net/Uri;
    :cond_5
    :goto_2
    if-nez v7, :cond_3

    .line 356
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 357
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 359
    .local v5, "fileUri":Landroid/net/Uri;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    goto :goto_0

    .line 345
    .end local v5    # "fileUri":Landroid/net/Uri;
    .restart local v3    # "cachedFileUri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 347
    .local v4, "e":Ljava/io/FileNotFoundException;
    const/4 v7, 0x0

    .line 349
    :try_start_4
    const-string/jumbo v10, "Email"

    const-string/jumbo v11, "Rfc822Output#writeOneAttachment(), failed to loadcached file, falling back to: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 393
    .end local v2    # "cachedFile":Ljava/lang/String;
    .end local v3    # "cachedFileUri":Landroid/net/Uri;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 395
    .local v6, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v10, "Email"

    const-string/jumbo v11, "Rfc822Output#writeOneAttachment(), FileNotFoundExceptionwhen sending attachment"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v6, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 360
    .end local v6    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "cachedFile":Ljava/lang/String;
    .restart local v5    # "fileUri":Landroid/net/Uri;
    :catch_2
    move-exception v4

    .line 361
    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 362
    const-string/jumbo v10, "Email"

    const-string/jumbo v11, "Rfc822Output#writeOneAttachment(), failed to load attachment: %s "

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 368
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fileUri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v10, "Email"

    const-string/jumbo v11, "contentUri is null: %s "

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 379
    .end local v2    # "cachedFile":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/Writer;->flush()V

    .line 380
    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v10, 0x14

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v10}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 383
    .local v1, "base64Out":Landroid/util/Base64OutputStream;
    invoke-static {v7, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 384
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 389
    const/16 v10, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 390
    const/16 v10, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method private static writeReferences(Landroid/content/Context;Ljava/io/Writer;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "body"    # Lcom/android/emailcommon/provider/EmailContent$Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    if-nez p2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 288
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 289
    .local v0, "originalMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 293
    const-string/jumbo v2, "References"

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    :goto_1
    invoke-static {p1, v2, v1}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_1
.end method

.method private static writeTextWithHeaders(Ljava/util/Map;Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 10
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "bodyText"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/io/OutputStream;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "mapInlineImage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v1, 0x0

    .line 487
    .local v1, "html":Z
    const/4 v7, 0x0

    aget-object v5, p3, v7

    .line 488
    .local v5, "text":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 490
    const/4 v7, 0x1

    aget-object v7, p3, v7

    invoke-static {v7}, Lcom/kingsoft/mail/utils/Utils;->getHtmlWithoutNetease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 491
    const/4 v1, 0x1

    .line 493
    :cond_0
    if-nez v5, :cond_1

    .line 494
    const-string/jumbo v7, "\r\n"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 517
    :goto_0
    return-void

    .line 497
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "text/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_2

    const-string/jumbo v7, "html"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "mimeType":Ljava/lang/String;
    const-string/jumbo v7, "Content-Type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; charset=utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v7, "Content-Transfer-Encoding"

    const-string/jumbo v8, "base64"

    invoke-static {p1, v7, v8}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string/jumbo v7, "\r\n"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 501
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 502
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 503
    .local v4, "setInlineImage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 504
    .local v2, "itInlineImage":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 505
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "contentId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 510
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " data-cid=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 511
    goto :goto_2

    .line 497
    .end local v0    # "contentId":Ljava/lang/String;
    .end local v2    # "itInlineImage":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "setInlineImage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, "plain"

    goto/16 :goto_1

    .line 513
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 514
    .local v6, "textBytes":[B
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 515
    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0
.end method

.method public static writeTo(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/io/OutputStream;ZZLjava/util/List;Z)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "useSmartReply"    # Z
    .param p4, "sendBcc"    # Z
    .param p6, "easAddInline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/io/OutputStream;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    .local p5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v17, Ljava/io/BufferedOutputStream;

    const/16 v20, 0x400

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 150
    .local v17, "stream":Ljava/io/OutputStream;
    new-instance v19, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .local v19, "writer":Ljava/io/Writer;
    sget-object v20, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "date":Ljava/lang/String;
    const-string/jumbo v20, "Date"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v20, "Subject"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v20, "Message-ID"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v20, "From"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v20, "To"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v20, "Cc"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x800000

    and-int v20, v20, v21

    if-eqz v20, :cond_1

    .line 168
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/kingsoft/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 169
    .local v15, "receiptAddress":Ljava/lang/String;
    const-string/jumbo v20, "Disposition-Notification-To"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v20, "X-Confirm-Reading-To"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v20, "Return-Receipt-To"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v15    # "receiptAddress":Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    .line 177
    const-string/jumbo v20, "Bcc"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_2
    const-string/jumbo v20, "Reply-To"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v5

    .line 182
    .local v5, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeReferences(Landroid/content/Context;Ljava/io/Writer;Lcom/android/emailcommon/provider/EmailContent$Body;)V

    .line 183
    const-string/jumbo v20, "MIME-Version"

    const-string/jumbo v21, "1.0"

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move/from16 v0, p3

    invoke-static {v5, v0}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;Z)[Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "bodyText":[Ljava/lang/String;
    if-nez p5, :cond_3

    .line 190
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    .line 194
    :cond_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_7

    const/4 v12, 0x1

    .line 195
    .local v12, "multipart":Z
    :goto_1
    const/4 v13, 0x0

    .line 196
    .local v13, "multipartBoundary":Ljava/lang/String;
    const-string/jumbo v14, "mixed"

    .line 197
    .local v14, "multipartType":Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v11, "mapInlineImage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/16 v20, 0x0

    aget-object v20, v6, v20

    if-nez v20, :cond_4

    const/16 v20, 0x1

    aget-object v20, v6, v20

    if-eqz v20, :cond_6

    .line 202
    :cond_4
    const-string/jumbo v18, ""

    .line 203
    .local v18, "text":Ljava/lang/String;
    if-nez p6, :cond_8

    .line 204
    const/16 v20, 0x0

    aget-object v18, v6, v20

    .line 205
    if-nez v18, :cond_5

    .line 206
    const/16 v20, 0x1

    aget-object v18, v6, v20

    .line 214
    :cond_5
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->getInlineImage(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 219
    .end local v18    # "text":Ljava/lang/String;
    :cond_6
    if-nez v12, :cond_9

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 220
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1, v6}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/util/Map;Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 274
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/Writer;->flush()V

    .line 275
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 194
    .end local v11    # "mapInlineImage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v12    # "multipart":Z
    .end local v13    # "multipartBoundary":Ljava/lang/String;
    .end local v14    # "multipartType":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_1

    .line 209
    .restart local v11    # "mapInlineImage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .restart local v12    # "multipart":Z
    .restart local v13    # "multipartBoundary":Ljava/lang/String;
    .restart local v14    # "multipartType":Ljava/lang/String;
    .restart local v18    # "text":Ljava/lang/String;
    :cond_8
    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 210
    if-nez v18, :cond_5

    .line 211
    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_2

    .line 224
    .end local v18    # "text":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->getNextBoundary()Ljava/lang/String;

    move-result-object v13

    .line 228
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 232
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 233
    .local v8, "flags":I
    and-int/lit8 v20, v8, 0x1

    if-eqz v20, :cond_a

    .line 234
    const-string/jumbo v14, "alternative"

    .line 238
    .end local v8    # "flags":I
    :cond_a
    const-string/jumbo v20, "Content-Type"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "multipart/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "; boundary=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 244
    const/16 v20, 0x0

    aget-object v20, v6, v20

    if-nez v20, :cond_b

    const/16 v20, 0x1

    aget-object v20, v6, v20

    if-eqz v20, :cond_c

    .line 246
    :cond_b
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 247
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v11, v0, v1, v6}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/util/Map;Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 250
    :cond_c
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 252
    .local v16, "setInlineImage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 253
    .local v10, "inlineImage":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 255
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 258
    const-string/jumbo v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 262
    .end local v10    # "inlineImage":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 263
    .local v4, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2, v4}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 267
    const-string/jumbo v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 271
    .end local v4    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_e
    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v13, v1}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method
