.class public Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/store/imap/ImapResponseParser$ByeException;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_RAW_STREAM:Z = false

.field public static final LITERAL_KEEP_IN_MEMORY_THRESHOLD:I = 0x200000


# instance fields
.field private final mBufferReadUntil:Ljava/lang/StringBuilder;

.field private final mDiscourseLogger:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

.field private final mIn:Lcom/kingsoft/email/PeekableInputStream;

.field private final mLiteralKeepInMemoryThreshold:I

.field private final mParseBareString:Ljava/lang/StringBuilder;

.field private final mResponsesToDestroy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/email/mail/transport/DiscourseLogger;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "discourseLogger"    # Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    .prologue
    .line 89
    const/high16 v0, 0x200000

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/email/mail/transport/DiscourseLogger;I)V

    .line 90
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/kingsoft/email/mail/transport/DiscourseLogger;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "discourseLogger"    # Lcom/kingsoft/email/mail/transport/DiscourseLogger;
    .param p3, "literalKeepInMemoryThreshold"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/kingsoft/email/PeekableInputStream;

    invoke-direct {v0, p1}, Lcom/kingsoft/email/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/kingsoft/email/PeekableInputStream;

    .line 101
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    .line 102
    iput p3, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    .line 103
    return-void
.end method

.method private static newEOSException()Ljava/io/IOException;
    .locals 4

    .prologue
    .line 106
    const-string/jumbo v0, "End of stream reached"

    .line 107
    .local v0, "message":Ljava/lang/String;
    sget-boolean v1, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "End of stream reached"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "End of stream reached"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private onParseError(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 216
    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 222
    .end local v0    # "b":I
    :cond_0
    :goto_1
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 223
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 224
    return-void

    .line 214
    .restart local v0    # "b":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v0    # "b":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseBareString()Lcom/kingsoft/email/mail/store/imap/ImapString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 434
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 436
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    .line 440
    .local v0, "ch":I
    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    const/16 v2, 0x29

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_1

    const/16 v2, 0x25

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 454
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v3, "Expected string, none found."

    invoke-direct {v2, v3}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v2, "NIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    sget-object v2, Lcom/kingsoft/email/mail/store/imap/ImapString;->EMPTY:Lcom/kingsoft/email/mail/store/imap/ImapString;

    .line 462
    :goto_1
    return-object v2

    :cond_3
    new-instance v2, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v2, v1}, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_5

    .line 465
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 470
    :cond_5
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseElement(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapElement;
    .locals 7
    .param p1, "attId"    # J
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v6

    .line 405
    .local v6, "next":I
    sparse-switch v6, :sswitch_data_0

    .line 423
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v0

    :goto_0
    return-object v0

    .line 407
    :sswitch_0
    const/16 v1, 0x28

    const/16 v2, 0x29

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseList(CCJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v0

    goto :goto_0

    .line 409
    :sswitch_1
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseList(CCJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v0

    goto :goto_0

    .line 411
    :sswitch_2
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 412
    new-instance v0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readUntilWithEscape(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :sswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseLiteral(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v0

    goto :goto_0

    .line 416
    :sswitch_4
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 417
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_0

    .line 420
    :sswitch_5
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0

    .line 405
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_2
        0x28 -> :sswitch_0
        0x5b -> :sswitch_1
        0x7b -> :sswitch_3
    .end sparse-switch
.end method

.method private parseElements(Lcom/kingsoft/email/mail/store/imap/ImapList;CJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 3
    .param p1, "list"    # Lcom/kingsoft/email/mail/store/imap/ImapList;
    .param p2, "end"    # C
    .param p3, "attId"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 479
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v1

    .line 480
    .local v1, "next":I
    if-ne v1, p2, :cond_1

    .line 491
    :cond_0
    return-void

    .line 483
    :cond_1
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 489
    invoke-direct {p0, p3, p4, p5}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseElement(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 490
    .local v0, "el":Lcom/kingsoft/email/mail/store/imap/ImapElement;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p1, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->add(Lcom/kingsoft/email/mail/store/imap/ImapElement;)V

    goto :goto_0

    .line 487
    .end local v0    # "el":Lcom/kingsoft/email/mail/store/imap/ImapElement;
    :cond_2
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0
.end method

.method private parseList(CCJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapList;
    .locals 6
    .param p1, "opening"    # C
    .param p2, "closing"    # C
    .param p3, "attId"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 500
    new-instance v1, Lcom/kingsoft/email/mail/store/imap/ImapList;

    invoke-direct {v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;-><init>()V

    .local v1, "list":Lcom/kingsoft/email/mail/store/imap/ImapList;
    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 501
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/kingsoft/email/mail/store/imap/ImapList;CJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 502
    invoke-virtual {p0, p2}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 503
    return-object v1
.end method

.method private parseLiteral(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapString;
    .locals 6
    .param p1, "attId"    # J
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 508
    const/16 v4, 0x7b

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 511
    const/16 v4, 0x7d

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 515
    .local v3, "size":I
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 516
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 517
    new-instance v1, Lcom/kingsoft/email/FixedLengthInputStream;

    iget-object v4, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/kingsoft/email/PeekableInputStream;

    invoke-direct {v1, v4, v3}, Lcom/kingsoft/email/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 519
    .local v1, "in":Lcom/kingsoft/email/FixedLengthInputStream;
    :try_start_1
    iget v4, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v3, v4, :cond_0

    .line 520
    new-instance v4, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;

    invoke-direct {v4, v1, p1, p2, p3}, Lcom/kingsoft/email/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/kingsoft/email/FixedLengthInputStream;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_1
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    :goto_0
    return-object v4

    .line 512
    .end local v1    # "in":Lcom/kingsoft/email/FixedLengthInputStream;
    .end local v3    # "size":I
    :catch_0
    move-exception v2

    .line 513
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v5, "Invalid length in literal"

    invoke-direct {v4, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v1    # "in":Lcom/kingsoft/email/FixedLengthInputStream;
    .restart local v3    # "size":I
    :cond_0
    :try_start_2
    new-instance v4, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;

    invoke-direct {v4, v1, p1, p2, p3}, Lcom/kingsoft/email/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/kingsoft/email/FixedLengthInputStream;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_2
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 524
    :catch_1
    move-exception v0

    .line 525
    .local v0, "e":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v5, 0x12

    invoke-direct {v4, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v4
.end method

.method private parseResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .locals 14
    .param p1, "attId"    # J
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v9, 0x0

    .line 328
    .local v9, "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :try_start_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v6

    .line 329
    .local v6, "ch":I
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 331
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 332
    new-instance v10, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v10, v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    .end local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .local v10, "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :try_start_1
    new-instance v0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->add(Lcom/kingsoft/email/mail/store/imap/ImapElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    move-object v11, v10

    .line 340
    .local v11, "responseToReturn":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const/4 v9, 0x0

    .line 393
    .end local v10    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :goto_0
    if-eqz v9, :cond_0

    .line 395
    invoke-virtual {v9}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->destroy()V

    .line 399
    :cond_0
    return-object v11

    .line 344
    .end local v11    # "responseToReturn":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_1
    const/16 v0, 0x2a

    if-ne v6, v0, :cond_4

    .line 345
    const/4 v13, 0x0

    .line 346
    .local v13, "tag":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 347
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 351
    :goto_1
    new-instance v10, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    const/4 v0, 0x0

    invoke-direct {v10, v13, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    .end local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v10    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :try_start_3
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v7

    .line 354
    .local v7, "firstString":Lcom/kingsoft/email/mail/store/imap/ImapString;
    invoke-virtual {v10, v7}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->add(Lcom/kingsoft/email/mail/store/imap/ImapElement;)V

    .line 360
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 361
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 363
    invoke-virtual {v10}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 367
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    .line 368
    .local v8, "next":I
    const/16 v0, 0x5b

    if-ne v8, v0, :cond_2

    .line 369
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    move-object v0, p0

    move-wide v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseList(CCJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->add(Lcom/kingsoft/email/mail/store/imap/ImapElement;)V

    .line 370
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v12

    .line 376
    .local v12, "rest":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 378
    new-instance v0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v0, v12}, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->add(Lcom/kingsoft/email/mail/store/imap/ImapElement;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    .end local v8    # "next":I
    .end local v12    # "rest":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object v11, v10

    .line 390
    .restart local v11    # "responseToReturn":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const/4 v9, 0x0

    .end local v10    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    goto :goto_0

    .line 349
    .end local v7    # "firstString":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v11    # "responseToReturn":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v13    # "tag":Ljava/lang/String;
    :cond_4
    const/16 v0, 0x20

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v13

    .restart local v13    # "tag":Ljava/lang/String;
    goto :goto_1

    .line 381
    .end local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v7    # "firstString":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .restart local v10    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_5
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move-wide v3, p1

    move-object/from16 v5, p3

    :try_start_5
    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/kingsoft/email/mail/store/imap/ImapList;CJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 393
    .end local v7    # "firstString":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v13    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v9, v10

    .end local v6    # "ch":I
    .end local v10    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :goto_3
    if-eqz v9, :cond_6

    .line 395
    invoke-virtual {v9}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->destroy()V

    :cond_6
    throw v0

    .line 384
    .end local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v6    # "ch":I
    .restart local v7    # "firstString":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .restart local v10    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_7
    const/16 v0, 0xd

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V

    .line 385
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->expect(C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 393
    .end local v6    # "ch":I
    .end local v7    # "firstString":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v10    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v13    # "tag":Ljava/lang/String;
    .restart local v9    # "responseToDestroy":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/kingsoft/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/kingsoft/email/PeekableInputStream;->peek()I

    move-result v0

    .line 120
    .local v0, "next":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-static {}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 123
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/kingsoft/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/kingsoft/email/PeekableInputStream;->read()I

    move-result v0

    .line 134
    .local v0, "next":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 135
    invoke-static {}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    invoke-virtual {v1, v0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addReceivedByte(I)V

    .line 138
    return v0
.end method


# virtual methods
.method public destroyResponses()V
    .locals 4

    .prologue
    .line 148
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 150
    .local v1, "r":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->destroy()V

    goto :goto_0

    .line 153
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 152
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 153
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void
.end method

.method expect(C)V
    .locals 6
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 232
    .local v0, "next":I
    if-eq p1, v0, :cond_0

    .line 233
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    return-void
.end method

.method public readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .locals 6
    .param p1, "attId"    # J
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->parseResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 173
    sget-boolean v2, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<<< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :cond_0
    const-string/jumbo v2, "BYE"

    invoke-virtual {v1, v5, v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Received BYE"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->destroy()V

    .line 192
    new-instance v2, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser$ByeException;

    invoke-direct {v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser$ByeException;-><init>()V

    throw v2

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 180
    throw v0

    .line 181
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    .line 184
    throw v0

    .line 195
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    monitor-enter v3

    .line 197
    :try_start_1
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    monitor-exit v3

    .line 199
    return-object v1

    .line 198
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method readUntil(C)Ljava/lang/String;
    .locals 3
    .param p1, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 246
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 247
    .local v0, "ch":I
    if-eq v0, p1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method readUntilEol()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/kingsoft/email/PeekableInputStream;

    invoke-virtual {v3}, Lcom/kingsoft/email/PeekableInputStream;->read()I

    move-result v3

    int-to-char v1, v3

    .local v1, "ch":C
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 292
    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    .line 294
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 300
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .end local v1    # "ch":C
    :goto_1
    return-object v3

    .line 297
    .restart local v1    # "ch":C
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v1    # "ch":C
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method readUntilWithEscape(C)Ljava/lang/String;
    .locals 4
    .param p1, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "escape":Z
    :goto_0
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    .line 265
    .local v0, "ch":I
    if-eq v0, p1, :cond_2

    .line 266
    if-eqz v1, :cond_1

    .line 267
    const/4 v1, 0x0

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :cond_1
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_0

    .line 269
    const/4 v1, 0x1

    .line 270
    goto :goto_0

    .line 274
    :cond_2
    if-eqz v1, :cond_3

    .line 275
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    const/4 v1, 0x0

    .line 277
    goto :goto_0

    .line 279
    :cond_3
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
