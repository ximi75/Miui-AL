.class Lcom/kingsoft/email/mail/store/ImapFolder;
.super Lcom/kingsoft/emailcommon/mail/Folder;
.source "ImapFolder.java"


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x4000

.field private static final PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;

.field private static final TAG:Ljava/lang/String; = "ImapFolder"


# instance fields
.field protected mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

.field private mExists:Z

.field mHash:[Ljava/lang/Object;

.field mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mMessageCount:I

.field private mMode:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

.field private final mName:Ljava/lang/String;

.field private final mStore:Lcom/kingsoft/email/mail/store/ImapStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kingsoft/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kingsoft/emailcommon/mail/Flag;->ANSWERED:Lcom/kingsoft/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/mail/store/ImapFolder;->PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;

    return-void
.end method

.method constructor <init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1
    .param p1, "store"    # Lcom/kingsoft/email/mail/store/ImapStore;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/kingsoft/emailcommon/mail/Folder;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMessageCount:I

    .line 93
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    .line 94
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private MessageHasExistsInServerByMessageID(Ljava/lang/String;)Z
    .locals 7
    .param p1, "messageID"    # Ljava/lang/String;

    .prologue
    .line 1408
    const/4 v2, 0x0

    .line 1409
    .local v2, "serverHas":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1413
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "HEADER MESSAGE-ID %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1417
    .local v1, "existIDS":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 1418
    const-string/jumbo v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "search uids has count in two = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1419
    const/4 v2, 0x1

    .line 1437
    .end local v1    # "existIDS":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1425
    .restart local v1    # "existIDS":[Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "(HEADER MESSAGE-ID %s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1427
    array-length v3, v1

    if-lez v3, :cond_0

    .line 1428
    const-string/jumbo v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "search uids has count in two = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    const/4 v2, 0x1

    goto :goto_0

    .line 1432
    .end local v1    # "existIDS":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_0
    return-void
.end method

.method private static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Body;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-static {p0, p1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 926
    new-instance v0, Lcom/kingsoft/emailcommon/internet/InputStreamBody;

    invoke-direct {v0, p0}, Lcom/kingsoft/emailcommon/internet/InputStreamBody;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private destroyResponses()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 105
    :cond_0
    return-void
.end method

.method private doSelect()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1347
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT \"%s\""

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/kingsoft/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1351
    .local v4, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    sget-object v5, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    iput-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMode:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    .line 1352
    const/4 v1, -0x1

    .line 1353
    .local v1, "messageCount":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 1354
    .local v2, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const-string/jumbo v5, "EXISTS"

    invoke-virtual {v2, v11, v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1355
    invoke-virtual {v2, v12}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v1

    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1357
    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 1358
    .local v3, "responseCode":Lcom/kingsoft/email/mail/store/imap/ImapString;
    const-string/jumbo v5, "READ-ONLY"

    invoke-virtual {v3, v5}, Lcom/kingsoft/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1359
    sget-object v5, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    iput-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMode:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    goto :goto_0

    .line 1360
    :cond_2
    const-string/jumbo v5, "READ-WRITE"

    invoke-virtual {v3, v5}, Lcom/kingsoft/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1361
    sget-object v5, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    iput-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMode:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    goto :goto_0

    .line 1363
    .end local v3    # "responseCode":Lcom/kingsoft/email/mail/store/imap/ImapString;
    :cond_3
    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1364
    new-instance v5, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t open mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1368
    .end local v2    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_4
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 1369
    new-instance v5, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v6, "Did not find message count during select"

    invoke-direct {v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1371
    :cond_5
    iput v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMessageCount:I

    .line 1372
    iput-boolean v11, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mExists:Z

    .line 1373
    return-void
.end method

.method private generateDateRangeCommand(JJZ)Ljava/lang/String;
    .locals 8
    .param p1, "startDate"    # J
    .param p3, "endDate"    # J
    .param p5, "useQuotes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x22

    .line 592
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd-LLL-yyyy"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 593
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const-string/jumbo v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 594
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "sinceDateStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v2, "queryParam":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "1:* "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_3

    .line 602
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "beforeDateStr":Ljava/lang/String;
    cmp-long v4, p1, p3

    if-gez v4, :cond_0

    .line 604
    new-instance v4, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v5, "Invalid date range: %s - %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 607
    :cond_0
    const-string/jumbo v4, "BEFORE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    if-eqz p5, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    if-eqz p5, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    :cond_2
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .end local v0    # "beforeDateStr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "SINCE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    if-eqz p5, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    if-eqz p5, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateNumberRangeCommand(IIJZZ)Ljava/lang/String;
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "endDate"    # J
    .param p5, "includeDeleted"    # Z
    .param p6, "useQuotes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    .line 575
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd-MMM-yyyy"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 576
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .local v0, "dateSearchString":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 578
    const-string/jumbo v3, " SINCE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    if-eqz p6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    if-eqz p6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%d:%d%s%s"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    aput-object v0, v6, v3

    const/4 v7, 0x3

    if-eqz p5, :cond_2

    const-string/jumbo v3, ""

    :goto_0
    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "queryCommand":Ljava/lang/String;
    return-object v2

    .line 582
    .end local v2    # "queryCommand":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, " NOT DELETED"

    goto :goto_0
.end method

.method private handleUntaggedResponse(Lcom/kingsoft/email/mail/store/imap/ImapResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .prologue
    .line 949
    const/4 v0, 0x1

    const-string/jumbo v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMessageCount:I

    .line 952
    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 940
    .local v1, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/kingsoft/email/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 942
    .end local v1    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_0
    return-void
.end method

.method private ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;
    .locals 4
    .param p1, "connection"    # Lcom/kingsoft/email/mail/store/ImapConnection;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    const/4 v3, 0x0

    .line 1382
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1383
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IO Exception detected: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1385
    :cond_0
    invoke-virtual {p1}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 1386
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-ne p1, v0, :cond_1

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 1388
    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    .line 1390
    :cond_1
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v1, 0x21

    const-string/jumbo v2, "IO Error"

    invoke-direct {v0, v1, v2, p2}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected static isAsciiString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 505
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 506
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 507
    .local v0, "c":C
    const/16 v3, 0x80

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    .line 509
    .end local v0    # "c":C
    :goto_1
    return v3

    .line 505
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "c":C
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static parseBodyStructure(Lcom/kingsoft/email/mail/store/imap/ImapList;Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 35
    .param p0, "bs"    # Lcom/kingsoft/email/mail/store/imap/ImapList;
    .param p1, "part"    # Lcom/kingsoft/emailcommon/mail/Part;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 956
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/kingsoft/email/mail/store/imap/ImapElement;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapElement;->isList()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 960
    new-instance v21, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v21 .. v21}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;-><init>()V

    .line 961
    .local v21, "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    const/16 v18, 0x0

    .local v18, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->size()I

    move-result v13

    .local v13, "count":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v13, :cond_2

    .line 962
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/kingsoft/email/mail/store/imap/ImapElement;

    move-result-object v16

    .line 963
    .local v16, "e":Lcom/kingsoft/email/mail/store/imap/ImapElement;
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/imap/ImapElement;->isList()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 968
    new-instance v7, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 969
    .local v7, "bp":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    const-string/jumbo v29, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 970
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v29

    add-int/lit8 v30, v18, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p3

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/kingsoft/email/mail/store/imap/ImapList;Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 975
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/kingsoft/emailcommon/mail/BodyPart;)V

    .line 961
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 973
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    add-int/lit8 v31, v18, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p3

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/kingsoft/email/mail/store/imap/ImapList;Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 978
    .end local v7    # "bp":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/imap/ImapElement;->isString()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 979
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 984
    .end local v16    # "e":Lcom/kingsoft/email/mail/store/imap/ImapElement;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    .line 1169
    .end local v13    # "count":I
    .end local v18    # "i":I
    .end local v21    # "mp":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    :cond_3
    :goto_2
    return-void

    .line 1001
    :cond_4
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v28

    .line 1002
    .local v28, "type":Lcom/kingsoft/email/mail/store/imap/ImapString;
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v26

    .line 1003
    .local v26, "subType":Lcom/kingsoft/email/mail/store/imap/ImapString;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v26 .. v26}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 1006
    .local v20, "mimeType":Ljava/lang/String;
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v6

    .line 1007
    .local v6, "bodyParams":Lcom/kingsoft/email/mail/store/imap/ImapList;
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v10

    .line 1008
    .local v10, "cid":Lcom/kingsoft/email/mail/store/imap/ImapString;
    const/16 v29, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v17

    .line 1009
    .local v17, "encoding":Lcom/kingsoft/email/mail/store/imap/ImapString;
    const/16 v29, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v25

    .line 1014
    .local v25, "size":I
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v12, "contentType":Ljava/lang/StringBuilder;
    const-string/jumbo v29, "message/rfc822"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1031
    const-string/jumbo v29, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1033
    const-string/jumbo v29, "Content-Type"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    goto/16 :goto_2

    .line 1043
    :cond_5
    const/4 v14, 0x0

    .line 1044
    .local v14, "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    const/4 v9, 0x0

    .line 1045
    .local v9, "charsetGuess":Ljava/lang/String;
    const/16 v18, 0x1

    .restart local v18    # "i":I
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/imap/ImapList;->size()I

    move-result v13

    .restart local v13    # "count":I
    move-object v15, v14

    .end local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .local v15, "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    :goto_3
    move/from16 v0, v18

    if-ge v0, v13, :cond_c

    .line 1046
    add-int/lit8 v29, v18, -0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    .line 1049
    .local v23, "paramName":Ljava/lang/String;
    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v19

    .line 1050
    .local v19, "in":Ljava/io/InputStream;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    if-nez v29, :cond_a

    if-nez v9, :cond_a

    .line 1051
    new-instance v22, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 1052
    .local v22, "out":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1053
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1054
    .local v8, "bytes":[B
    if-nez v15, :cond_8

    .line 1055
    new-instance v14, Lcom/kingsoft/emailcommon/utility/CharsetDetector;

    invoke-direct {v14}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    :goto_4
    :try_start_1
    array-length v0, v8

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v14, v8, v0}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->consume([BI)V

    .line 1060
    invoke-virtual {v14}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->getCharset()Ljava/lang/String;

    move-result-object v27

    .line 1061
    .local v27, "tempCharset":Ljava/lang/String;
    if-eqz v27, :cond_9

    const-string/jumbo v29, "ASCII"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 1062
    move-object/from16 v9, v27

    .line 1066
    :cond_6
    :goto_5
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1076
    .end local v8    # "bytes":[B
    .end local v19    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local v27    # "tempCharset":Ljava/lang/String;
    .local v24, "paramValue":Ljava/lang/String;
    :goto_6
    const-string/jumbo v29, ";\n %s=\"%s\""

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v23, v30, v31

    const/16 v31, 0x1

    aput-object v24, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    if-nez v29, :cond_7

    const-string/jumbo v29, "charset"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-static/range {v24 .. v24}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1079
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1045
    :cond_7
    :goto_7
    add-int/lit8 v18, v18, 0x2

    move-object v15, v14

    .end local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    goto/16 :goto_3

    .line 1057
    .end local v24    # "paramValue":Ljava/lang/String;
    .restart local v8    # "bytes":[B
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v22    # "out":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    :cond_8
    :try_start_3
    invoke-virtual {v15}, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->reset()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v14, v15

    .end local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    goto :goto_4

    .line 1063
    .restart local v27    # "tempCharset":Ljava/lang/String;
    :cond_9
    if-nez v27, :cond_6

    .line 1064
    :try_start_4
    const-string/jumbo v27, "GB18030"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 1068
    .end local v8    # "bytes":[B
    .end local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .end local v22    # "out":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local v27    # "tempCharset":Ljava/lang/String;
    .restart local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    :cond_a
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    if-eqz v29, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_8
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v24

    .restart local v24    # "paramValue":Ljava/lang/String;
    move-object v14, v15

    .end local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    goto :goto_6

    .end local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .end local v24    # "paramValue":Ljava/lang/String;
    .restart local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    :cond_b
    move-object/from16 v29, v9

    goto :goto_8

    .line 1070
    .end local v19    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v16

    move-object v14, v15

    .line 1071
    .end local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .local v16, "e":Ljava/lang/Exception;
    :goto_9
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "paramValue":Ljava/lang/String;
    goto :goto_6

    .line 1086
    .end local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "paramName":Ljava/lang/String;
    .end local v24    # "paramValue":Ljava/lang/String;
    .restart local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    :cond_c
    const-string/jumbo v29, "Content-Type"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string/jumbo v29, "TEXT"

    invoke-virtual/range {v28 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_e

    const/16 v29, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/kingsoft/email/mail/store/imap/ImapElement;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapElement;->isList()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 1095
    const/16 v29, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 1100
    .local v3, "bodyDisposition":Lcom/kingsoft/email/mail/store/imap/ImapList;
    :goto_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .local v11, "contentDisposition":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/kingsoft/email/mail/store/imap/ImapList;->size()I

    move-result v29

    if-lez v29, :cond_f

    .line 1103
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .local v4, "bodyDisposition0Str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_d

    .line 1106
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    :cond_d
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v5

    .line 1110
    .local v5, "bodyDispositionParams":Lcom/kingsoft/email/mail/store/imap/ImapList;
    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_f

    .line 1115
    const/16 v18, 0x1

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/imap/ImapList;->size()I

    move-result v13

    :goto_b
    move/from16 v0, v18

    if-ge v0, v13, :cond_f

    .line 1118
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v30, ";\n %s=\"%s\""

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int/lit8 v33, v18, -0x1

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v33

    sget-object v34, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    add-int/lit8 v18, v18, 0x2

    goto :goto_b

    .line 1097
    .end local v3    # "bodyDisposition":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v4    # "bodyDisposition0Str":Ljava/lang/String;
    .end local v5    # "bodyDispositionParams":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v11    # "contentDisposition":Ljava/lang/StringBuilder;
    :cond_e
    const/16 v29, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v3

    .restart local v3    # "bodyDisposition":Lcom/kingsoft/email/mail/store/imap/ImapList;
    goto/16 :goto_a

    .line 1126
    .restart local v11    # "contentDisposition":Ljava/lang/StringBuilder;
    :cond_f
    if-lez v25, :cond_10

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "size"

    invoke-static/range {v29 .. v30}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_10

    .line 1129
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v30, ";\n size=%d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :cond_10
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_11

    .line 1137
    const-string/jumbo v29, "Content-Disposition"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_11
    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_12

    .line 1146
    const-string/jumbo v29, "Content-Transfer-Encoding"

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_12
    invoke-virtual {v10}, Lcom/kingsoft/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_13

    .line 1154
    const-string/jumbo v29, "Content-ID"

    invoke-virtual {v10}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_13
    if-lez v25, :cond_14

    .line 1158
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;

    move/from16 v29, v0

    if-eqz v29, :cond_15

    move-object/from16 v29, p1

    .line 1159
    check-cast v29, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1166
    :cond_14
    :goto_c
    const-string/jumbo v29, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1160
    :cond_15
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;

    move/from16 v29, v0

    if-eqz v29, :cond_16

    move-object/from16 v29, p1

    .line 1161
    check-cast v29, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->setSize(I)V

    goto :goto_c

    .line 1163
    :cond_16
    new-instance v29, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unknown part type "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1081
    .end local v3    # "bodyDisposition":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v11    # "contentDisposition":Ljava/lang/StringBuilder;
    .end local v15    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v14    # "detector":Lcom/kingsoft/emailcommon/utility/CharsetDetector;
    .restart local v23    # "paramName":Ljava/lang/String;
    .restart local v24    # "paramValue":Ljava/lang/String;
    :catch_1
    move-exception v29

    goto/16 :goto_7

    .line 1070
    .end local v24    # "paramValue":Ljava/lang/String;
    .restart local v8    # "bytes":[B
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v22    # "out":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    :catch_2
    move-exception v16

    goto/16 :goto_9
.end method


# virtual methods
.method public appendMessages([Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 27
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1178
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 1180
    move-object/from16 v3, p1

    .local v3, "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    :try_start_0
    array-length v12, v3

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_b

    aget-object v13, v3, v10

    .line 1181
    .local v13, "message":Lcom/kingsoft/emailcommon/mail/Message;
    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v14

    .line 1182
    .local v14, "messageId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kingsoft/email/mail/store/ImapFolder;->MessageHasExistsInServerByMessageID(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1180
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1185
    :cond_1
    new-instance v15, Lcom/kingsoft/emailcommon/utility/CountingOutputStream;

    invoke-direct {v15}, Lcom/kingsoft/emailcommon/utility/CountingOutputStream;-><init>()V

    .line 1186
    .local v15, "out":Lcom/kingsoft/emailcommon/utility/CountingOutputStream;
    new-instance v5, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;

    invoke-direct {v5, v15}, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1187
    .local v5, "eolOut":Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;
    invoke-virtual {v13, v5}, Lcom/kingsoft/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1188
    invoke-virtual {v5}, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;->flush()V

    .line 1190
    const-string/jumbo v7, ""

    .line 1191
    .local v7, "flagList":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/kingsoft/emailcommon/mail/Message;->getFlags()[Lcom/kingsoft/emailcommon/mail/Flag;

    move-result-object v8

    .line 1192
    .local v8, "flags":[Lcom/kingsoft/emailcommon/mail/Flag;
    array-length v0, v8

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 1193
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v4, v8

    .local v4, "count":I
    :goto_2
    if-ge v9, v4, :cond_4

    .line 1195
    aget-object v6, v8, v9

    .line 1196
    .local v6, "flag":Lcom/kingsoft/emailcommon/mail/Flag;
    sget-object v20, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_3

    .line 1197
    const-string/jumbo v20, " \\SEEN"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1198
    :cond_3
    sget-object v20, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    move-object/from16 v0, v20

    if-ne v6, v0, :cond_2

    .line 1199
    const-string/jumbo v20, " \\FLAGGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1266
    .end local v4    # "count":I
    .end local v5    # "eolOut":Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;
    .end local v6    # "flag":Lcom/kingsoft/emailcommon/mail/Flag;
    .end local v7    # "flagList":Ljava/lang/String;
    .end local v8    # "flags":[Lcom/kingsoft/emailcommon/mail/Flag;
    .end local v9    # "i":I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v14    # "messageId":Ljava/lang/String;
    .end local v15    # "out":Lcom/kingsoft/emailcommon/utility/CountingOutputStream;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 1267
    .local v11, "ioe":Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v20

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    .end local v11    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v20

    .line 1202
    .restart local v4    # "count":I
    .restart local v5    # "eolOut":Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;
    .restart local v7    # "flagList":Ljava/lang/String;
    .restart local v8    # "flags":[Lcom/kingsoft/emailcommon/mail/Flag;
    .restart local v9    # "i":I
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    .restart local v14    # "messageId":Ljava/lang/String;
    .restart local v15    # "out":Lcom/kingsoft/emailcommon/utility/CountingOutputStream;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 1203
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1207
    .end local v4    # "count":I
    .end local v9    # "i":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "APPEND \"%s\" (%s) {%d}"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/kingsoft/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v7, v23, v24

    const/16 v24, 0x2

    invoke-virtual {v15}, Lcom/kingsoft/emailcommon/utility/CountingOutputStream;->getCount()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/kingsoft/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1214
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/kingsoft/email/mail/store/ImapConnection;->readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v16

    .line 1215
    .local v16, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1216
    new-instance v5, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;

    .end local v5    # "eolOut":Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1218
    .restart local v5    # "eolOut":Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;
    invoke-virtual {v13, v5}, Lcom/kingsoft/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1219
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;->write(I)V

    .line 1220
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;->write(I)V

    .line 1221
    invoke-virtual {v5}, Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;->flush()V

    .line 1225
    :cond_7
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1233
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 1234
    .local v2, "appendList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/imap/ImapList;->size()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    const/16 v20, 0x0

    const-string/jumbo v21, "APPENDUID"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1235
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v18

    .line 1236
    .local v18, "serverUid":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 1237
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1222
    .end local v2    # "appendList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v18    # "serverUid":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v20

    if-nez v20, :cond_7

    .line 1223
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->handleUntaggedResponse(Lcom/kingsoft/email/mail/store/imap/ImapResponse;)V

    goto :goto_4

    .line 1248
    .restart local v2    # "appendList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    :cond_9
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_0

    .line 1253
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, "HEADER MESSAGE-ID %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1255
    .local v19, "uids":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_a

    .line 1256
    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1261
    :cond_a
    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v21, "(HEADER MESSAGE-ID %s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    invoke-static/range {v20 .. v22}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1262
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_0

    .line 1263
    const/16 v20, 0x0

    aget-object v20, v19, v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/kingsoft/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1269
    .end local v2    # "appendList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v5    # "eolOut":Lcom/kingsoft/emailcommon/utility/EOLConvertingOutputStream;
    .end local v7    # "flagList":Ljava/lang/String;
    .end local v8    # "flags":[Lcom/kingsoft/emailcommon/mail/Flag;
    .end local v13    # "message":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v14    # "messageId":Ljava/lang/String;
    .end local v15    # "out":Lcom/kingsoft/emailcommon/utility/CountingOutputStream;
    .end local v16    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v19    # "uids":[Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1271
    return-void
.end method

.method public canCreate(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "type"    # Lcom/kingsoft/emailcommon/mail/Folder$FolderType;

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2
    .param p1, "expunge"    # Z

    .prologue
    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMessageCount:I

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 204
    monitor-exit p0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeConnection()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/kingsoft/emailcommon/mail/Folder;->closeConnection()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMessageCount:I

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 220
    :cond_0
    monitor-exit p0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method complexSearchForUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 545
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeComplexCommand(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 556
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    :goto_0
    return-object v3

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    :try_start_1
    const-string/jumbo v3, "EMail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ImapException e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 548
    sget-object v3, Lcom/kingsoft/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    goto :goto_0

    .line 549
    .end local v1    # "e":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v0

    .line 550
    .local v0, "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :try_start_2
    new-instance v3, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v4, "cancel"

    invoke-direct {v3, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 556
    .end local v0    # "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v3

    .line 551
    :catch_2
    move-exception v2

    .line 552
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v3, "EMail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ImapException ioe:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v3, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public copyMessages([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/Folder;Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 30
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "folder"    # Lcom/kingsoft/emailcommon/mail/Folder;
    .param p3, "callbacks"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 316
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v23, v0

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v25, "UID COPY %s \"%s\""

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/mail/store/ImapStore;->joinMessageUids([Lcom/kingsoft/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/kingsoft/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 321
    .local v20, "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v12, "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Message;>;"
    const/4 v5, 0x0

    .line 323
    .local v5, "handledUidPlus":Z
    move-object/from16 v2, p1

    .local v2, "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v11, v2, v7

    .line 324
    .local v11, "m":Lcom/kingsoft/emailcommon/mail/Message;
    invoke-virtual {v11}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 327
    .end local v11    # "m":Lcom/kingsoft/emailcommon/mail/Message;
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 329
    .local v18, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isBad()Z

    move-result v23

    if-nez v23, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isNo()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 330
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    .line 331
    .local v21, "responseText":Ljava/lang/String;
    new-instance v23, Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v2    # "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    .end local v5    # "handledUidPlus":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "len$":I
    .end local v12    # "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Message;>;"
    .end local v18    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v20    # "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    .end local v21    # "responseText":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 389
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v23

    throw v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v9    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v23

    .line 334
    .restart local v2    # "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    .restart local v5    # "handledUidPlus":Z
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "len$":I
    .restart local v12    # "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Message;>;"
    .restart local v18    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v20    # "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :cond_3
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 339
    if-eqz p3, :cond_1

    .line 342
    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 343
    .local v3, "copyResponse":Lcom/kingsoft/email/mail/store/imap/ImapList;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v19

    .line 344
    .local v19, "responseCode":Ljava/lang/String;
    const-string/jumbo v23, "COPYUID"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 345
    const/4 v5, 0x1

    .line 346
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 347
    .local v17, "origIdSet":Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, "newIdSet":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 349
    .local v16, "origIdArray":[Ljava/lang/String;
    invoke-static {v15}, Lcom/kingsoft/email/mail/store/imap/ImapUtility;->getImapSequenceValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 351
    .local v14, "newIdArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 352
    new-instance v23, Lcom/kingsoft/emailcommon/mail/MessagingException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Set length mis-match; orig IDs \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\"  new IDs \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 355
    :cond_4
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_1

    .line 356
    aget-object v8, v16, v6

    .line 357
    .local v8, "id":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingsoft/emailcommon/mail/Message;

    .line 358
    .restart local v11    # "m":Lcom/kingsoft/emailcommon/mail/Message;
    if-eqz v11, :cond_5

    .line 359
    aget-object v23, v14, v6

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/kingsoft/emailcommon/mail/Message;Ljava/lang/String;)V

    .line 355
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 365
    .end local v3    # "copyResponse":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v6    # "i":I
    .end local v8    # "id":Ljava/lang/String;
    .end local v11    # "m":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v14    # "newIdArray":[Ljava/lang/String;
    .end local v15    # "newIdSet":Ljava/lang/String;
    .end local v16    # "origIdArray":[Ljava/lang/String;
    .end local v17    # "origIdSet":Ljava/lang/String;
    .end local v18    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v19    # "responseCode":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_9

    if-nez v5, :cond_9

    .line 366
    move-object/from16 v0, p2

    check-cast v0, Lcom/kingsoft/email/mail/store/ImapFolder;

    move-object v13, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    .local v13, "newFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    :try_start_3
    sget-object v23, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 371
    move-object/from16 v2, p1

    array-length v10, v2

    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_8

    aget-object v11, v2, v7

    .line 372
    .restart local v11    # "m":Lcom/kingsoft/emailcommon/mail/Message;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "HEADER Message-Id \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/kingsoft/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 374
    .local v22, "searchString":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 375
    .restart local v14    # "newIdArray":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 376
    const/16 v23, 0x0

    aget-object v23, v14, v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;->onMessageUidChange(Lcom/kingsoft/emailcommon/mail/Message;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 383
    .end local v11    # "m":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v14    # "newIdArray":[Ljava/lang/String;
    .end local v22    # "searchString":Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    :try_start_4
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    .line 386
    .end local v7    # "i$":I
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->doSelect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 391
    .end local v13    # "newFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    .line 393
    return-void

    .line 379
    .restart local v13    # "newFolder":Lcom/kingsoft/email/mail/store/ImapFolder;
    :catch_1
    move-exception v4

    .line 381
    .local v4, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_5
    sget-object v23, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v24, "Failed to find message"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    invoke-static/range {v23 .. v25}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 383
    const/16 v23, 0x0

    :try_start_6
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    goto :goto_3

    .end local v4    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    throw v23
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
    .locals 11
    .param p1, "type"    # Lcom/kingsoft/emailcommon/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v5, :cond_1

    .line 286
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/ImapStore;->getConnection()Lcom/kingsoft/email/mail/store/ImapConnection;

    move-result-object v0

    .line 290
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :try_start_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "CREATE \"%s\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/kingsoft/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 305
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v4, :cond_0

    .line 306
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    .line 288
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 297
    :catch_0
    move-exception v2

    .line 304
    .local v2, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 305
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v3, :cond_2

    .line 306
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    .line 300
    .end local v2    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 301
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 305
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v4, :cond_3

    .line 306
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    :cond_3
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1403
    new-instance v0, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 2
    .param p1, "recurse"    # Z

    .prologue
    .line 426
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "ImapStore.delete() not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1395
    instance-of v0, p1, Lcom/kingsoft/email/mail/store/ImapFolder;

    if-eqz v0, :cond_0

    .line 1396
    check-cast p1, Lcom/kingsoft/email/mail/store/ImapFolder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1398
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    iget-boolean v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mExists:Z

    if-eqz v5, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v3

    .line 237
    :cond_1
    const/4 v0, 0x0

    .line 238
    .local v0, "connection":Lcom/kingsoft/email/mail/store/ImapConnection;
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v5, :cond_2

    .line 240
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/ImapStore;->getConnection()Lcom/kingsoft/email/mail/store/ImapConnection;

    move-result-object v0

    .line 244
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :try_start_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/kingsoft/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 249
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mExists:Z
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 264
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    goto :goto_0

    .line 242
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 252
    :catch_0
    move-exception v2

    .line 254
    .local v2, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_3
    invoke-virtual {v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    const/16 v5, 0x21

    if-ne v3, v5, :cond_4

    .line 255
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    .end local v2    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 264
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v4, :cond_3

    .line 265
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    :cond_3
    throw v3

    .line 263
    .restart local v2    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_4
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 264
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-nez v3, :cond_5

    .line 265
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/kingsoft/email/mail/store/ImapStore;->poolConnection(Lcom/kingsoft/email/mail/store/ImapConnection;)V

    :cond_5
    move v3, v4

    goto :goto_0

    .line 259
    .end local v2    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public expunge()[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 1277
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    const-string/jumbo v2, "EXPUNGE"

    invoke-virtual {v1, v2}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1283
    const/4 v1, 0x0

    return-object v1

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 7
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 710
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/ImapFolder;->fetchInternal([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    return-void

    .line 712
    :catch_0
    move-exception v6

    .line 713
    .local v6, "e":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 714
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->logLastDiscourse()V

    .line 717
    :cond_0
    throw v6
.end method

.method public fetchAttachment([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 4
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "attId"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 727
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/kingsoft/email/mail/store/ImapFolder;->fetchInternal([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 730
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->logLastDiscourse()V

    .line 733
    :cond_0
    throw v0
.end method

.method public fetchInternal([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 37
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "attId"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 739
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 916
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 743
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 744
    .local v25, "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Message;>;"
    move-object/from16 v4, p1

    .local v4, "arr$":[Lcom/kingsoft/emailcommon/mail/Message;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v23, v4, v19

    .line 745
    .local v23, "m":Lcom/kingsoft/emailcommon/mail/Message;
    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 759
    .end local v23    # "m":Lcom/kingsoft/emailcommon/mail/Message;
    :cond_1
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 761
    .local v12, "fetchFields":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string/jumbo v30, "UID"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 763
    const-string/jumbo v30, "FLAGS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_2
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 766
    const-string/jumbo v30, "INTERNALDATE"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 767
    const-string/jumbo v30, "RFC822.SIZE"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 768
    const-string/jumbo v30, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_3
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 771
    const-string/jumbo v30, "BODYSTRUCTURE"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_4
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 775
    sget-object v30, Lcom/kingsoft/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_5
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 778
    const-string/jumbo v30, "BODY.PEEK[]"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->getFirstPart()Lcom/kingsoft/emailcommon/mail/Part;

    move-result-object v14

    .line 783
    .local v14, "fetchPart":Lcom/kingsoft/emailcommon/mail/Part;
    if-eqz v14, :cond_7

    .line 784
    const-string/jumbo v30, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v30

    invoke-interface {v14, v0}, Lcom/kingsoft/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 788
    .local v26, "partIds":[Ljava/lang/String;
    if-eqz v26, :cond_7

    .line 789
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "BODY.PEEK["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v26    # "partIds":[Ljava/lang/String;
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v30, v0

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v32, "UID FETCH %s (%s)"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {p1 .. p1}, Lcom/kingsoft/email/mail/store/ImapStore;->joinMessageUids([Lcom/kingsoft/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v12}, Ljava/util/LinkedHashSet;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v35

    const/16 v36, 0x20

    invoke-static/range {v35 .. v36}, Lcom/kingsoft/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Lcom/kingsoft/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_8
    const/16 v27, 0x0

    .line 804
    .local v27, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/email/mail/store/ImapConnection;->readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v27

    .line 806
    const/16 v30, 0x1

    const-string/jumbo v31, "FETCH"

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v30

    if-nez v30, :cond_9

    .line 910
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    .line 912
    :goto_2
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v30

    if-eqz v30, :cond_8

    goto/16 :goto_0

    .line 809
    :cond_9
    const/16 v30, 0x2

    :try_start_3
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v13

    .line 810
    .local v13, "fetchList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    const-string/jumbo v30, "UID"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v29

    .line 812
    .local v29, "uid":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v30

    if-eqz v30, :cond_a

    .line 910
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 913
    .end local v13    # "fetchList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v27    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v29    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 914
    .local v21, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v30

    throw v30

    .line 814
    .end local v21    # "ioe":Ljava/io/IOException;
    .restart local v13    # "fetchList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .restart local v27    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .restart local v29    # "uid":Ljava/lang/String;
    :cond_a
    :try_start_5
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 815
    .local v24, "message":Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
    if-nez v24, :cond_b

    .line 910
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 817
    :cond_b
    :try_start_7
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 818
    const-string/jumbo v30, "FLAGS"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v16

    .line 820
    .local v16, "flags":Lcom/kingsoft/email/mail/store/imap/ImapList;
    const/16 v18, 0x0

    .local v18, "i":I
    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/imap/ImapList;->size()I

    move-result v9

    .local v9, "count":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v9, :cond_10

    .line 821
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v15

    .line 822
    .local v15, "flag":Lcom/kingsoft/email/mail/store/imap/ImapString;
    const-string/jumbo v30, "\\DELETED"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 823
    sget-object v30, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    .line 820
    :cond_c
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 824
    :cond_d
    const-string/jumbo v30, "\\ANSWERED"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 825
    sget-object v30, Lcom/kingsoft/emailcommon/mail/Flag;->ANSWERED:Lcom/kingsoft/emailcommon/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/kingsoft/emailcommon/mail/Flag;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 910
    .end local v9    # "count":I
    .end local v13    # "fetchList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v15    # "flag":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v16    # "flags":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v18    # "i":I
    .end local v24    # "message":Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
    .end local v29    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v30

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v30
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 826
    .restart local v9    # "count":I
    .restart local v13    # "fetchList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .restart local v15    # "flag":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .restart local v16    # "flags":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .restart local v18    # "i":I
    .restart local v24    # "message":Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
    .restart local v29    # "uid":Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string/jumbo v30, "\\SEEN"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 827
    sget-object v30, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    goto :goto_4

    .line 828
    :cond_f
    const-string/jumbo v30, "\\FLAGGED"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/kingsoft/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 829
    sget-object v30, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    goto :goto_4

    .line 833
    .end local v9    # "count":I
    .end local v15    # "flag":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v16    # "flags":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v18    # "i":I
    :cond_10
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 834
    const-string/jumbo v30, "INTERNALDATE"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v20

    .line 836
    .local v20, "internalDate":Ljava/util/Date;
    const-string/jumbo v30, "RFC822.SIZE"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v28

    .line 838
    .local v28, "size":I
    const-string/jumbo v30, "BODY[HEADER"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v17

    .line 841
    .local v17, "header":Ljava/io/InputStream;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 842
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 843
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 853
    .end local v17    # "header":Ljava/io/InputStream;
    .end local v20    # "internalDate":Ljava/util/Date;
    .end local v28    # "size":I
    :cond_11
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 854
    const-string/jumbo v30, "BODYSTRUCTURE"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v7

    .line 856
    .local v7, "bs":Lcom/kingsoft/email/mail/store/imap/ImapList;
    invoke-virtual {v7}, Lcom/kingsoft/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v30

    if-nez v30, :cond_12

    .line 858
    :try_start_a
    const-string/jumbo v30, "TEXT"

    new-instance v31, Ljava/lang/StringBuffer;

    const/16 v32, 0x10

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v7, v0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->parseBodyStructure(Lcom/kingsoft/email/mail/store/imap/ImapList;Lcom/kingsoft/emailcommon/mail/Part;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    :try_end_a
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 867
    .end local v7    # "bs":Lcom/kingsoft/email/mail/store/imap/ImapList;
    :cond_12
    :goto_5
    :try_start_b
    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_13

    sget-object v30, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 872
    :cond_13
    const-string/jumbo v30, "BODY[]"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 873
    .local v5, "body":Lcom/kingsoft/email/mail/store/imap/ImapString;
    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v6

    .line 874
    .local v6, "bodyStream":Ljava/io/InputStream;
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 876
    .end local v5    # "body":Lcom/kingsoft/email/mail/store/imap/ImapString;
    .end local v6    # "bodyStream":Ljava/io/InputStream;
    :cond_14
    if-eqz v14, :cond_15

    .line 877
    const-string/jumbo v30, "BODY["

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v6

    .line 879
    .restart local v6    # "bodyStream":Ljava/io/InputStream;
    const-string/jumbo v30, "Content-Transfer-Encoding"

    move-object/from16 v0, v30

    invoke-interface {v14, v0}, Lcom/kingsoft/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 882
    .local v11, "encodings":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 883
    .local v8, "contentTransferEncoding":Ljava/lang/String;
    if-eqz v11, :cond_18

    array-length v0, v11

    move/from16 v30, v0

    if-lez v30, :cond_18

    .line 884
    const/16 v30, 0x0

    aget-object v8, v11, v30
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 896
    :goto_6
    :try_start_c
    invoke-static {v6, v8}, Lcom/kingsoft/email/mail/store/ImapFolder;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v14, v0}, Lcom/kingsoft/emailcommon/mail/Part;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 906
    .end local v6    # "bodyStream":Ljava/io/InputStream;
    .end local v8    # "contentTransferEncoding":Ljava/lang/String;
    .end local v11    # "encodings":[Ljava/lang/String;
    :cond_15
    :goto_7
    if-eqz p5, :cond_16

    .line 907
    :try_start_d
    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/kingsoft/emailcommon/mail/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 910
    :cond_16
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_2

    .line 859
    .restart local v7    # "bs":Lcom/kingsoft/email/mail/store/imap/ImapList;
    :catch_1
    move-exception v10

    .line 860
    .local v10, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_f
    sget-boolean v30, Lcom/kingsoft/emailcommon/Logging;->LOGD:Z

    if-eqz v30, :cond_17

    .line 861
    sget-object v30, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v31, "Error handling message"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v10, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 863
    :cond_17
    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    goto/16 :goto_5

    .line 888
    .end local v7    # "bs":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v10    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v6    # "bodyStream":Ljava/io/InputStream;
    .restart local v8    # "contentTransferEncoding":Ljava/lang/String;
    .restart local v11    # "encodings":[Ljava/lang/String;
    :cond_18
    const-string/jumbo v8, "7bit"

    goto :goto_6

    .line 897
    :catch_2
    move-exception v10

    .line 902
    .local v10, "e":Ljava/lang/Exception;
    sget-object v30, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v31, "Error fetching body %s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v10, v32, v33

    invoke-static/range {v30 .. v32}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_7
.end method

.method public getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "uids":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 495
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    new-instance v2, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;)V

    .line 499
    :goto_1
    return-object v2

    .line 494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IIJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "endDate"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 626
    const/4 v11, 0x0

    .line 627
    .local v11, "uids":[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/kingsoft/email/mail/store/ImapFolder;->generateNumberRangeCommand(IIJZZ)Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "command":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMessages numberRange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 631
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 650
    :goto_0
    move-object/from16 v0, p5

    invoke-virtual {p0, v11, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v1

    return-object v1

    .line 632
    :catch_0
    move-exception v9

    .line 638
    .local v9, "e":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "query failed %s, trying alternate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v9, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 640
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/kingsoft/email/mail/store/ImapFolder;->generateNumberRangeCommand(IIJZZ)Ljava/lang/String;

    move-result-object v8

    .line 641
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Again getMessages numberRange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v8, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    .line 644
    const-string/jumbo v1, "EMail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 645
    :catch_1
    move-exception v10

    .line 646
    .local v10, "e2":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "query failed %s, fatal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-static {v1, v10, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 647
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public getMessages(IILcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 564
    if-lt p1, v4, :cond_0

    if-lt p2, v4, :cond_0

    if-ge p2, p1, :cond_1

    .line 565
    :cond_0
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v1, "Invalid range: %d %d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_1
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMessages number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 568
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%d:%d NOT DELETED"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 10
    .param p1, "startDate"    # J
    .param p3, "endDate"    # J
    .param p5, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 658
    const/4 v9, 0x0

    .line 659
    .local v9, "uids":[Ljava/lang/String;
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/ImapFolder;->generateDateRangeCommand(JJZ)Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "command":Ljava/lang/String;
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMessages dateRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 663
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 680
    :goto_0
    invoke-virtual {p0, v9, p5}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0

    .line 664
    :catch_0
    move-exception v7

    .line 670
    .local v7, "e":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "query failed %s, trying alternate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v7, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 672
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingsoft/email/mail/store/ImapFolder;->generateDateRangeCommand(JJZ)Ljava/lang/String;

    move-result-object v6

    .line 674
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v6, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_1
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_0

    .line 675
    :catch_1
    move-exception v8

    .line 676
    .local v8, "e2":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "query failed %s, fatal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v0, v8, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 677
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 6
    .param p1, "params"    # Lcom/android/emailcommon/service/SearchParams;
    .param p2, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 525
    .local v2, "filter":Ljava/lang/String;
    const-string/jumbo v0, "US-ASCII"

    .line 526
    .local v0, "charset":Ljava/lang/String;
    invoke-static {v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->isAsciiString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    const-string/jumbo v0, "UTF-8"

    .line 530
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "octetLength":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UID SEARCH CHARSET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " OR FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (OR TO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (OR CC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (OR SUBJECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " BODY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p0, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->complexSearchForUids(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v4

    return-object v4
.end method

.method public getMessages([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 688
    const-string/jumbo v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 690
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 5
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;

    .prologue
    .line 694
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 695
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 696
    aget-object v3, p1, v0

    .line 697
    .local v3, "uid":Ljava/lang/String;
    new-instance v1, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapFolder;)V

    .line 698
    .local v1, "message":Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    if-eqz p2, :cond_0

    .line 700
    invoke-interface {p2, v1}, Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/kingsoft/emailcommon/mail/Message;)V

    .line 695
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    .end local v1    # "message":Lcom/kingsoft/email/mail/store/ImapStore$ImapMessage;
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/kingsoft/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/kingsoft/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/kingsoft/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMode:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/kingsoft/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 931
    sget-object v0, Lcom/kingsoft/email/mail/store/ImapFolder;->PERMANENT_FLAGS:[Lcom/kingsoft/emailcommon/mail/Flag;

    return-object v0
.end method

.method getSearchUids(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 433
    .local v2, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string/jumbo v6, "SEARCH"

    invoke-virtual {v2, v5, v6}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 438
    invoke-virtual {v2, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v3

    .line 439
    .local v3, "s":Lcom/kingsoft/email/mail/store/imap/ImapString;
    invoke-virtual {v3}, Lcom/kingsoft/email/mail/store/imap/ImapString;->isString()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    invoke-virtual {v3}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "i":I
    .end local v2    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v3    # "s":Lcom/kingsoft/email/mail/store/imap/ImapString;
    :cond_2
    sget-object v5, Lcom/kingsoft/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method protected getStore()Lcom/kingsoft/email/mail/store/ImapStore;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 404
    const/4 v4, 0x0

    .line 405
    .local v4, "unreadMessageCount":I
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "STATUS \"%s\" (UNSEEN)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mName:Ljava/lang/String;

    iget-object v11, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    iget-object v11, v11, Lcom/kingsoft/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/kingsoft/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 410
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 411
    .local v2, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string/jumbo v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 412
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string/jumbo v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    goto :goto_0

    .line 420
    .end local v2    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_1
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    return v4

    .line 417
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v1

    .line 418
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v5, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v5
.end method

.method public isOpen()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMode:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v2, p1, :cond_1

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    const-string/jumbo v3, "NOOP"

    invoke-virtual {v2, v3}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    .line 155
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    :try_start_5
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore;->getConnection()Lcom/kingsoft/email/mail/store/ImapConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 157
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :try_start_6
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->doSelect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 172
    :try_start_7
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_7
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 177
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    .line 178
    throw v0

    .line 148
    .end local v0    # "e":Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_8
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    .line 179
    :catch_2
    move-exception v0

    .line 180
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    iput-boolean v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mExists:Z

    .line 181
    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    .line 182
    throw v0

    .line 152
    .end local v0    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_1
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V
    :try_end_9
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 157
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_2

    .line 169
    :catch_3
    move-exception v1

    .line 170
    .restart local v1    # "ioe":Ljava/io/IOException;
    :try_start_c
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 172
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    :try_start_d
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_d
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_2
.end method

.method public openInternal(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore;->getFreshConnection()Lcom/kingsoft/email/mail/store/ImapConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    :try_start_1
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->doSelect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v2
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;
    invoke-static {v0}, Lcom/kingsoft/common/PublicLogUtils;->ServiceErrLog(Ljava/lang/Exception;)V

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 123
    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    .line 124
    throw v0

    .line 125
    .end local v0    # "e":Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;
    :catch_2
    move-exception v0

    .line 126
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-static {v0}, Lcom/kingsoft/common/PublicLogUtils;->ServiceErrLog(Ljava/lang/Exception;)V

    .line 127
    iput-boolean v3, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mExists:Z

    .line 128
    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    .line 129
    throw v0
.end method

.method save(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1329
    .local v1, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->isSaved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1330
    invoke-virtual {v1, p1}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1331
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->getHashes()[Ljava/lang/Object;

    move-result-object v0

    .line 1334
    .local v0, "hash":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1335
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/emailcommon/provider/Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1336
    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mHash:[Ljava/lang/Object;

    goto :goto_0
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "searchCriteria"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/email/mail/store/ImapFolder;->searchForUids(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method searchForUids(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .param p1, "searchCriteria"    # Ljava/lang/String;
    .param p2, "swallowException"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 467
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UID SEARCH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "command":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v4, v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/ImapFolder;->getSearchUids(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "result":[Ljava/lang/String;
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "searchForUids \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "result":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 472
    :catch_0
    move-exception v2

    .line 473
    .local v2, "me":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    :try_start_1
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ImapException in search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v2, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    if-eqz p2, :cond_0

    .line 475
    sget-object v3, Lcom/kingsoft/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    goto :goto_0

    .line 477
    :cond_0
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .end local v2    # "me":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v4

    .line 479
    :catch_1
    move-exception v1

    .line 480
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException in search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v1, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v4, v1}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V
    .locals 12
    .param p1, "messages"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "flags"    # [Lcom/kingsoft/emailcommon/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1289
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->checkOpen()V

    .line 1291
    const-string/jumbo v0, ""

    .line 1292
    .local v0, "allFlags":Ljava/lang/String;
    array-length v6, p2

    if-lez v6, :cond_5

    .line 1293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    .local v3, "flagList":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v1, p2

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 1295
    aget-object v2, p2, v4

    .line 1296
    .local v2, "flag":Lcom/kingsoft/emailcommon/mail/Flag;
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_1

    .line 1297
    const-string/jumbo v6, " \\SEEN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Flag;->DELETED:Lcom/kingsoft/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_2

    .line 1299
    const-string/jumbo v6, " \\DELETED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1300
    :cond_2
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Flag;->FLAGGED:Lcom/kingsoft/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_3

    .line 1301
    const-string/jumbo v6, " \\FLAGGED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1302
    :cond_3
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Flag;->ANSWERED:Lcom/kingsoft/emailcommon/mail/Flag;

    if-ne v2, v6, :cond_0

    .line 1303
    const-string/jumbo v6, " \\ANSWERED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1306
    .end local v2    # "flag":Lcom/kingsoft/emailcommon/mail/Flag;
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1309
    .end local v1    # "count":I
    .end local v3    # "flagList":Ljava/lang/StringBuilder;
    .end local v4    # "i":I
    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/kingsoft/email/mail/store/ImapStore;->joinMessageUids([Lcom/kingsoft/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    const/4 v11, 0x1

    if-eqz p3, :cond_6

    const-string/jumbo v6, "+"

    :goto_2
    aput-object v6, v10, v11

    const/4 v6, 0x2

    aput-object v0, v10, v6

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    .line 1320
    return-void

    .line 1309
    :cond_6
    :try_start_1
    const-string/jumbo v6, "-"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1315
    :catch_0
    move-exception v5

    .line 1316
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Lcom/kingsoft/email/mail/store/ImapFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-direct {p0, v6, v5}, Lcom/kingsoft/email/mail/store/ImapFolder;->ioExceptionHandler(Lcom/kingsoft/email/mail/store/ImapConnection;Ljava/io/IOException;)Lcom/kingsoft/emailcommon/mail/MessagingException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1318
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->destroyResponses()V

    throw v6
.end method
