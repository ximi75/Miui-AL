.class Lcom/kingsoft/email/service/ImapPushService$2;
.super Ljava/lang/Object;
.source "ImapPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/ImapPushService;->reschedulePushers(I)V
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
    .line 221
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    iput p2, p0, Lcom/kingsoft/email/service/ImapPushService$2;->val$accountId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 224
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # invokes: Lcom/kingsoft/email/service/ImapPushService;->getAccount()[Lcom/android/emailcommon/provider/Account;
    invoke-static {v8}, Lcom/kingsoft/email/service/ImapPushService;->access$200(Lcom/kingsoft/email/service/ImapPushService;)[Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 225
    .local v1, "accounts":[Lcom/android/emailcommon/provider/Account;
    if-eqz v1, :cond_0

    array-length v8, v1

    if-nez v8, :cond_2

    .line 226
    :cond_0
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v8}, Lcom/kingsoft/email/service/ImapPushService;->stopSelf()V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    iget v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->val$accountId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 232
    move-object v2, v1

    .local v2, "arr$":[Lcom/android/emailcommon/provider/Account;
    :try_start_0
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, v2, v4

    .line 233
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSyncInterval()I

    move-result v8

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # invokes: Lcom/kingsoft/email/service/ImapPushService;->isImapProtocol(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v8, v0}, Lcom/kingsoft/email/service/ImapPushService;->access$300(Lcom/kingsoft/email/service/ImapPushService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/kingsoft/email/service/ImapPushService;->unsupported:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 236
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v8}, Lcom/kingsoft/email/service/ImapPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/kingsoft/email/mail/store/ImapStore;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/email/mail/store/ImapStore;

    .line 238
    .local v7, "store":Lcom/kingsoft/email/mail/store/ImapStore;
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .line 239
    .local v6, "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    if-nez v6, :cond_4

    .line 240
    new-instance v6, Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .end local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    const-string/jumbo v8, "Inbox"

    invoke-direct {v6, v7, v8}, Lcom/kingsoft/email/mail/store/ImapPushFolder;-><init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 241
    .restart local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->start()V

    .line 232
    .end local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .end local v7    # "store":Lcom/kingsoft/email/mail/store/ImapStore;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    .restart local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .restart local v7    # "store":Lcom/kingsoft/email/mail/store/ImapStore;
    :cond_4
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->isStoped()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->start()V
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 250
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .end local v7    # "store":Lcom/kingsoft/email/mail/store/ImapStore;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 277
    .end local v3    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 278
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v8}, Lcom/kingsoft/email/service/ImapPushService;->stopSelf()V

    goto :goto_0

    .line 255
    .end local v2    # "arr$":[Lcom/android/emailcommon/provider/Account;
    :cond_6
    move-object v2, v1

    .restart local v2    # "arr$":[Lcom/android/emailcommon/provider/Account;
    :try_start_1
    array-length v5, v2

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v0, v2, v4

    .line 256
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v8

    iget v10, p0, Lcom/kingsoft/email/service/ImapPushService$2;->val$accountId:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # invokes: Lcom/kingsoft/email/service/ImapPushService;->isImapProtocol(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v8, v0}, Lcom/kingsoft/email/service/ImapPushService;->access$300(Lcom/kingsoft/email/service/ImapPushService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 257
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v8}, Lcom/kingsoft/email/service/ImapPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/kingsoft/email/mail/store/ImapStore;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/kingsoft/email/mail/Store;

    move-result-object v7

    check-cast v7, Lcom/kingsoft/email/mail/store/ImapStore;

    .line 258
    .restart local v7    # "store":Lcom/kingsoft/email/mail/store/ImapStore;
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .line 259
    .restart local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    if-nez v6, :cond_7

    .line 260
    new-instance v6, Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .end local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    const-string/jumbo v8, "Inbox"

    invoke-direct {v6, v7, v8}, Lcom/kingsoft/email/mail/store/ImapPushFolder;-><init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 261
    .restart local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    iget-object v8, p0, Lcom/kingsoft/email/service/ImapPushService$2;->this$0:Lcom/kingsoft/email/service/ImapPushService;

    # getter for: Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/kingsoft/email/service/ImapPushService;->access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->start()V
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 272
    .end local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .end local v7    # "store":Lcom/kingsoft/email/mail/store/ImapStore;
    :catch_1
    move-exception v3

    .line 273
    .restart local v3    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v3}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_3

    .line 264
    .end local v3    # "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    .restart local v0    # "account":Lcom/android/emailcommon/provider/Account;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .restart local v7    # "store":Lcom/kingsoft/email/mail/store/ImapStore;
    :cond_7
    :try_start_2
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->isStoped()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 265
    invoke-virtual {v6}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->start()V
    :try_end_2
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 255
    .end local v6    # "pushFolder":Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .end local v7    # "store":Lcom/kingsoft/email/mail/store/ImapStore;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method
