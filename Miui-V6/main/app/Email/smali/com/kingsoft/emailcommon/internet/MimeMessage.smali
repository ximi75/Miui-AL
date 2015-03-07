.class public Lcom/kingsoft/emailcommon/internet/MimeMessage;
.super Lcom/kingsoft/emailcommon/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mBcc:[Lcom/kingsoft/emailcommon/mail/Address;

.field private mBody:Lcom/kingsoft/emailcommon/mail/Body;

.field private mCc:[Lcom/kingsoft/emailcommon/mail/Address;

.field private mComplete:Z

.field private mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

.field private mFrom:[Lcom/kingsoft/emailcommon/mail/Address;

.field private mHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

.field private mInhibitLocalMessageId:Z

.field private mReplyTo:[Lcom/kingsoft/emailcommon/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field protected mSize:I

.field private mTo:[Lcom/kingsoft/emailcommon/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->sRandom:Ljava/util/Random;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 83
    const-string/jumbo v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    .line 85
    const-string/jumbo v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/mail/Message;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mComplete:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/mail/Message;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mComplete:Z

    .line 119
    invoke-virtual {p0, p1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 120
    return-void
.end method

.method public static generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    .line 101
    sget-object v4, Lcom/kingsoft/emailcommon/internet/MimeMessage;->sRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit8 v3, v4, 0x1f

    .line 102
    .local v3, "value":I
    const-string/jumbo v4, "0123456789abcdefghijklmnopqrstuv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "c":C
    .end local v3    # "value":I
    :cond_0
    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string/jumbo v4, "@email.android.com>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/kingsoft/emailcommon/internet/MimeHeader;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    return-object v0
.end method

.method private init()Lorg/apache/james/mime4j/MimeStreamParser;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->clear()V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 127
    iput-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mFrom:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 128
    iput-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mTo:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 129
    iput-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mCc:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 130
    iput-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBcc:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 131
    iput-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 132
    iput-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 133
    iput-object v2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBody:Lcom/kingsoft/emailcommon/mail/Body;

    .line 135
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 136
    .local v0, "parser":Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/kingsoft/emailcommon/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 137
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public getBody()Lcom/kingsoft/emailcommon/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBody:Lcom/kingsoft/emailcommon/mail/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 243
    const-string/jumbo v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "contentId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 248
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/kingsoft/emailcommon/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, "$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 223
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 225
    const-string/jumbo v0, "text/plain"

    .line 227
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 233
    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "contentDisposition":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    .end local v0    # "contentDisposition":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getExtendedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtendedHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->writeToString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/kingsoft/emailcommon/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mFrom:[Lcom/kingsoft/emailcommon/mail/Address;

    if-nez v1, :cond_2

    .line 343
    const-string/jumbo v1, "From"

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "list":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    const-string/jumbo v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_1
    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mFrom:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 349
    .end local v0    # "list":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mFrom:[Lcom/kingsoft/emailcommon/mail/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 403
    const-string/jumbo v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "messageId":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    if-nez v1, :cond_0

    .line 405
    invoke-static {}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 408
    :cond_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;)[Lcom/kingsoft/emailcommon/mail/Address;
    .locals 2
    .param p1, "type"    # Lcom/kingsoft/emailcommon/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->TO:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mTo:[Lcom/kingsoft/emailcommon/mail/Address;

    if-nez v0, :cond_0

    .line 274
    const-string/jumbo v0, "To"

    invoke-virtual {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mTo:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mTo:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 286
    :goto_0
    return-object v0

    .line 277
    :cond_1
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->CC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mCc:[Lcom/kingsoft/emailcommon/mail/Address;

    if-nez v0, :cond_2

    .line 279
    const-string/jumbo v0, "CC"

    invoke-virtual {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mCc:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mCc:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0

    .line 282
    :cond_3
    sget-object v0, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->BCC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBcc:[Lcom/kingsoft/emailcommon/mail/Address;

    if-nez v0, :cond_4

    .line 284
    const-string/jumbo v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBcc:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBcc:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0

    .line 288
    :cond_5
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyTo()[Lcom/kingsoft/emailcommon/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/kingsoft/emailcommon/mail/Address;

    if-nez v0, :cond_0

    .line 368
    const-string/jumbo v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/kingsoft/emailcommon/mail/Address;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 173
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Date"

    invoke-virtual {p0, v4}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 175
    .local v0, "field":Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    .end local v0    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v3, :cond_1

    .line 185
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Delivery-date"

    invoke-virtual {p0, v4}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 187
    .restart local v0    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v0    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v3, :cond_2

    .line 197
    :try_start_2
    const-string/jumbo v3, "Received"

    invoke-virtual {p0, v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "receive":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "reces":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    .line 203
    .restart local v0    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .end local v0    # "field":Lorg/apache/james/mime4j/field/DateTimeField;
    .end local v1    # "receive":Ljava/lang/String;
    .end local v2    # "reces":[Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v3

    .line 208
    :catch_0
    move-exception v3

    goto :goto_2

    .line 190
    :catch_1
    move-exception v3

    goto :goto_1

    .line 178
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 331
    const-string/jumbo v0, "Subject"

    invoke-virtual {p0, v0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mComplete:Z

    return v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->init()Lorg/apache/james/mime4j/MimeStreamParser;

    move-result-object v0

    .line 142
    .local v0, "parser":Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 143
    invoke-virtual {v0}, Lorg/apache/james/mime4j/MimeStreamParser;->getPrematureEof()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mComplete:Z

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "callback"    # Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->init()Lorg/apache/james/mime4j/MimeStreamParser;

    move-result-object v0

    .line 149
    .local v0, "parser":Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getSize()I

    move-result v2

    invoke-direct {v1, p1, v2, p2}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 150
    invoke-virtual {v0}, Lorg/apache/james/mime4j/MimeStreamParser;->getPrematureEof()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mComplete:Z

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v0, "Message-ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    .line 462
    :cond_0
    return-void
.end method

.method public saveChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v1, "saveChanges not yet implemented"

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lcom/kingsoft/emailcommon/mail/Body;)V
    .locals 6
    .param p1, "body"    # Lcom/kingsoft/emailcommon/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 423
    iput-object p1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBody:Lcom/kingsoft/emailcommon/mail/Body;

    .line 424
    instance-of v1, p1, Lcom/kingsoft/emailcommon/mail/Multipart;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 425
    check-cast v0, Lcom/kingsoft/emailcommon/mail/Multipart;

    .line 426
    .local v0, "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    invoke-virtual {v0, p0}, Lcom/kingsoft/emailcommon/mail/Multipart;->setParent(Lcom/kingsoft/emailcommon/mail/Part;)V

    .line 427
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v1, "MIME-Version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v0    # "multipart":Lcom/kingsoft/emailcommon/mail/Multipart;
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    instance-of v1, p1, Lcom/kingsoft/emailcommon/internet/TextBody;

    if-eqz v1, :cond_0

    .line 431
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v1, "Content-Transfer-Encoding"

    const-string/jumbo v2, "base64"

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 474
    if-nez p2, :cond_1

    .line 475
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    invoke-virtual {v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Lcom/kingsoft/emailcommon/internet/MimeHeader;

    invoke-direct {v0}, Lcom/kingsoft/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    sget-object v1, Lcom/kingsoft/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeaders(Ljava/lang/String;)V
    .locals 9
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 510
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    .line 521
    :cond_0
    return-void

    .line 512
    :cond_1
    new-instance v5, Lcom/kingsoft/emailcommon/internet/MimeHeader;

    invoke-direct {v5}, Lcom/kingsoft/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v5, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    .line 513
    sget-object v5, Lcom/kingsoft/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 514
    .local v1, "header":Ljava/lang/String;
    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-eq v5, v8, :cond_2

    .line 516
    new-instance v5, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal extended headers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 518
    :cond_2
    iget-object v5, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/kingsoft/emailcommon/internet/MimeHeader;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFrom(Lcom/kingsoft/emailcommon/mail/Address;)V
    .locals 4
    .param p1, "from"    # Lcom/kingsoft/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x6

    .line 355
    .local v0, "FROM_LENGTH":I
    if-eqz p1, :cond_0

    .line 356
    const-string/jumbo v1, "From"

    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/kingsoft/emailcommon/mail/Address;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mFrom:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mFrom:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 392
    const-string/jumbo v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public setRecipients(Lcom/kingsoft/emailcommon/mail/Message$RecipientType;[Lcom/kingsoft/emailcommon/mail/Address;)V
    .locals 6
    .param p1, "type"    # Lcom/kingsoft/emailcommon/mail/Message$RecipientType;
    .param p2, "addresses"    # [Lcom/kingsoft/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 294
    const/4 v2, 0x4

    .line 295
    .local v2, "TO_LENGTH":I
    const/4 v1, 0x4

    .line 296
    .local v1, "CC_LENGTH":I
    const/4 v0, 0x5

    .line 297
    .local v0, "BCC_LENGTH":I
    sget-object v3, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->TO:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_2

    .line 298
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 299
    :cond_0
    const-string/jumbo v3, "To"

    invoke-virtual {p0, v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 300
    iput-object v4, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mTo:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 324
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string/jumbo v3, "To"

    invoke-static {p2}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iput-object p2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mTo:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0

    .line 305
    :cond_2
    sget-object v3, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->CC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_5

    .line 306
    if-eqz p2, :cond_3

    array-length v3, p2

    if-nez v3, :cond_4

    .line 307
    :cond_3
    const-string/jumbo v3, "CC"

    invoke-virtual {p0, v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 308
    iput-object v4, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mCc:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0

    .line 310
    :cond_4
    const-string/jumbo v3, "CC"

    invoke-static {p2}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iput-object p2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mCc:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0

    .line 313
    :cond_5
    sget-object v3, Lcom/kingsoft/emailcommon/mail/Message$RecipientType;->BCC:Lcom/kingsoft/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_8

    .line 314
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 315
    :cond_6
    const-string/jumbo v3, "BCC"

    invoke-virtual {p0, v3}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 316
    iput-object v4, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBcc:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0

    .line 318
    :cond_7
    const-string/jumbo v3, "BCC"

    invoke-static {p2}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iput-object p2, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBcc:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0

    .line 322
    :cond_8
    new-instance v3, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v4, "Unrecognized recipient type."

    invoke-direct {v3, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setReplyTo([Lcom/kingsoft/emailcommon/mail/Address;)V
    .locals 4
    .param p1, "replyTo"    # [Lcom/kingsoft/emailcommon/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 375
    const/16 v0, 0xa

    .line 376
    .local v0, "REPLY_TO_LENGTH":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 377
    :cond_0
    const-string/jumbo v1, "Reply-to"

    invoke-virtual {p0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/kingsoft/emailcommon/mail/Address;

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_1
    const-string/jumbo v1, "Reply-to"

    invoke-static {p1}, Lcom/kingsoft/emailcommon/mail/Address;->toHeader([Lcom/kingsoft/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iput-object p1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/kingsoft/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "sentDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 217
    const-string/jumbo v0, "Date"

    sget-object v1, Lcom/kingsoft/emailcommon/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 219
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 336
    const/16 v0, 0x9

    .line 337
    .local v0, "HEADER_NAME_LENGTH":I
    const-string/jumbo v1, "Subject"

    const/16 v2, 0x9

    invoke-static {p1, v2}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 544
    .local v0, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 545
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/kingsoft/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingsoft/emailcommon/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    .line 548
    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 550
    iget-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBody:Lcom/kingsoft/emailcommon/mail/Body;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/kingsoft/emailcommon/internet/MimeMessage;->mBody:Lcom/kingsoft/emailcommon/mail/Body;

    invoke-interface {v1, p1}, Lcom/kingsoft/emailcommon/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 553
    :cond_0
    return-void
.end method
