.class public Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;
.super Lcom/kingsoft/exchange/service/EasServerConnection;
.source "EasOutboxSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;,
        Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;,
        Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;
    }
.end annotation


# static fields
.field public static final MAILBOX_KEY_AND_NOT_SEND_FAILED:Ljava/lang/String; = "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

.field public static final SEND_FAILED:I = 0x1

.field public static final SEND_MAIL_TIMEOUT:J = 0xdbba0L


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private final mMailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p3, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 82
    iput-object p3, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mCacheDir:Ljava/io/File;

    .line 84
    return-void
.end method

.method private checkAttSize(Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 8
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    .line 655
    iget-object v4, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 657
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-eqz v1, :cond_2

    .line 658
    const/4 v3, 0x0

    .line 659
    .local v3, "totalSize":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 660
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_0

    .line 661
    int-to-long v4, v3

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v4, v6

    long-to-int v3, v4

    goto :goto_0

    .line 665
    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    const/high16 v4, 0x500000

    if-le v3, v4, :cond_2

    .line 666
    const/4 v4, 0x1

    .line 669
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "totalSize":I
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getModeTag(ZLcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)I
    .locals 1
    .param p0, "isEas14"    # Z
    .param p1, "smartSendInfo"    # Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    .prologue
    .line 736
    if-eqz p0, :cond_2

    .line 737
    if-nez p1, :cond_0

    .line 738
    const/16 v0, 0x545

    .line 745
    :goto_0
    return v0

    .line 739
    :cond_0
    invoke-virtual {p1}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->isForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    const/16 v0, 0x546

    goto :goto_0

    .line 742
    :cond_1
    const/16 v0, 0x547

    goto :goto_0

    .line 745
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private outlookExchangeEmail(Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 12
    .param p1, "msg"    # Lcom/android/emailcommon/provider/EmailContent$Message;

    .prologue
    const/4 v9, 0x0

    .line 709
    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v10}, Lcom/kingsoft/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Address;

    move-result-object v0

    .line 710
    .local v0, "address":Lcom/kingsoft/emailcommon/mail/Address;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v9

    .line 714
    :cond_1
    invoke-virtual {v0}, Lcom/kingsoft/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, "email":Ljava/lang/String;
    const-string/jumbo v10, "@"

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 716
    .local v7, "index":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    .line 720
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 724
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "domin":Ljava/lang/String;
    iget-object v10, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, "filters":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v4, v1, v6

    .line 727
    .local v4, "filter":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 728
    const/4 v9, 0x1

    goto :goto_0

    .line 726
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    .locals 32
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "smartSendInfo"    # Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    .prologue
    .line 431
    :try_start_0
    const-string/jumbo v9, "eas_"

    const-string/jumbo v10, "tmp"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mCacheDir:Ljava/io/File;

    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 439
    .local v31, "tmpFile":Ljava/io/File;
    const/16 v24, 0x0

    .line 441
    .local v24, "isEas14":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v9, v9, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    move-result-wide v9

    const-wide/high16 v11, 0x402c000000000000L

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    const/16 v24, 0x1

    .line 444
    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->getModeTag(ZLcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)I

    move-result v8

    .line 446
    .local v8, "modeTag":I
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->writeMessageToTempFile(Ljava/io/File;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v8, 0x0

    const/16 v9, 0xb

    move-object/from16 v7, p1

    invoke-static/range {v4 .. v9}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    .end local v8    # "modeTag":I
    const/4 v9, 0x0

    .line 502
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 503
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    .line 597
    .end local v24    # "isEas14":Z
    .end local v31    # "tmpFile":Ljava/io/File;
    :cond_0
    :goto_1
    return v9

    .line 432
    :catch_0
    move-exception v14

    .line 433
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v8, 0x0

    const/16 v9, 0xb

    move-object/from16 v7, p1

    invoke-static/range {v4 .. v9}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZI)V

    .line 434
    const/4 v9, 0x0

    goto :goto_1

    .line 441
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v24    # "isEas14":Z
    .restart local v31    # "tmpFile":Ljava/io/File;
    :cond_1
    const/16 v24, 0x0

    goto :goto_0

    .line 453
    .restart local v8    # "modeTag":I
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, v31

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 460
    .local v5, "fileStream":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 462
    .local v6, "fileLength":J
    if-eqz v24, :cond_6

    .line 463
    new-instance v4, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailEntity;-><init>(Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)V

    .line 470
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    :goto_2
    const-string/jumbo v22, "SendMail"

    .line 471
    .local v22, "cmd":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 473
    if-eqz v24, :cond_8

    .line 474
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->isForward()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v22, "SmartForward"

    .line 480
    :cond_3
    :goto_3
    if-nez v24, :cond_4

    .line 481
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&SaveInSent=T"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v22

    .line 485
    :cond_4
    const-wide/32 v9, 0xdbba0

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v9, v10}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;J)Lcom/kingsoft/exchange/EasResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v28

    .line 496
    .local v28, "resp":Lcom/kingsoft/exchange/EasResponse;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 502
    :goto_4
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 503
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    .line 508
    :cond_5
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->getStatus()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v21

    .line 509
    .local v21, "code":I
    const/16 v9, 0xc8

    move/from16 v0, v21

    if-ne v0, v9, :cond_c

    .line 512
    if-eqz v24, :cond_11

    .line 515
    :try_start_8
    new-instance v27, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;

    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-direct {v0, v9, v8}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;-><init>(Ljava/io/InputStream;I)V

    .line 517
    .local v27, "p":Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->parse()Z

    .line 519
    invoke-virtual/range {v27 .. v27}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;->getStatus()I

    move-result v30

    .line 520
    .local v30, "status":I
    invoke-static/range {v30 .. v30}, Lcom/kingsoft/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 521
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v19, 0x0

    const/16 v20, 0xe

    move-object/from16 v18, p1

    invoke-static/range {v15 .. v20}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZI)V
    :try_end_8
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 522
    const/4 v9, 0x0

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 454
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .end local v6    # "fileLength":J
    .end local v21    # "code":I
    .end local v22    # "cmd":Ljava/lang/String;
    .end local v27    # "p":Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;
    .end local v28    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .end local v30    # "status":I
    :catch_1
    move-exception v14

    .line 455
    .local v14, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v5, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v8, 0x0

    const/16 v9, 0xb

    move-object/from16 v7, p1

    invoke-static/range {v4 .. v9}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZI)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 456
    .end local v8    # "modeTag":I
    const/4 v9, 0x0

    .line 502
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 503
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 466
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileLength":J
    .restart local v8    # "modeTag":I
    :cond_6
    :try_start_a
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    goto/16 :goto_2

    .line 474
    .restart local v22    # "cmd":Ljava/lang/String;
    :cond_7
    const-string/jumbo v22, "SmartReply"

    goto/16 :goto_3

    .line 476
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->generateSmartSendCmd()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_3

    .line 486
    :catch_2
    move-exception v14

    .line 487
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v13, 0x0

    move-object/from16 v12, p1

    invoke-static/range {v9 .. v14}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZLjava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 488
    const/4 v9, 0x0

    .line 496
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 502
    :goto_5
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 503
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 489
    .end local v14    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 490
    .local v14, "e":Ljava/security/cert/CertificateException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v19, 0x0

    const/16 v20, 0xd

    move-object/from16 v18, p1

    invoke-static/range {v15 .. v20}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZI)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 491
    const/4 v9, 0x0

    .line 496
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 502
    :goto_6
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 503
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 495
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "fileLength":J
    .end local v14    # "e":Ljava/security/cert/CertificateException;
    .end local v22    # "cmd":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 496
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 499
    :goto_7
    :try_start_f
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 502
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .end local v8    # "modeTag":I
    :catchall_1
    move-exception v9

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 503
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    :cond_9
    throw v9

    .line 523
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileLength":J
    .restart local v8    # "modeTag":I
    .restart local v21    # "code":I
    .restart local v22    # "cmd":Ljava/lang/String;
    .restart local v27    # "p":Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;
    .restart local v28    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v30    # "status":I
    :cond_a
    const/16 v9, 0x96

    move/from16 v0, v30

    if-ne v0, v9, :cond_b

    if-eqz p2, :cond_b

    .line 526
    const/4 v9, 0x0

    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    :try_end_10
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v9

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 529
    :cond_b
    :try_start_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v19, 0x0

    const/16 v20, 0xf

    move-object/from16 v18, p1

    invoke-static/range {v15 .. v21}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZII)V
    :try_end_11
    .catch Lcom/kingsoft/exchange/adapter/Parser$EmptyStreamException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 530
    const/4 v9, 0x0

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 533
    .end local v27    # "p":Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SendMailParser;
    .end local v30    # "status":I
    :catch_4
    move-exception v14

    .line 535
    .local v14, "e":Ljava/io/IOException;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v13, 0x0

    move-object/from16 v12, p1

    invoke-static/range {v9 .. v14}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZLjava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 536
    const/4 v9, 0x0

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 539
    .end local v14    # "e":Ljava/io/IOException;
    :cond_c
    const/16 v9, 0x1f4

    move/from16 v0, v21

    if-ne v0, v9, :cond_d

    if-eqz p2, :cond_d

    .line 541
    const/4 v9, 0x0

    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-result v9

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 542
    :cond_d
    const/16 v9, 0x1f4

    move/from16 v0, v21

    if-ne v0, v9, :cond_e

    :try_start_14
    invoke-direct/range {p0 .. p1}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->checkAttSize(Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 543
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v19, 0x1

    const/16 v20, 0x1389

    move-object/from16 v18, p1

    invoke-static/range {v15 .. v21}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZII)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 544
    const/4 v9, 0x0

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 546
    :cond_e
    :try_start_15
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->isAuthError()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 549
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v26

    .line 550
    .local v26, "nc":Lcom/kingsoft/email/NotificationController;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, v26

    invoke-static {v9, v10, v11, v0}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showSendLoginError(Landroid/content/Context;JLcom/kingsoft/email/NotificationController;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 552
    const/4 v9, 0x0

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 553
    .end local v26    # "nc":Lcom/kingsoft/email/NotificationController;
    :cond_f
    :try_start_16
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->isProvisionError()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v19, 0x0

    const/16 v20, 0xe

    move-object/from16 v18, p1

    invoke-static/range {v15 .. v21}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZII)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 555
    const/4 v9, 0x0

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 558
    :cond_10
    :try_start_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v19, 0x0

    const/16 v20, 0xc

    move-object/from16 v18, p1

    invoke-static/range {v15 .. v21}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showEasSendError(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;ZII)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 559
    const/4 v9, 0x0

    .line 563
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    goto/16 :goto_1

    .line 531
    :catch_5
    move-exception v9

    .line 563
    :cond_11
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    .line 583
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v12, 0x5

    invoke-static {v9, v10, v11, v12}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v29

    .line 584
    .local v29, "sentFolder":Lcom/android/emailcommon/provider/Mailbox;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .local v25, "moveToSentValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "mailboxKey"

    move-object/from16 v0, v29

    iget-wide v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 586
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v10, -0x300004

    and-int v23, v9, v10

    .line 590
    .local v23, "flags":I
    const-string/jumbo v9, "flags"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string/jumbo v10, "syncServerId"

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v9, v10, v0, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->hashCode()I

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Lcom/kingsoft/email/service/CheckSendResultReceiver;->clearSentAlarmById(Landroid/content/Context;I)V

    .line 597
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 563
    .end local v21    # "code":I
    .end local v23    # "flags":I
    .end local v25    # "moveToSentValues":Landroid/content/ContentValues;
    .end local v29    # "sentFolder":Lcom/android/emailcommon/provider/Mailbox;
    :catchall_2
    move-exception v9

    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/exchange/EasResponse;->close()V

    throw v9

    .line 497
    .end local v28    # "resp":Lcom/kingsoft/exchange/EasResponse;
    .restart local v14    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto/16 :goto_5

    .local v14, "e":Ljava/security/cert/CertificateException;
    :catch_7
    move-exception v10

    goto/16 :goto_6

    .end local v14    # "e":Ljava/security/cert/CertificateException;
    .restart local v28    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_8
    move-exception v9

    goto/16 :goto_4

    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "fileLength":J
    .end local v22    # "cmd":Ljava/lang/String;
    .end local v28    # "resp":Lcom/kingsoft/exchange/EasResponse;
    :catch_9
    move-exception v10

    goto/16 :goto_7

    .line 442
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .end local v8    # "modeTag":I
    :catch_a
    move-exception v9

    goto/16 :goto_0
