.class public abstract Lcom/kingsoft/email/service/EmailServiceStub;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "EmailServiceStub.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;
    }
.end annotation


# static fields
.field private static final MAILBOX_COLUMN_ID:I = 0x0

.field private static final MAILBOX_COLUMN_SERVER_ID:I = 0x1

.field private static final MAILBOX_COLUMN_TYPE:I = 0x2

.field private static final MAILBOX_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/email/service/EmailServiceStub;->MAILBOX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    .line 366
    return-void
.end method

.method public static sendMailImpl(Landroid/content/Context;J)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 563
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 564
    .local v11, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 565
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v10

    .line 567
    .local v10, "nc":Lcom/kingsoft/email/NotificationController;
    iget-wide v4, v11, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v16

    .line 568
    .local v16, "outboxId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-nez v4, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 572
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "mailboxKey=? and (syncServerId is null or syncServerId<3)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v24

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 578
    .local v12, "c":Landroid/database/Cursor;
    if-eqz v12, :cond_2

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gtz v4, :cond_3

    .line 658
    :cond_2
    if-eqz v12, :cond_0

    .line 659
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 581
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/kingsoft/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/kingsoft/email/mail/Sender;

    move-result-object v19

    .line 582
    .local v19, "sender":Lcom/kingsoft/email/mail/Sender;
    move-object/from16 v0, p0

    invoke-static {v11, v0}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v18

    .line 584
    .local v18, "remoteStore":Lcom/kingsoft/email/mail/Store;
    invoke-virtual/range {v18 .. v18}, Lcom/kingsoft/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 585
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v20

    .line 587
    .local v20, "sentFolder":Lcom/android/emailcommon/provider/Mailbox;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 588
    .local v14, "moveToSentValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "mailboxKey"

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 594
    .end local v20    # "sentFolder":Lcom/android/emailcommon/provider/Mailbox;
    :cond_4
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 595
    const-wide/16 v7, 0x0

    .line 596
    .local v7, "messageId":J
    if-eqz v14, :cond_5

    .line 597
    const-string/jumbo v4, "flags"

    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :cond_5
    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 602
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/kingsoft/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 603
    sget-boolean v4, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 604
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t send #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; unloaded attachments"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 611
    :catch_0
    move-exception v9

    .local v9, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    .line 612
    :try_start_3
    invoke-static/range {v4 .. v10}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->showSmtpSendError(Landroid/content/Context;JJLcom/kingsoft/emailcommon/mail/MessagingException;Lcom/kingsoft/email/NotificationController;)V
    :try_end_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 653
    .end local v7    # "messageId":J
    .end local v9    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v14    # "moveToSentValues":Landroid/content/ContentValues;
    .end local v18    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v19    # "sender":Lcom/kingsoft/email/mail/Sender;
    :catch_1
    move-exception v9

    .line 654
    .restart local v9    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_4
    instance-of v4, v9, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    if-eqz v4, :cond_6

    .line 655
    iget-wide v4, v11, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v6, 0x0

    invoke-virtual {v10, v4, v5, v9, v6}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 658
    :cond_6
    if-eqz v12, :cond_0

    .line 659
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 590
    .end local v9    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v18    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .restart local v19    # "sender":Lcom/kingsoft/email/mail/Sender;
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "moveToSentValues":Landroid/content/ContentValues;
    goto :goto_1

    .line 610
    .restart local v7    # "messageId":J
    :cond_8
    :try_start_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Lcom/kingsoft/email/mail/Sender;->sendMessage(J)V
    :try_end_5
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 616
    :try_start_6
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 619
    .local v22, "syncedUri":Landroid/net/Uri;
    iget-wide v4, v11, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v7, v8}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllCachedAttachmentFiles(Landroid/content/Context;JJ)V

    .line 620
    if-eqz v14, :cond_b

    .line 623
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    .line 625
    .local v15, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    iget v4, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 626
    iget-wide v4, v11, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v7, v8}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 629
    :cond_9
    iget v4, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v5, -0x300004

    and-int v13, v4, v5

    .line 634
    .local v13, "flags":I
    const-string/jumbo v4, "flags"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    const/16 v21, 0x0

    .line 636
    .local v21, "serverId":Ljava/lang/String;
    const-string/jumbo v4, "syncServerId"

    move-object/from16 v0, v21

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 639
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/mail/preferences/MailPrefs;->getShowChatView()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 640
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/kingsoft/mail/chat/ChatCacheUtils;->updateChatCache(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_6
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 658
    .end local v7    # "messageId":J
    .end local v13    # "flags":I
    .end local v14    # "moveToSentValues":Landroid/content/ContentValues;
    .end local v15    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v18    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v19    # "sender":Lcom/kingsoft/email/mail/Sender;
    .end local v21    # "serverId":Ljava/lang/String;
    .end local v22    # "syncedUri":Landroid/net/Uri;
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_a

    .line 659
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v4

    .line 643
    .restart local v7    # "messageId":J
    .restart local v14    # "moveToSentValues":Landroid/content/ContentValues;
    .restart local v18    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .restart local v19    # "sender":Lcom/kingsoft/email/mail/Sender;
    .restart local v22    # "syncedUri":Landroid/net/Uri;
    :cond_b
    :try_start_7
    iget-wide v4, v11, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v7, v8}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 645
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 647
    .local v23, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 648
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 649
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/kingsoft/mail/utils/MailSendFailHandler;->sendSuccess(Landroid/content/Context;J)V
    :try_end_7
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 658
    .end local v7    # "messageId":J
    .end local v22    # "syncedUri":Landroid/net/Uri;
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_c
    if-eqz v12, :cond_0

    .line 659
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(Ljava/lang/String;)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/provider/AccountReconciler;->reconcileAccounts(Landroid/content/Context;)V

    .line 541
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v0, 0x3

    return v0
