.class Lcom/kingsoft/email/service/ImapPushService$5;
.super Ljava/lang/Object;
.source "ImapPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapPushService;->stop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/ImapPushService;

.field final synthetic val$accountId:I


# direct methods
.method constructor <init>(Lcom/kingsoft/email/service/ImapPushService;I)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapPushService$5;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    iput p2, p0, Lcom/kingsoft/email/service/ImapPushService$5;->val$accountId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 332
    const-string/jumbo v6, "IMAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stop imap push, account Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingsoft/email/service/ImapPushService$5;->val$accountId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 333
    iget-object v6, p0, Lcom/kingsoft/email/service/ImapPushService$5;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # invokes: Lcom/kingsoft/email/service/ImapPushService;->getAccount()[Lcom/android/emailcommon/provider/Account;
    invoke-static {v6}, Lcom/kingsoft/email/service/ImapPushService;->access$200(Lcom/kingsoft/email/service/ImapPushService;)[Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 334
    .local v1, "accounts":[Lcom/android/emailcommon/provider/Account;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    move-object v2, v1

    .local v2, "arr$":[Lcom/android/emailcommon/provider/Account;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 338
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v6

    iget v8, p0, Lcom/kingsoft/email/service/ImapPushService$5;->val$accountId:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/kingsoft/email/service/ImapPushService$5;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # invokes: Lcom/kingsoft/email/service/ImapPushService;->isImapProtocol(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v6, v0}, Lcom/kingsoft/email/service/ImapPushService;->access$300(Lcom/kingsoft/email/service/ImapPushService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 339
    iget-object v6, p0, Lcom/kingsoft/email/service/ImapPushService$5;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .line 340
    .local v5, "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->isStoped()Z

    move-result v6

    if-nez v6, :cond_2

    .line 341
    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop()V

    .line 342
    iget-object v6, p0, Lcom/kingsoft/email/service/ImapPushService$5;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v5    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    :cond_2
    iget-object v6, p0, Lcom/kingsoft/email/service/ImapPushService$5;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 348
    iget-object v6, p0, Lcom/kingsoft/email/service/ImapPushService$5;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v6}, Lcom/kingsoft/email/service/ImapPushService;->stopSelf()V

    goto :goto_0

    .line 337
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
