.class final Lcom/kingsoft/email/service/ImapService$6;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapService;->searchMailboxImpl(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$destMailboxId:J

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;JLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapService$6;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p2, p0, Lcom/kingsoft/email/service/ImapService$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-wide p3, p0, Lcom/kingsoft/email/service/ImapService$6;->val$destMailboxId:J

    iput-object p5, p0, Lcom/kingsoft/email/service/ImapService$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentStatus(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "progress"    # I

    .prologue
    .line 1697
    sget-object v0, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|progress:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1698
    return-void
.end method

.method public messageRetrieved(Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 10
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;

    .prologue
    const/4 v9, 0x0

    .line 1666
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1670
    .local v0, "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_start_1
    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$6;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/kingsoft/emailcommon/mail/Message;JJ)Z

    .line 1675
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    .line 1676
    iget-wide v1, p0, Lcom/kingsoft/email/service/ImapService$6;->val$destMailboxId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1678
    const/4 v7, 0x1

    .line 1682
    .local v7, "flag":I
    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$6;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 1684
    iget-object v1, p0, Lcom/kingsoft/email/service/ImapService$6;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kingsoft/email/provider/Utilities;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1693
    .end local v0    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7    # "flag":I
    :goto_0
    return-void

    .line 1685
    .restart local v0    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v8

    .line 1686
    .local v8, "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :try_start_2
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1689
    .end local v0    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v8    # "me":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v6

    .line 1690
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while storing downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