.end method

.method private writeMessageToTempFile(Ljava/io/File;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    .locals 11
    .param p1, "tmpFile"    # Ljava/io/File;
    .param p2, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p3, "smartSendInfo"    # Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 683
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .local v2, "fileStream":Ljava/io/FileOutputStream;
    if-eqz p3, :cond_0

    move v3, v9

    .line 690
    .local v3, "smartSend":Z
    :goto_0
    if-eqz v3, :cond_1

    :try_start_1
    iget-object v5, p3, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->mRequiredAtts:Ljava/util/ArrayList;

    .line 692
    .local v5, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_1
    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->outlookExchangeEmail(Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v6

    .line 693
    .local v6, "easAddInline":Z
    :goto_2
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/io/OutputStream;ZZLjava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move v0, v9

    .line 705
    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v3    # "smartSend":Z
    .end local v5    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v6    # "easAddInline":Z
    :goto_4
    return v0

    .line 684
    :catch_0
    move-exception v7

    .line 685
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to create message file"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v7, v4, v8

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v8

    .line 686
    goto :goto_4

    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileStream":Ljava/io/FileOutputStream;
    :cond_0
    move v3, v8

    .line 689
    goto :goto_0

    .line 690
    .restart local v3    # "smartSend":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_2
    move v6, v8

    .line 692
    goto :goto_2

    .line 700
    .restart local v6    # "easAddInline":Z
    :catch_1
    move-exception v7

    .line 702
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to close file - should not happen"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v7, v4, v8

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 694
    .end local v5    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v6    # "easAddInline":Z
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 695
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to write message file"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v4, v10

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 699
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v7    # "e":Ljava/lang/Exception;
    :goto_5
    move v0, v8

    .line 703
    goto :goto_4

    .line 700
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 702
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Failed to close file - should not happen"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v7, v4, v8

    invoke-static {v0, v1, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    .line 698
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 699
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 703
    :goto_6
    throw v0

    .line 700
    :catch_4
    move-exception v7

    .line 702
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to close file - should not happen"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v8

    invoke-static {v1, v4, v9}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6
.end method


# virtual methods
.method public performSync()V
    .locals 14

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 90
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "mailboxKey=? and (syncServerId is null or syncServerId<3)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 96
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 98
    .local v9, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-virtual {v9, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)V

    .line 99
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v1, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 105
    .local v7, "isConversationCacheAvailable":Z
    const-wide/16 v10, -0x1

    .line 106
    .local v10, "resourceKey":J
    if-eqz v7, :cond_1

    .line 107
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodySourceKey(Landroid/content/Context;J)J

    move-result-wide v10

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1, v9}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;->getSmartSendInfo(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->sendOneMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/exchange/service/EasOutboxSyncHandler$SmartSendInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 132
    .end local v7    # "isConversationCacheAvailable":Z
    .end local v9    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v10    # "resourceKey":J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_3
    return-void

    .line 119
    .restart local v7    # "isConversationCacheAvailable":Z
    .restart local v9    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v10    # "resourceKey":J
    :cond_4
    :try_start_1
    iget v0, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f1001ad

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 124
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v8

    .line 126
    .local v8, "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/kingsoft/mail/preferences/MailPrefs;->removeQuickReplyCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v7    # "isConversationCacheAvailable":Z
    .end local v8    # "mailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    .end local v9    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v10    # "resourceKey":J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 122
    .restart local v7    # "isConversationCacheAvailable":Z
    .restart local v9    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v10    # "resourceKey":J
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EasOutboxSyncHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f10012c

    invoke-static {v0, v1}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