.end method

.method public hostChanged(J)V
    .locals 0
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 33
    .param p1, "cb"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p2, "attachmentId"    # J
    .param p4, "background"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    const/16 v25, 0x0

    .line 202
    .local v25, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v16

    .line 205
    .local v16, "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/16 v24, 0x0

    .line 207
    .local v24, "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSourceAttId:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v24

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSourceAttId:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v16

    .line 213
    :cond_0
    if-nez v16, :cond_2

    .line 214
    const-wide/16 v3, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    if-eqz v25, :cond_1

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    .line 360
    .end local v16    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v24    # "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    :goto_0
    return-void

    .line 218
    .restart local v16    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v24    # "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 220
    .local v3, "messageId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v22

    .line 222
    .local v22, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v22, :cond_3

    .line 223
    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    if-eqz v25, :cond_1

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 229
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/kingsoft/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 231
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    if-eqz v25, :cond_1

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 243
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v15

    .line 244
    .local v15, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v20

    .line 246
    .local v20, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v8, "sourceMessageKey"

    aput-object v8, v7, v2

    const-string/jumbo v8, "messageKey=?"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v5 .. v12}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 251
    .local v27, "sourceId":J
    const-wide/16 v5, -0x1

    cmp-long v2, v27, v5

    if-eqz v2, :cond_5

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v27

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v29

    .line 254
    .local v29, "sourceMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v29, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v20

    .line 256
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 264
    .end local v27    # "sourceId":J
    .end local v29    # "sourceMsg":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_5
    :goto_1
    if-eqz v15, :cond_6

    if-nez v20, :cond_8

    .line 266
    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_3
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    if-eqz v25, :cond_1

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 259
    :cond_7
    if-eqz v20, :cond_5

    :try_start_4
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_5

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    invoke-static {v2, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v20

    goto :goto_1

    .line 270
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/kingsoft/emailcommon/TrafficFlags;->getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v15, v2}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v26

    .line 274
    .local v26, "remoteStore":Lcom/kingsoft/email/mail/Store;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v25

    .line 275
    sget-object v2, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 279
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v30

    .line 280
    .local v30, "storeMessage":Lcom/kingsoft/emailcommon/mail/Message;
    new-instance v31, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v31 .. v31}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 281
    .local v31, "storePart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 282
    const-string/jumbo v2, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v5}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v5, "%s;\n name=\"%s\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v9, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v5}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 293
    const-string/jumbo v2, "Content-Transfer-Encoding"

    const-string/jumbo v5, "7bit"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v5}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_2
    new-instance v23, Lcom/kingsoft/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v23 .. v23}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;-><init>()V

    .line 303
    .local v23, "multipart":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    const-string/jumbo v2, "mixed"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/kingsoft/emailcommon/mail/BodyPart;)V

    .line 306
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v5, "multipart/mixed"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v5}, Lcom/kingsoft/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/Message;->setBody(Lcom/kingsoft/emailcommon/mail/Body;)V

    .line 310
    new-instance v19, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct/range {v19 .. v19}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 311
    .local v19, "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 313
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/kingsoft/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v30, v2, v5

    new-instance v5, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;

    move-object/from16 v6, p0

    move-wide v7, v3

    move-wide/from16 v9, p2

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/kingsoft/email/service/EmailServiceStub$MessageRetrievalListenerBridge;-><init>(Lcom/kingsoft/email/service/EmailServiceStub;JJLcom/android/emailcommon/service/IEmailServiceCallback;)V

    move-object/from16 v6, v25

    move-object v7, v2

    move-object/from16 v8, v19

    move-wide/from16 v9, p2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/kingsoft/emailcommon/mail/Folder;->fetchAttachment([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 318
    invoke-virtual/range {v31 .. v31}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v2

    if-nez v2, :cond_c

    .line 319
    new-instance v2, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const-string/jumbo v5, "Attachment not loaded."

    invoke-direct {v2, v5}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    .end local v3    # "messageId":J
    .end local v15    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v16    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .end local v20    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v22    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v23    # "multipart":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    .end local v24    # "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v26    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v30    # "storeMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v31    # "storePart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    :catch_0
    move-exception v21

    .line 339
    .local v21, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_5
    sget-object v2, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error loading attachment"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-static {v2, v0, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 341
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 342
    .local v17, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "uiState"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string/jumbo v2, "uiDownloadedSize"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 345
    .local v32, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    invoke-virtual/range {v21 .. v21}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v18

    .line 348
    .local v18, "et":I
    const/16 v2, 0x12

    move/from16 v0, v18

    if-ne v0, v2, :cond_e

    .line 349
    const-wide/16 v9, 0x0

    const/16 v13, 0x22

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-wide/from16 v11, p2

    invoke-interface/range {v8 .. v14}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 350
    invoke-virtual/range {v25 .. v25}, Lcom/kingsoft/emailcommon/mail/Folder;->closeConnection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 355
    :goto_3
    if-eqz v25, :cond_1

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 295
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v18    # "et":I
    .end local v21    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .end local v32    # "uri":Landroid/net/Uri;
    .restart local v3    # "messageId":J
    .restart local v15    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v16    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v20    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v22    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v24    # "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v26    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .restart local v30    # "storeMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .restart local v31    # "storePart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    :cond_9
    :try_start_6
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    const-string/jumbo v5, "B"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 296
    const-string/jumbo v2, "Content-Transfer-Encoding"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v5}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 355
    .end local v3    # "messageId":J
    .end local v15    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v16    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v20    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v22    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v24    # "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v26    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v30    # "storeMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v31    # "storePart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    :catchall_0
    move-exception v2

    if-eqz v25, :cond_a

    .line 356
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    :cond_a
    throw v2

    .line 299
    .restart local v3    # "messageId":J
    .restart local v15    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v16    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v20    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v22    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v24    # "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v26    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .restart local v30    # "storeMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .restart local v31    # "storePart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    :cond_b
    :try_start_7
    const-string/jumbo v2, "Content-Transfer-Encoding"

    const-string/jumbo v5, "base64"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v5}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 326
    .restart local v19    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .restart local v23    # "multipart":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    :cond_c
    if-eqz v24, :cond_d

    .line 327
    move-object/from16 v16, v24

    .line 330
    :cond_d
    const/4 v7, 0x2

    const v8, 0x7fffffff

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual/range {v31 .. v31}, Lcom/kingsoft/emailcommon/internet/MimeBodyPart;->getBody()Lcom/kingsoft/emailcommon/mail/Body;

    move-result-object v5

    invoke-interface {v5}, Lcom/kingsoft/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v2, v5, v0, v1}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->saveAttachment(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/emailcommon/service/IEmailServiceCallback;)I

    move-result v7

    .line 336
    .local v7, "statusCode":I
    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_7
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 355
    if-eqz v25, :cond_1

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/kingsoft/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 352
    .end local v3    # "messageId":J
    .end local v7    # "statusCode":I
    .end local v15    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v16    # "attachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .end local v20    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v22    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v23    # "multipart":Lcom/kingsoft/emailcommon/internet/MimeMultipart;
    .end local v24    # "newAttachment":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v26    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    .end local v30    # "storeMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v31    # "storePart":Lcom/kingsoft/emailcommon/internet/MimeBodyPart;
    .restart local v17    # "cv":Landroid/content/ContentValues;
    .restart local v18    # "et":I
    .restart local v21    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v32    # "uri":Landroid/net/Uri;
    :cond_e
    const-wide/16 v9, 0x0

    const/16 v13, 0x20

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-wide/from16 v11, p2

    :try_start_8
    invoke-interface/range {v8 .. v14}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method public loadMore(J)V
    .locals 16
    .param p1, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v12, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 148
    .local v6, "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_1

    .line 193
    .end local v6    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v6    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    iget v12, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    iget-wide v13, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 159
    .local v2, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    iget-wide v13, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 160
    .local v4, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v12

    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v10

    .line 170
    .local v10, "remoteStore":Lcom/kingsoft/email/mail/Store;
    iget-object v12, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 171
    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 175
    .local v9, "remoteServerId":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10, v9}, Lcom/kingsoft/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v7

    .line 176
    .local v7, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    sget-object v12, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v7, v12}, Lcom/kingsoft/emailcommon/mail/Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 179
    iget-object v12, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/kingsoft/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v8

    .line 180
    .local v8, "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    new-instance v3, Lcom/kingsoft/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/kingsoft/emailcommon/mail/FetchProfile;-><init>()V

    .line 181
    .local v3, "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    sget-object v12, Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/kingsoft/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v12}, Lcom/kingsoft/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v12, 0x1

    new-array v12, v12, [Lcom/kingsoft/emailcommon/mail/Message;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v3, v13}, Lcom/kingsoft/emailcommon/mail/Folder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v12, v8, v2, v4, v13}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 187
    .end local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v3    # "fp":Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .end local v4    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v6    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7    # "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    .end local v8    # "remoteMessage":Lcom/kingsoft/emailcommon/mail/Message;
    .end local v9    # "remoteServerId":Ljava/lang/String;
    .end local v10    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :catch_0
    move-exception v5

    .line 188
    .local v5, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    sget-boolean v12, Lcom/kingsoft/emailcommon/Logging;->LOGD:Z

    if-eqz v12, :cond_0

    sget-object v12, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, ""

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 173
    .end local v5    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v4    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .restart local v6    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v10    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :cond_2
    :try_start_1
    iget-object v9, v4, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v9    # "remoteServerId":Ljava/lang/String;
    goto :goto_1

    .line 190
    .end local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v4    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v6    # "message":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v9    # "remoteServerId":Ljava/lang/String;
    .end local v10    # "remoteStore":Lcom/kingsoft/email/mail/Store;
    :catch_1
    move-exception v11

    .line 191
    .local v11, "rte":Ljava/lang/RuntimeException;
    sget-object v12, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "RTE During loadMore"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "oldName"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "params"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public sendMail(J)V
    .locals 1
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->sendMail(JLandroid/content/Context;)V

    .line 560
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 0
    .param p1, "messageId"    # J
    .param p3, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .param p1, "on"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    return-void
