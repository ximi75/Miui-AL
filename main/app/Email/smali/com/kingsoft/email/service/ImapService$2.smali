.class final Lcom/kingsoft/email/service/ImapService$2;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapService;->downloadFlagAndEnvelope(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/kingsoft/emailcommon/mail/Folder;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

.field final synthetic val$unseenMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapService$2;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/kingsoft/email/service/ImapService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p4, p0, Lcom/kingsoft/email/service/ImapService$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p5, p0, Lcom/kingsoft/email/service/ImapService$2;->val$unseenMessages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentStatus(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "progress"    # I

    .prologue
    .line 381
    return-void
.end method

.method public messageRetrieved(Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 8
    .param p1, "message"    # Lcom/kingsoft/emailcommon/mail/Message;

    .prologue
    const/4 v7, 0x0

    .line 319
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$localMapCopy:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;

    .line 324
    .local v2, "localMessageInfo":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingsoft/emailcommon/utility/Utility;->isHeaderOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/kingsoft/emailcommon/mail/Message;->getSize()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/kingsoft/emailcommon/utility/Utility;->increaseMessageCountAndFlowSavedSize(Landroid/content/Context;IZ)V

    .line 329
    :cond_0
    const/4 v1, 0x0

    .line 330
    .local v1, "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v2, :cond_2

    .line 358
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local v1    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 365
    .restart local v1    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/kingsoft/email/service/ImapService$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-object v5, p0, Lcom/kingsoft/email/service/ImapService$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    const/4 v6, 0x5

    invoke-static {v3, p1, v4, v5, v6}, Lcom/kingsoft/email/provider/Utilities;->copyOneMessageToProvider(Landroid/content/Context;Lcom/kingsoft/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 366
    if-eqz v1, :cond_1

    .line 368
    sget-object v3, Lcom/kingsoft/emailcommon/mail/Flag;->SEEN:Lcom/kingsoft/emailcommon/mail/Flag;

    invoke-virtual {p1, v3}, Lcom/kingsoft/emailcommon/mail/Message;->isSet(Lcom/kingsoft/emailcommon/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$unseenMessages:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$unseenMessages:Ljava/util/ArrayList;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v1    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v2    # "localMessageInfo":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    :cond_1
    :goto_1
    return-void

    .line 360
    .restart local v1    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v2    # "localMessageInfo":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    :cond_2
    iget-object v3, p0, Lcom/kingsoft/email/service/ImapService$2;->val$context:Landroid/content/Context;

    iget-wide v4, v2, Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 373
    .end local v1    # "localMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v2    # "localMessageInfo":Lcom/kingsoft/email/service/ImapService$LocalMessageInfo;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/kingsoft/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while storing downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
