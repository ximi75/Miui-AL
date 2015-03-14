.class Lcom/kingsoft/exchange/ExchangeService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/ExchangeService;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingsoft/exchange/ExchangeService$1;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 128
    .local v0, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    iput-object p1, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 129
    iput-object p2, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 130
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 131
    const/16 v1, 0x1bb

    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 132
    new-instance v1, Lcom/kingsoft/exchange/EasSyncService;

    invoke-direct {v1}, Lcom/kingsoft/exchange/EasSyncService;-><init>()V

    iget-object v2, p0, Lcom/kingsoft/exchange/ExchangeService$1;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    invoke-virtual {v1, v2, v0}, Lcom/kingsoft/exchange/EasSyncService;->tryAutodiscover(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
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
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
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
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x3

    return v0
.end method

.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 6
    .param p1, "acct"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 288
    .local v0, "easVersion":Ljava/lang/String;
    const-wide/high16 v2, 0x4004000000000000L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 289
    .local v1, "easVersionDouble":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 296
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4028000000000000L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 297
    const/16 v2, 0x4461

    .line 299
    :goto_1
    return v2

    :cond_1
    const/16 v2, 0x4401

    goto :goto_1

    .line 292
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hostChanged(J)V
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    # getter for: Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;
    invoke-static {}, Lcom/kingsoft/exchange/ExchangeService;->access$200()Lcom/kingsoft/emailsync/SyncManager;

    move-result-object v1

    .line 206
    .local v1, "exchangeService":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v6, v1, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 209
    .local v6, "syncErrorMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/kingsoft/emailsync/SyncManager$SyncError;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 210
    .local v4, "mailboxId":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;

    .line 212
    .local v0, "error":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 215
    .local v3, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_2

    .line 216
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :cond_2
    if-eqz v0, :cond_1

    iget-wide v7, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_1

    .line 218
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->fatal:Z

    .line 219
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/kingsoft/emailsync/SyncManager$SyncError;->holdEndTime:J

    goto :goto_1

    .line 223
    .end local v0    # "error":Lcom/kingsoft/emailsync/SyncManager$SyncError;
    .end local v3    # "m":Lcom/android/emailcommon/provider/Mailbox;
    .end local v4    # "mailboxId":J
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v1, p1, p2, v7}, Lcom/kingsoft/emailsync/SyncManager;->stopAccountSyncs(JZ)V

    .line 225
    const-string/jumbo v7, "host changed"

    invoke-static {v7}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 4
    .param p1, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p2, "attachmentId"    # J
    .param p4, "background"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Lcom/kingsoft/exchange/ExchangeService$1;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    invoke-static {v1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 194
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadAttachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 195
    new-instance v1, Lcom/kingsoft/emailsync/PartRequest;

    invoke-direct {v1, v0, v3, v3}, Lcom/kingsoft/emailsync/PartRequest;-><init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingsoft/emailsync/SyncManager;->sendMessageRequest(Lcom/kingsoft/emailsync/Request;)V

    .line 196
    return-void
.end method

.method public loadMore(J)V
    .locals 0
    .param p1, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    return-void
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
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J

    .prologue
    .line 275
    # getter for: Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;
    invoke-static {}, Lcom/kingsoft/exchange/ExchangeService;->access$300()Lcom/kingsoft/emailsync/SyncManager;

    move-result-object v0

    .line 276
    .local v0, "exchangeService":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 277
    :goto_0
    return v1

    :cond_0
    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v1

    goto :goto_0
.end method

.method public sendMail(J)V
    .locals 0
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 1
    .param p1, "messageId"    # J
    .param p3, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/kingsoft/exchange/MeetingResponseRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/kingsoft/exchange/MeetingResponseRequest;-><init>(JI)V

    invoke-static {v0}, Lcom/kingsoft/emailsync/SyncManager;->sendMessageRequest(Lcom/kingsoft/emailsync/Request;)V

    .line 239
    return-void
.end method

.method public serviceUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p1}, Lcom/kingsoft/exchange/Eas;->setUserDebug(I)V

    .line 233
    invoke-static {p1}, Lcom/kingsoft/emailsync/SyncManager;->setUserDebug(I)V

    .line 234
    return-void
.end method

.method public startSync(JZI)V
    .locals 10
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
    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 143
    # getter for: Lcom/kingsoft/exchange/ExchangeService;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;
    invoke-static {}, Lcom/kingsoft/exchange/ExchangeService;->access$000()Lcom/kingsoft/emailsync/SyncManager;

    move-result-object v2

    .line 144
    .local v2, "exchangeService":Lcom/kingsoft/emailsync/SyncManager;
    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/kingsoft/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 146
    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 147
    .local v3, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v3, :cond_0

    .line 148
    iget-wide v4, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 149
    .local v0, "acct":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 152
    if-eqz p3, :cond_3

    .line 153
    # invokes: Lcom/kingsoft/exchange/ExchangeService;->onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService;->access$100(Lcom/android/emailcommon/provider/Account;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    iget-object v4, p0, Lcom/kingsoft/exchange/ExchangeService$1;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5, v0}, Lcom/kingsoft/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 155
    const-string/jumbo v4, "User requested sync of account in sync disabled hold; releasing"

    invoke-static {v4}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 161
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/kingsoft/emailsync/SyncManager;->sConnectivityHold:Z

    if-nez v4, :cond_0

    .line 165
    :cond_3
    iget v4, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-ne v4, v6, :cond_5

    .line 169
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "syncServerId"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    invoke-virtual {v2}, Lcom/kingsoft/emailsync/SyncManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "mailboxKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    iget-object v4, v2, Lcom/kingsoft/emailsync/SyncManager;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v4, "start outbox"

    invoke-static {v4}, Lcom/kingsoft/emailsync/SyncManager;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-static {v0}, Lcom/kingsoft/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/kingsoft/exchange/ExchangeService$1;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    invoke-virtual {v4, v2, v6, v0}, Lcom/kingsoft/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 159
    const-string/jumbo v4, "User requested sync of account in security hold; releasing"

    invoke-static {v4}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_5
    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    if-eqz p3, :cond_6

    const/4 v4, 0x7

    :goto_2
    const/4 v5, 0x0

    invoke-static {p1, p2, v4, v5}, Lcom/kingsoft/emailsync/SyncManager;->startManualSync(JILcom/kingsoft/emailsync/Request;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x6

    goto :goto_2
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
    .line 187
    invoke-static {p1, p2}, Lcom/kingsoft/emailsync/SyncManager;->stopManualSync(J)V

    .line 188
    return-void
.end method

.method public updateFolderList(J)V
    .locals 2
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/kingsoft/exchange/ExchangeService$1;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/kingsoft/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 201
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 2
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    const-class v0, Lcom/kingsoft/exchange/EasSyncService;

    iget-object v1, p0, Lcom/kingsoft/exchange/ExchangeService$1;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    invoke-static {v0, p1, v1}, Lcom/kingsoft/emailsync/AbstractSyncService;->validate(Ljava/lang/Class;Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
