.class Lcom/kingsoft/email/mail/store/ImapConnection;
.super Ljava/lang/Object;
.source "ImapConnection.java"


# static fields
.field public static final CAPABILITY_ID:I = 0x1

.field public static final CAPABILITY_IDLE:I = 0x10

.field public static final CAPABILITY_NAMESPACE:I = 0x2

.field public static final CAPABILITY_STARTTLS:I = 0x4

.field public static final CAPABILITY_UIDPLUS:I = 0x8

.field private static final DEBUG_FORCE_SEND_ID:Z = false

.field private static final DISCOURSE_LOGGER_SIZE:I = 0x40

.field private static final IMAP_REDACTED_LOG:Ljava/lang/String; = "[IMAP command redacted]"


# instance fields
.field private mCapabilities:I

.field private final mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

.field private mIdPhrase:Ljava/lang/String;

.field private mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

.field private mLoginPhrase:Ljava/lang/String;

.field private final mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

.field mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "store"    # Lcom/kingsoft/email/mail/store/ImapStore;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/ImapConnection;->setStore(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private createParser()V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 238
    new-instance v0, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    invoke-direct {v0, v1, v2}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/email/mail/transport/DiscourseLogger;)V

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    .line 239
    return-void
.end method

.method private doGetNamespace(Z)V
    .locals 12
    .param p1, "hasNamespaceCapability"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 496
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v7

    if-nez v7, :cond_2

    .line 497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 500
    .local v6, "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    const-string/jumbo v7, "NAMESPACE"

    invoke-virtual {p0, v7}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 510
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 511
    .local v5, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const-string/jumbo v7, "NAMESPACE"

    invoke-virtual {v5, v10, v7}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 512
    invoke-virtual {v5, v11}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 513
    .local v3, "namespaceList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    invoke-virtual {v3, v10}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 514
    .local v2, "namespace":Lcom/kingsoft/email/mail/store/imap/ImapList;
    invoke-virtual {v2, v10}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "namespaceString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 516
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/kingsoft/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kingsoft/email/mail/store/ImapStore;->setPathPrefix(Ljava/lang/String;)V

    .line 517
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v2, v11}, Lcom/kingsoft/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kingsoft/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 501
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "namespace":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v3    # "namespaceList":Lcom/kingsoft/email/mail/store/imap/ImapList;
    .end local v4    # "namespaceString":Ljava/lang/String;
    .end local v5    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v1

    .line 503
    .local v1, "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 504
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 522
    .end local v1    # "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    .end local v6    # "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    return-void

    .line 506
    .restart local v6    # "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private doGetPathSeparator()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 564
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->isUserPrefixSet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 568
    .local v3, "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :try_start_0
    const-string/jumbo v4, "LIST \"\" \"\""

    invoke-virtual {p0, v4}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 578
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 579
    .local v2, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const-string/jumbo v4, "LIST"

    invoke-virtual {v2, v7, v4}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingsoft/email/mail/store/ImapStore;->setPathSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 569
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v1

    .line 571
    .local v1, "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 572
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 584
    .end local v1    # "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    .end local v3    # "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :cond_2
    return-void

    .line 574
    .restart local v3    # "responseList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private doLogin()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 532
    :try_start_0
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    return-void

    .line 533
    :catch_0
    move-exception v2

    .line 534
    .local v2, "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-boolean v5, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 535
    sget-object v5, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 537
    :cond_0
    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 538
    :cond_1
    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/emailcommon/utility/Utility;->toGB18030(Ljava/lang/String;)[B

    move-result-object v1

    .line 539
    .local v1, "gb18030":[B
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/emailcommon/utility/Utility;->toGB2312(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 540
    .local v4, "string":Ljava/lang/String;
    new-instance v5, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 542
    .end local v1    # "gb18030":[B
    .end local v4    # "string":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v2}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 544
    .end local v2    # "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    :catch_1
    move-exception v0

    .line 545
    .local v0, "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    new-instance v5, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v6, "cancel"

    invoke-direct {v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 546
    .end local v0    # "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :catch_2
    move-exception v3

    .line 547
    .local v3, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    new-instance v5, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    invoke-direct {v5, v8, v3}, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private doSendId(ZLjava/lang/String;)V
    .locals 1
    .param p1, "hasIdCapability"    # Z
    .param p2, "capabilities"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->doSendId(ZLjava/lang/String;I)V

    .line 435
    return-void
.end method

.method private doSendId(ZLjava/lang/String;I)V
    .locals 6
    .param p1, "hasIdCapability"    # Z
    .param p2, "capabilities"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 445
    if-nez p1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v3}, Lcom/kingsoft/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".secureserver.net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    const-string/jumbo v2, ""

    .line 453
    .local v2, "mUserAgent":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 461
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4, v0, p2}, Lcom/kingsoft/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    if-eqz v2, :cond_2

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    .line 473
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 478
    .local v1, "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    sget-boolean v3, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 479
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 455
    .end local v1    # "ie":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    :pswitch_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-static {v3, v4, v0, p2}, Lcom/kingsoft/email/mail/store/ImapStore;->getImapIdNetEasy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mIdPhrase:Ljava/lang/String;

    goto :goto_1

    .line 481
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private doStartTls(Z)Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .locals 3
    .param p1, "hasStartTlsCapability"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->canTryTlsSecurity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    if-eqz p1, :cond_0

    .line 596
    const-string/jumbo v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 598
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->reopenTls()V

    .line 599
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->createParser()V

    .line 601
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->queryCapabilities()Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    .line 603
    :cond_0
    sget-boolean v0, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 604
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "TLS not supported but required"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 606
    :cond_1
    new-instance v0, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 609
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCapable(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 203
    iget v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryCapabilities()Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "capabilityResponse":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const-string/jumbo v3, "CAPABILITY"

    invoke-virtual {p0, v3}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 423
    .local v2, "r":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    const-string/jumbo v4, "CAPABILITY"

    invoke-virtual {v2, v3, v4}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    move-object v0, v2

    .line 428
    .end local v2    # "r":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_1
    if-nez v0, :cond_2

    .line 429
    new-instance v3, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v4, "Invalid CAPABILITY response received"

    invoke-direct {v3, v4}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 431
    :cond_2
    return-object v0
.end method

.method private setCapabilities(Lcom/kingsoft/email/mail/store/imap/ImapResponse;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .prologue
    .line 212
    const-string/jumbo v0, "ID"

    invoke-virtual {p1, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    .line 215
    :cond_0
    const-string/jumbo v0, "NAMESPACE"

    invoke-virtual {p1, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    .line 218
    :cond_1
    const-string/jumbo v0, "UIDPLUS"

    invoke-virtual {p1, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    .line 221
    :cond_2
    const-string/jumbo v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    .line 224
    :cond_3
    const-string/jumbo v0, "IDLE"

    invoke-virtual {p1, v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    iget v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mCapabilities:I

    .line 227
    :cond_4
    return-void
.end method

.method private toCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 328
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 338
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 332
    .restart local p1    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 333
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 334
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    goto :goto_0

    .line 337
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->close()V

    .line 192
    iput-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 195
    iput-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    .line 196
    iput-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    .line 197
    return-void
.end method

.method destroyResponses()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    .line 245
    :cond_0
    return-void
.end method

.method executeComplexCommand(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/store/ImapConnection;->sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->getCommandResponses(Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    invoke-static {v0}, Lcom/kingsoft/common/PublicLogUtils;->ServiceErrLog(Ljava/lang/Exception;)V

    .line 313
    new-instance v1, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v2, "cancel"

    invoke-direct {v1, v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method executeSimpleCommand(Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;ZLcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    invoke-static {v0}, Lcom/kingsoft/common/PublicLogUtils;->ServiceErrLog(Ljava/lang/Exception;)V

    .line 323
    new-instance v1, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v2, "cancel"

    invoke-direct {v1, v2}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method executeSimpleCommand(Ljava/lang/String;ZLcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .param p3, "handler"    # Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/email/mail/store/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 396
    invoke-virtual {p0, p3}, Lcom/kingsoft/email/mail/store/ImapConnection;->getCommandResponses(Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCommandResponses(Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;
    .locals 8
    .param p1, "handler"    # Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/imap/ImapResponse;>;"
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    if-nez v4, :cond_0

    .line 355
    new-instance v4, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    invoke-direct {v4, v5, v6}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/kingsoft/email/mail/transport/DiscourseLogger;)V

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 360
    .local v1, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    if-eqz p1, :cond_1

    .line 363
    invoke-interface {p1, v1}, Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;->handleAsyncUntaggedResponse(Lcom/kingsoft/email/mail/store/imap/ImapResponse;)V

    .line 366
    :cond_1
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v4

    if-nez v4, :cond_3

    .line 368
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "toString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/kingsoft/email/mail/store/imap/ImapString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "alert":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    const-string/jumbo v4, "GB18030"

    invoke-direct {p0, v3, v4}, Lcom/kingsoft/email/mail/store/ImapConnection;->toCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    :goto_0
    new-instance v4, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;

    invoke-direct {v4, v3, v0}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 374
    :cond_2
    const-string/jumbo v4, "GB18030"

    invoke-direct {p0, v0, v4}, Lcom/kingsoft/email/mail/store/ImapConnection;->toCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    .end local v0    # "alert":Ljava/lang/String;
    .end local v3    # "toString":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public isIdleCapable()Z
    .locals 1

    .prologue
    .line 618
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method isTransportOpenForTest()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logLastDiscourse()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 615
    return-void
.end method

.method open()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 183
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    if-nez v7, :cond_1

    .line 120
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/store/ImapStore;->cloneTransport()Lcom/kingsoft/email/mail/transport/MailTransport;

    move-result-object v7

    iput-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    .line 123
    :cond_1
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->open()V

    .line 125
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->createParser()V

    .line 128
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .line 131
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->queryCapabilities()Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 133
    .local v1, "capabilities":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    const-string/jumbo v7, "STARTTLS"

    invoke-virtual {v1, v7}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 137
    .local v4, "hasStartTlsCapability":Z
    invoke-direct {p0, v4}, Lcom/kingsoft/email/mail/store/ImapConnection;->doStartTls(Z)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v6

    .line 138
    .local v6, "newCapabilities":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    if-eqz v6, :cond_2

    .line 139
    move-object v1, v6

    .line 145
    :cond_2
    invoke-direct {p0, v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->setCapabilities(Lcom/kingsoft/email/mail/store/imap/ImapResponse;)V

    .line 146
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "capabilityString":Ljava/lang/String;
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-static {v7}, Lcom/kingsoft/special/NetEasyHandle;->fromNetEasy(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 150
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v2, v8}, Lcom/kingsoft/email/mail/store/ImapConnection;->doSendId(ZLjava/lang/String;I)V

    .line 156
    :goto_1
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->doLogin()V

    .line 159
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/ImapConnection;->doGetNamespace(Z)V

    .line 162
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->doGetPathSeparator()V

    .line 164
    iget-object v7, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/store/ImapStore;->ensurePrefixIsValid()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    goto :goto_0

    .line 152
    :cond_3
    const/4 v7, 0x1

    :try_start_1
    invoke-direct {p0, v7}, Lcom/kingsoft/email/mail/store/ImapConnection;->isCapable(I)Z

    move-result v7

    invoke-direct {p0, v7, v2}, Lcom/kingsoft/email/mail/store/ImapConnection;->doSendId(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/kingsoft/email/mail/attachment/AttachmentCancelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 165
    .end local v1    # "capabilities":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .end local v2    # "capabilityString":Ljava/lang/String;
    .end local v4    # "hasStartTlsCapability":Z
    .end local v6    # "newCapabilities":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Ljavax/net/ssl/SSLException;
    :try_start_2
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 167
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    :cond_4
    new-instance v7, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/kingsoft/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->destroyResponses()V

    throw v7

    .line 170
    :catch_1
    move-exception v0

    .line 171
    .local v0, "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :try_start_3
    new-instance v7, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v8, "cancel"

    invoke-direct {v7, v8}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 172
    .end local v0    # "cancelException":Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
    :catch_2
    move-exception v5

    .line 176
    .local v5, "ioe":Ljava/io/IOException;
    sget-boolean v7, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 177
    sget-object v7, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    :cond_5
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    .locals 1
    .param p1, "attId"    # J
    .param p3, "listener"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mParser:Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/imap/ImapResponseParser;->readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->open()V

    .line 267
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "tag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "commandToSend":Ljava/lang/String;
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    if-eqz p2, :cond_1

    const-string/jumbo v2, "[IMAP command redacted]"

    :goto_0
    invoke-virtual {v3, v0, v2}, Lcom/kingsoft/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "[IMAP command redacted]"

    .end local v0    # "commandToSend":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 271
    return-object v1

    .line 269
    .restart local v0    # "commandToSend":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method sendComplexCommand(Ljava/util/List;Z)Ljava/lang/String;
    .locals 8
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;,
            Lcom/kingsoft/email/mail/attachment/AttachmentCancelException;
        }
    .end annotation

    .prologue
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapConnection;->open()V

    .line 286
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "tag":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 288
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 289
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, "commandToSend":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v5, v0, v7}, Lcom/kingsoft/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v5, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_1

    const-string/jumbo v0, "[IMAP command redacted]"

    .end local v0    # "commandToSend":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v0}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .restart local v0    # "commandToSend":Ljava/lang/String;
    :cond_2
    const-wide/16 v5, -0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/kingsoft/email/mail/store/ImapConnection;->readResponse(JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    move-result-object v3

    .line 297
    .local v3, "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    invoke-virtual {v3}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v5

    if-nez v5, :cond_0

    .line 298
    new-instance v5, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v6, "Expected continuation request"

    invoke-direct {v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 305
    .end local v0    # "commandToSend":Ljava/lang/String;
    .end local v3    # "response":Lcom/kingsoft/email/mail/store/imap/ImapResponse;
    :cond_3
    return-object v4
.end method

.method public sendContinuation(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/kingsoft/email/mail/transport/MailTransport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mDiscourse:Lcom/kingsoft/email/mail/transport/DiscourseLogger;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mTransport:Lcom/kingsoft/email/mail/transport/MailTransport;

    invoke-virtual {v1, p1}, Lcom/kingsoft/email/mail/transport/MailTransport;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method setStore(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "store"    # Lcom/kingsoft/email/mail/store/ImapStore;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 103
    iput-object p2, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LOGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/kingsoft/email/mail/store/imap/ImapUtility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mLoginPhrase:Ljava/lang/String;

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapConnection;->mImapStore:Lcom/kingsoft/email/mail/store/ImapStore;

    .line 111
    return-void
.end method
