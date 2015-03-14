.class public Lcom/kingsoft/email/service/Pop3Service;
.super Landroid/app/Service;
.source "Pop3Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/Pop3Service$FetchCallback;,
        Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_SYNC_COUNT:I = 0x19

.field public static final POP3_SYNC_DEL_MAILBOX_KEY:I = -0x2

.field public static final SERVER_SORT_TYPE_DEFAULT:I = 0x1

.field public static final SERVER_SORT_TYPE_UID:I = 0x2

.field public static final SERVER_SORT_TYPE_UNINITED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Pop3Service"


# instance fields
.field private final mBinder:Lcom/kingsoft/email/service/EmailServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    new-instance v0, Lcom/kingsoft/email/service/Pop3Service$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/service/Pop3Service$1;-><init>(Lcom/kingsoft/email/service/Pop3Service;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/Pop3Service;->mBinder:Lcom/kingsoft/email/service/EmailServiceStub;

    .line 305
    return-void
.end method

.method static loadUnsyncedMessages(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "remoteFolder"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
    .param p4, "toMailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p3, "unsyncedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    const/4 v9, 0x0

    .line 200
    sget-boolean v6, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 201
    const-string/jumbo v6, "Pop3Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " unsynced messages"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 206
    .local v0, "cnt":I
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/kingsoft/email/provider/Utilities;->SendEMailDownloadProcessBroadcast(Landroid/content/Context;I)V

    .line 209
    const/4 v4, 0x0

    .line 210
    .local v4, "lines":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v1, "dowloadPartialMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 212
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 213
    .local v5, "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    const/4 v6, 0x0

    invoke-virtual {p2, v5, v4, v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V

    .line 214
    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->isComplete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 220
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    sget-boolean v6, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 223
    const-string/jumbo v7, "Pop3Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Message is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, ""

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "complete"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    :cond_2
    const/4 v6, 0x5

    invoke-static {p0, v5, p1, p4, v6}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 228
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v0

    invoke-static {p0, v6}, Lcom/kingsoft/email/provider/Utilities;->SendEMailDownloadProcessBroadcast(Landroid/content/Context;I)V

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_3
    const-string/jumbo v6, "NOT "
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 261
    .end local v0    # "cnt":I
    .end local v1    # "dowloadPartialMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    .end local v3    # "i":I
    .end local v4    # "lines":I
    .end local v5    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v7, 0x21

    invoke-direct {v6, v7}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v6

    .line 264
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cnt":I
    .restart local v1    # "dowloadPartialMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    .restart local v3    # "i":I
    .restart local v4    # "lines":I
    :cond_4
    return-void
.end method

.method public static loadUnsyncedMessages(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "remoteFolder"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
    .param p4, "toMailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p5, "downloadHeaderOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 662
    .local p3, "unsyncedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 664
    .local v0, "cnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 665
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 666
    .local v4, "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v5, v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V

    .line 668
    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 669
    .local v2, "flag":I
    :goto_1
    invoke-static {p0, v4, p1, p4, v2}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 668
    .end local v2    # "flag":I
    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    .line 671
    .end local v0    # "cnt":I
    .end local v3    # "i":I
    .end local v4    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v6, 0x21

    invoke-direct {v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v5

    .line 674
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "cnt":I
    .restart local v3    # "i":I
    :cond_1
    return-void
.end method

.method public static loadUnsyncedMessagesBody(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "remoteFolder"    # Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
    .param p4, "toMailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/Account;",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;",
            ">;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p3, "unsyncedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    const/4 v8, 0x0

    .line 270
    sget-boolean v5, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 271
    const-string/jumbo v5, "Pop3Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " unsynced messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 276
    .local v0, "cnt":I
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/kingsoft/email/provider/Utilities;->SendEMailDownloadProcessBroadcast(Landroid/content/Context;I)V

    .line 279
    const/4 v3, -0x1

    .line 280
    .local v3, "lines":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 281
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 282
    .local v4, "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    const/4 v5, 0x0

    invoke-virtual {p2, v4, v3, v5}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V

    .line 283
    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->isComplete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 291
    :cond_1
    sget-boolean v5, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 292
    const-string/jumbo v6, "Pop3Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Message is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, ""

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "complete"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    :cond_2
    const/4 v5, 0x1

    invoke-static {p0, v4, p1, p4, v5}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 297
    mul-int/lit8 v5, v2, 0x64

    div-int/2addr v5, v0

    invoke-static {p0, v5}, Lcom/kingsoft/email/provider/Utilities;->SendEMailDownloadProcessBroadcast(Landroid/content/Context;I)V

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_3
    const-string/jumbo v5, "NOT "
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v0    # "cnt":I
    .end local v2    # "i":I
    .end local v3    # "lines":I
    .end local v4    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v6, 0x21

    invoke-direct {v5, v6}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v5

    .line 303
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    .restart local v3    # "lines":I
    :cond_4
    return-void
.end method

.method public static synchronizeMailboxSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "folder"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "deltaMessageCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {p0, p1}, Lcom/kingsoft/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 135
    invoke-static {p0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v1

    .line 137
    .local v1, "nc":Lcom/kingsoft/email/NotificationController;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/kingsoft/email/service/Pop3Service;->synchronizePop3Mailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 139
    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v3, v4}, Lcom/kingsoft/email/NotificationController;->cancelLoginFailedNotification(J)V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    sget-boolean v3, Lcom/kingsoft/emailcommon/Logging;->LOGD:Z

    if-eqz v3, :cond_0

    .line 142
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "synchronizeMailbox"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    :cond_0
    instance-of v2, v0, Lcom/kingsoft/emailcommon/mail/AuthenticationFailedException;

    if-eqz v2, :cond_1

    .line 146
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x4

    goto :goto_0

    .line 149
    :cond_1
    throw v0
.end method

.method private static declared-synchronized synchronizePop3Mailbox(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V
    .locals 56
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "mailbox"    # Lcom/android/emailcommon/provider/Mailbox;
    .param p3, "deltaMessageCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 333
    const-class v53, Lcom/kingsoft/email/service/Pop3Service;

    monitor-enter v53

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 336
    .local v5, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_1

    .line 655
    :cond_0
    :goto_0
    monitor-exit v53

    return-void

    .line 340
    :cond_1
    if-eqz p1, :cond_0

    .line 347
    const/16 v33, 0x0

    .line 348
    .local v33, "localUidCursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v32, "localMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    .local v20, "deletedMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;>;"
    const/16 v33, 0x0

    .line 354
    :try_start_2
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->access$000()[Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "accountKey=? and length(syncServerId)>0"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v54

    aput-object v54, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 362
    :goto_1
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 363
    new-instance v26, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 364
    .local v26, "info":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 367
    .end local v26    # "info":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    :catchall_0
    move-exception v6

    if-eqz v33, :cond_2

    .line 368
    :try_start_3
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 333
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v20    # "deletedMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;>;"
    .end local v32    # "localMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;>;"
    .end local v33    # "localUidCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    monitor-exit v53

    throw v6

    .line 367
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    .restart local v20    # "deletedMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;>;"
    .restart local v32    # "localMessageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;>;"
    .restart local v33    # "localUidCursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v33, :cond_4

    .line 368
    :try_start_4
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 374
    .local v11, "MsgsToDel":Ljava/lang/StringBuilder;
    const/16 v33, 0x0

    .line 375
    :try_start_5
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->access$000()[Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "accountKey=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v54

    aput-object v54, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 383
    :cond_5
    :goto_2
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 384
    new-instance v26, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 385
    .restart local v26    # "info":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-wide v7, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 393
    .end local v26    # "info":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    :catchall_2
    move-exception v6

    if-eqz v33, :cond_6

    .line 394
    :try_start_6
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 399
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 400
    .local v46, "sqlIds":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v46

    .line 401
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "messageId in (?)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v46, v9, v10

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 402
    .end local v46    # "sqlIds":Ljava/lang/String;
    :cond_7
    throw v6

    .line 393
    :cond_8
    if-eqz v33, :cond_9

    .line 394
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 399
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 400
    .restart local v46    # "sqlIds":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v46

    .line 401
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "messageId in (?)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v46, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 407
    .end local v46    # "sqlIds":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/kingsoft/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v42

    check-cast v42, Lcom/kingsoft/email/mail/store/Pop3Store;

    .line 409
    .local v42, "remoteStore":Lcom/kingsoft/email/mail/store/Pop3Store;
    if-eqz v42, :cond_0

    .line 411
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Folder;

    move-result-object v38

    check-cast v38, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;

    .line 415
    .local v38, "remoteFolder":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;
    sget-object v6, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 418
    invoke-virtual/range {v38 .. v38}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getMessageCount()I

    move-result v39

    .line 421
    .local v39, "remoteMessageCount":I
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->updateMessageCount(Landroid/content/Context;I)V

    .line 424
    const/4 v6, 0x0

    new-array v0, v6, [Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    move-object/from16 v40, v0

    .line 425
    .local v40, "remoteMessages":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v50, "unsyncedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v43, "remoteUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;>;"
    if-lez v39, :cond_16

    .line 431
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/kingsoft/mail/preferences/MailPrefs;->getPop3SortType(Ljava/lang/String;)I

    move-result v45

    .line 432
    .local v45, "sortWay":I
    const/4 v6, 0x2

    move/from16 v0, v45

    if-ne v0, v6, :cond_c

    const/16 v44, 0x1

    .line 437
    .local v44, "sortByUid":Z
    :goto_3
    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v39

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getMessages(IIZ)[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    move-result-object v40

    .line 439
    if-nez v45, :cond_f

    .line 441
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, " we have not detect the way server is using to sort"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 443
    const/4 v6, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2, v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getMessages(IIZ)[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    move-result-object v41

    .line 446
    .local v41, "remoteMessages_uid":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    const/16 v25, 0x0

    .local v25, "idx":I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v39

    if-ge v0, v1, :cond_b

    .line 448
    aget-object v6, v40, v25

    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v41, v25

    invoke-virtual {v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    if-nez v6, :cond_e

    .line 451
    :try_start_7
    aget-object v28, v40, v25

    .line 452
    .local v28, "item":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    aget-object v29, v41, v25

    .line 453
    .local v29, "item_uid":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V

    .line 454
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V

    .line 456
    invoke-virtual/range {v28 .. v28}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getSentDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 458
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "detect server sort mail by uid"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/kingsoft/mail/preferences/MailPrefs;->setPop3SortType(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 461
    move-object/from16 v40, v41

    .line 479
    .end local v25    # "idx":I
    .end local v28    # "item":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v29    # "item_uid":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v41    # "remoteMessages_uid":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :cond_b
    :goto_5
    :try_start_8
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remoteMessageCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 488
    const/16 v17, 0x0

    .line 489
    .local v17, "count":I
    const/16 v18, 0x19

    .line 490
    .local v18, "countNeeded":I
    move-object/from16 v12, v40

    .local v12, "arr$":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    array-length v0, v12

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_10

    aget-object v34, v12, v23

    .line 491
    .local v34, "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual/range {v34 .. v34}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v48

    .line 492
    .local v48, "uid":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v48

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 490
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 432
    .end local v12    # "arr$":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v17    # "count":I
    .end local v18    # "countNeeded":I
    .end local v23    # "i$":I
    .end local v30    # "len$":I
    .end local v34    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v44    # "sortByUid":Z
    .end local v48    # "uid":Ljava/lang/String;
    :cond_c
    const/16 v44, 0x0

    goto/16 :goto_3

    .line 464
    .restart local v25    # "idx":I
    .restart local v28    # "item":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .restart local v29    # "item_uid":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .restart local v41    # "remoteMessages_uid":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .restart local v44    # "sortByUid":Z
    :cond_d
    :try_start_9
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "detect server sort mail by default"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 465
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/kingsoft/mail/preferences/MailPrefs;->setPop3SortType(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 467
    .end local v28    # "item":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v29    # "item_uid":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v21

    .line 468
    .local v21, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 446
    .end local v21    # "e":Ljava/io/IOException;
    :cond_e
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 476
    .end local v25    # "idx":I
    .end local v41    # "remoteMessages_uid":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :cond_f
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(no need to detect) the way server is using to sort is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    .line 511
    .restart local v12    # "arr$":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .restart local v17    # "count":I
    .restart local v18    # "countNeeded":I
    .restart local v23    # "i$":I
    .restart local v30    # "len$":I
    :cond_10
    move-object/from16 v12, v40

    array-length v0, v12

    move/from16 v30, v0

    const/16 v23, 0x0

    :goto_7
    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    aget-object v34, v12, v23

    .line 512
    .restart local v34    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual/range {v34 .. v34}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v48

    .line 513
    .restart local v48    # "uid":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;

    .line 514
    .local v31, "localMessage":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    if-nez v31, :cond_13

    .line 515
    add-int/lit8 v17, v17, 0x1

    .line 528
    :goto_8
    if-nez v31, :cond_14

    .line 529
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "need to sync "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 530
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :goto_9
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    .line 536
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " messages, stopping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 549
    .end local v31    # "localMessage":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    .end local v34    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v48    # "uid":Ljava/lang/String;
    :cond_11
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v8, "accountKey=? AND uiState=2"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v54, v0

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v54

    aput-object v54, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v16

    .line 553
    .local v16, "c":Landroid/database/Cursor;
    if-eqz v16, :cond_1c

    .line 555
    :try_start_b
    new-instance v52, Landroid/content/ContentValues;

    invoke-direct/range {v52 .. v52}, Landroid/content/ContentValues;-><init>()V

    .line 556
    .local v52, "values":Landroid/content/ContentValues;
    :goto_a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 557
    const-string/jumbo v6, "uiState"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    new-instance v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 559
    .local v13, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 560
    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v35

    .line 562
    .local v35, "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v35, :cond_12

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    iget v6, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mDeleted:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_18

    .line 563
    :cond_12
    const-string/jumbo v6, "uiDownloadedSize"

    iget-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v52

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_a

    .line 593
    .end local v13    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v35    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v52    # "values":Landroid/content/ContentValues;
    :catchall_3
    move-exception v6

    :try_start_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v6

    .line 519
    .end local v16    # "c":Landroid/database/Cursor;
    .restart local v31    # "localMessage":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    .restart local v34    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .restart local v48    # "uid":Ljava/lang/String;
    :cond_13
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "found a local message, need "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " more remote messages"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 521
    move/from16 v18, p3

    .line 522
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 532
    :cond_14
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "don\'t need to sync "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 511
    :cond_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_7

    .line 541
    .end local v12    # "arr$":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v17    # "count":I
    .end local v18    # "countNeeded":I
    .end local v23    # "i$":I
    .end local v30    # "len$":I
    .end local v31    # "localMessage":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    .end local v34    # "message":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v44    # "sortByUid":Z
    .end local v45    # "sortWay":I
    .end local v48    # "uid":Ljava/lang/String;
    :cond_16
    sget-boolean v6, Lcom/kingsoft/email2/ui/MailActivityEmail;->DEBUG:Z

    if-eqz v6, :cond_17

    .line 542
    const-string/jumbo v6, "Pop3Service"

    const-string/jumbo v7, "*** Message count is zero??"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 544
    :cond_17
    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 568
    .restart local v12    # "arr$":[Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .restart local v13    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v16    # "c":Landroid/database/Cursor;
    .restart local v17    # "count":I
    .restart local v18    # "countNeeded":I
    .restart local v23    # "i$":I
    .restart local v30    # "len$":I
    .restart local v35    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v44    # "sortByUid":Z
    .restart local v45    # "sortWay":I
    .restart local v52    # "values":Landroid/content/ContentValues;
    :cond_18
    :try_start_d
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 569
    .restart local v48    # "uid":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 570
    .local v37, "popMessage":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v37, :cond_1a

    .line 571
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v14

    .line 573
    .local v14, "attUri":Landroid/net/Uri;
    const/4 v6, -0x1

    :try_start_e
    new-instance v7, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;

    invoke-direct {v7, v5, v14}, Lcom/kingsoft/email/service/Pop3Service$FetchCallback;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v6, v7}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 579
    const/16 v22, 0x1

    .line 580
    .local v22, "flag":I
    :try_start_f
    invoke-virtual/range {v37 .. v37}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;->isComplete()Z

    move-result v6

    if-nez v6, :cond_19

    .line 581
    const-string/jumbo v6, "Pop3Service"

    const-string/jumbo v7, "How is this possible?"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 583
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    goto/16 :goto_a

    .line 575
    .end local v22    # "flag":I
    :catch_1
    move-exception v21

    .line 576
    .restart local v21    # "e":Ljava/io/IOException;
    new-instance v6, Lcom/kingsoft/emailcommon/mail/MessagingException;

    const/16 v7, 0x21

    invoke-direct {v6, v7}, Lcom/kingsoft/emailcommon/mail/MessagingException;-><init>(I)V

    throw v6

    .line 588
    .end local v14    # "attUri":Landroid/net/Uri;
    .end local v21    # "e":Ljava/io/IOException;
    :cond_1a
    const-string/jumbo v6, "Pop3Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find message for attachment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/16 :goto_a

    .line 593
    .end local v13    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v35    # "msg":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v37    # "popMessage":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    .end local v48    # "uid":Ljava/lang/String;
    :cond_1b
    :try_start_10
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 598
    .end local v52    # "values":Landroid/content/ContentValues;
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 599
    .local v49, "uidToDelete":Ljava/lang/String;
    sget-object v6, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "need to delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 600
    move-object/from16 v0, v32

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;

    .line 601
    .local v27, "infoToDelete":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    const/16 v36, 0x0

    .line 603
    .local v36, "needDel":Z
    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mailBoxKey:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_1e

    .line 606
    move-object/from16 v0, v38

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v37

    check-cast v37, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;

    .line 608
    .restart local v37    # "popMessage":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v37, :cond_1d

    .line 609
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->deleteMessage(Lcom/kingsoft/emailcommon/mail/Message;)V

    .line 611
    :cond_1d
    const/16 v36, 0x1

    .line 614
    .end local v37    # "popMessage":Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Message;
    :cond_1e
    move-object/from16 v0, v43

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    if-eqz v36, :cond_20

    .line 617
    :cond_1f
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    iget-wide v7, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 619
    .local v19, "deleteRowToDelete":Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 625
    .end local v19    # "deleteRowToDelete":Landroid/net/Uri;
    :cond_20
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object/from16 v0, v27

    iget-wide v8, v0, Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/kingsoft/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    goto :goto_b

    .line 636
    .end local v27    # "infoToDelete":Lcom/kingsoft/email/service/Pop3Service$LocalMessageInfo;
    .end local v36    # "needDel":Z
    .end local v49    # "uidToDelete":Ljava/lang/String;
    :cond_21
    sget-object v51, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 637
    .local v51, "updateRowToDelete":Landroid/net/Uri;
    const-string/jumbo v47, "accountKey=?"

    .line 638
    .local v47, "sqlSelection":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v51

    move-object/from16 v1, v47

    invoke-virtual {v5, v0, v1, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    const-string/jumbo v6, "Pop3Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadUnsynchedMessages "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move-object/from16 v3, v50

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingsoft/email/service/Pop3Service;->loadUnsyncedMessages(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 645
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/emailcommon/utility/Utility;->isHeaderOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 646
    invoke-static/range {p0 .. p2}, Lcom/kingsoft/emailcommon/utility/Utility;->getNoLoadBodyMailList(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Ljava/util/ArrayList;

    move-result-object v24

    .line 647
    .local v24, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_22

    .line 648
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/email/callback/MessageBodySync;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/callback/MessageBodySync;

    move-result-object v15

    .line 649
    .local v15, "body":Lcom/kingsoft/email/callback/MessageBodySync;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-virtual {v15, v0, v1, v2, v6}, Lcom/kingsoft/email/callback/MessageBodySync;->add2BodySyncRequests(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/Collection;Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;)Z

    .line 654
    .end local v15    # "body":Lcom/kingsoft/email/callback/MessageBodySync;
    .end local v24    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_22
    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/kingsoft/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingsoft/email/service/Pop3Service;->mBinder:Lcom/kingsoft/email/service/EmailServiceStub;

    invoke-virtual {v0, p0}, Lcom/kingsoft/email/service/EmailServiceStub;->init(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/kingsoft/email/service/Pop3Service;->mBinder:Lcom/kingsoft/email/service/EmailServiceStub;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