.end method

.method public startSync(JZI)V
    .locals 9
    .param p1, "mailboxId"    # J
    .param p3, "userRequest"    # Z
    .param p4, "deltaMessageCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 115
    iget-object v5, p0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v4

    .line 116
    .local v4, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v5, p0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    iget-wide v6, v4, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 118
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 119
    iget-object v5, p0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v5, v6, v7}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfoForAccount(Landroid/content/Context;J)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v3

    .line 121
    .local v3, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    new-instance v1, Landroid/accounts/Account;

    iget-object v5, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iget-object v6, v3, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v1, "acct":Landroid/accounts/Account;
    invoke-static {p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v2

    .line 124
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz p3, :cond_2

    .line 125
    const-string/jumbo v5, "force"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const-string/jumbo v5, "do_not_retry"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string/jumbo v5, "expedited"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    :cond_2
    if-eqz p4, :cond_3

    .line 130
    const-string/jumbo v5, "__deltaMessageCount__"

    invoke-virtual {v2, v5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    :cond_3
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v1, v5, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public stopSync(J)V
    .locals 0
    .param p1, "mailboxId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    return-void
.end method

.method public declared-synchronized updateFolderList(J)V
    .locals 31
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 401
    .local v10, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v10, :cond_1

    .line 496
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_1
    const-wide/16 v13, -0x1

    .line 403
    .local v13, "inboxId":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    const/16 v16, 0x0

    .line 418
    .local v16, "localFolderCursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1, v5}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v17

    .line 420
    .local v17, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 421
    move-object/from16 v0, v17

    iget-wide v13, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 425
    .end local v17    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v26

    .line 426
    .local v26, "store":Lcom/kingsoft/email/mail/Store;
    invoke-virtual/range {v26 .. v26}, Lcom/kingsoft/email/mail/Store;->updateFolders()[Lcom/kingsoft/emailcommon/mail/Folder;
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v25

    .line 427
    .local v25, "remoteFolders":[Lcom/kingsoft/emailcommon/mail/Folder;
    if-nez v25, :cond_4

    .line 488
    if-eqz v16, :cond_3

    .line 489
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_3
    const-wide/16 v4, -0x1

    cmp-long v4, v13, v4

    if-eqz v4, :cond_0

    .line 493
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v4, v5}, Lcom/kingsoft/email/service/EmailServiceStub;->startSync(JZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 400
    .end local v10    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v13    # "inboxId":J
    .end local v16    # "localFolderCursor":Landroid/database/Cursor;
    .end local v25    # "remoteFolders":[Lcom/kingsoft/emailcommon/mail/Folder;
    .end local v26    # "store":Lcom/kingsoft/email/mail/Store;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 430
    .restart local v10    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v13    # "inboxId":J
    .restart local v16    # "localFolderCursor":Landroid/database/Cursor;
    .restart local v25    # "remoteFolders":[Lcom/kingsoft/emailcommon/mail/Folder;
    .restart local v26    # "store":Lcom/kingsoft/email/mail/Store;
    :cond_4
    :try_start_4
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 431
    .local v24, "remoteFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v11, v25

    .local v11, "arr$":[Lcom/kingsoft/emailcommon/mail/Folder;
    array-length v15, v11

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v15, :cond_5

    aget-object v23, v11, v12

    .line 432
    .local v23, "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    invoke-virtual/range {v23 .. v23}, Lcom/kingsoft/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 436
    .end local v23    # "remoteFolder":Lcom/kingsoft/emailcommon/mail/Folder;
    :cond_5
    sget-object v11, Lcom/android/emailcommon/provider/Mailbox;->REQUIRED_FOLDER_TYPES:[I

    .local v11, "arr$":[I
    array-length v15, v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_9

    aget v27, v11, v12

    .line 437
    .local v27, "type":I
    if-nez v27, :cond_7

    .line 436
    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 440
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    move/from16 v2, v27

    invoke-static {v4, v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    move/from16 v2, v27

    invoke-static {v4, v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->newSystemMailbox(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v17

    .line 442
    .restart local v17    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_4
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 484
    .end local v11    # "arr$":[I
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v24    # "remoteFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "remoteFolders":[Lcom/kingsoft/emailcommon/mail/Folder;
    .end local v26    # "store":Lcom/kingsoft/email/mail/Store;
    .end local v27    # "type":I
    :catch_0
    move-exception v22

    .line 485
    .local v22, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_5
    sget-object v4, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error in updateFolderList"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-static {v4, v0, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 488
    if-eqz v16, :cond_8

    .line 489
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_8
    const-wide/16 v4, -0x1

    cmp-long v4, v13, v4

    if-eqz v4, :cond_0

    .line 493
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v4, v5}, Lcom/kingsoft/email/service/EmailServiceStub;->startSync(JZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 446
    .end local v22    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v11    # "arr$":[I
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v24    # "remoteFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "remoteFolders":[Lcom/kingsoft/emailcommon/mail/Folder;
    .restart local v26    # "store":Lcom/kingsoft/email/mail/Store;
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/kingsoft/email/service/EmailServiceStub;->MAILBOX_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "accountKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v0, v10, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 454
    :cond_a
    :goto_4
    :pswitch_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 455
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 457
    .local v20, "mailboxPath":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 461
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 462
    .local v21, "mailboxType":I
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 463
    .local v18, "mailboxId":J
    packed-switch v21, :pswitch_data_0

    .line 474
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    move-wide/from16 v2, v18

    invoke-static {v4, v0, v1, v2, v3}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 478
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 480
    .local v28, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingsoft/email/service/EmailServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 488
    .end local v11    # "arr$":[I
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "mailboxId":J
    .end local v20    # "mailboxPath":Ljava/lang/String;
    .end local v21    # "mailboxType":I
    .end local v24    # "remoteFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "remoteFolders":[Lcom/kingsoft/emailcommon/mail/Folder;
    .end local v26    # "store":Lcom/kingsoft/email/mail/Store;
    .end local v28    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v4

    if-eqz v16, :cond_b

    .line 489
    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_b
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_c

    .line 493
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v5, v6}, Lcom/kingsoft/email/service/EmailServiceStub;->startSync(JZI)V

    :cond_c
    throw v4

    .line 488
    .restart local v11    # "arr$":[I
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v24    # "remoteFolderNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "remoteFolders":[Lcom/kingsoft/emailcommon/mail/Folder;
    .restart local v26    # "store":Lcom/kingsoft/email/mail/Store;
    :cond_d
    if-eqz v16, :cond_e

    .line 489
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_e
    const-wide/16 v4, -0x1

    cmp-long v4, v13, v4

    if-eqz v4, :cond_0

    .line 493
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v4, v5}, Lcom/kingsoft/email/service/EmailServiceStub;->startSync(JZI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 1
    .param p1, "hostauth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method
