.class Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "EmailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/exchange/service/EmailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/service/EmailSyncAdapterService;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method

.method private getEmailAddressForAccount(J)Ljava/lang/String;
    .locals 9
    .param p1, "accountId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 407
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->ACCOUNT_EMAIL_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_id =?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/kingsoft/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "emailAddress":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 411
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "Could not find email address for account %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 413
    :cond_0
    return-object v7
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "IEmailService.autoDiscover"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 425
    new-instance v0, Lcom/kingsoft/exchange/service/EasAutoDiscover;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-direct {v0, v1, p1, p2}, Lcom/kingsoft/exchange/service/EasAutoDiscover;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kingsoft/exchange/service/EasAutoDiscover;->doAutodiscover()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(Ljava/lang/String;)V
    .locals 4
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string/jumbo v1, "Exchange"

    const-string/jumbo v2, "IEmailService.deleteAccountPIMData"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 475
    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    .line 477
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/kingsoft/exchange/service/EasContactsSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    invoke-static {v0, p1}, Lcom/kingsoft/exchange/service/EasCalendarSyncHandler;->wipeAccountFromContentProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 481
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    const/4 v0, 0x3

    return v0
.end method

.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 6
    .param p1, "acct"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 501
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 502
    .local v0, "easVersion":Ljava/lang/String;
    const-wide/high16 v2, 0x4004000000000000L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 503
    .local v1, "easVersionDouble":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 505
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 510
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4028000000000000L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 511
    const v2, 0x104461

    .line 518
    :goto_1
    return v2

    :cond_1
    const v2, 0x104401

    goto :goto_1

    .line 506
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hostChanged(J)V
    .locals 0
    .param p1, "accountId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    return-void
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 5
    .param p1, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p2, "attachmentId"    # J
    .param p4, "background"    # Z

    .prologue
    .line 454
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "IEmailService.loadAttachment: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 456
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-static {v0, p2, p3, p1}, Lcom/kingsoft/exchange/service/EasAttachmentLoader;->loadAttachment(Landroid/content/Context;JLcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 458
    return-void
.end method

.method public loadMore(J)V
    .locals 0
    .param p1, "messageId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "oldName"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J

    .prologue
    .line 486
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "IEmailService.searchMessages"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 487
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    return v0
.end method

.method public sendMail(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 496
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-static {p1, p2, v0}, Lcom/kingsoft/email/mail/attachment/utils/AttachmentUtils;->sendMail(JLandroid/content/Context;)V

    .line 497
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 5
    .param p1, "messageId"    # J
    .param p3, "response"    # I

    .prologue
    .line 462
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "IEmailService.sendMeetingResponse: %d, %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    iget-object v0, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-static {v0, p1, p2, p3}, Lcom/kingsoft/exchange/service/EasMeetingResponder;->sendMeetingResponse(Landroid/content/Context;JI)V

    .line 465
    return-void
.end method

.method public serviceUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 528
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 446
    invoke-static {p1}, Lcom/kingsoft/exchange/Eas;->setUserDebug(I)V

    .line 449
    return-void
.end method

.method public startSync(JZI)V
    .locals 0
    .param p1, "mailboxId"    # J
    .param p3, "userRequest"    # Z
    .param p4, "deltaMessageCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 540
    return-void
.end method

.method public stopSync(J)V
    .locals 0
    .param p1, "mailboxId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 544
    return-void
.end method

.method public updateFolderList(J)V
    .locals 8
    .param p1, "accountId"    # J

    .prologue
    const/4 v7, 0x1

    .line 431
    const-string/jumbo v2, "Exchange"

    const-string/jumbo v3, "IEmailService.updateFolderList: %d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->getEmailAddressForAccount(J)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "emailAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 434
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 435
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "expedited"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    new-instance v2, Landroid/accounts/Account;

    const-string/jumbo v3, "com.android.exchange"

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 440
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 3
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    .line 418
    const-string/jumbo v0, "Exchange"

    const-string/jumbo v1, "IEmailService.validate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    new-instance v0, Lcom/kingsoft/exchange/eas/EasFolderSync;

    iget-object v1, p0, Lcom/kingsoft/exchange/service/EmailSyncAdapterService$1;->this$0:Lcom/kingsoft/exchange/service/EmailSyncAdapterService;

    invoke-direct {v0, v1, p1}, Lcom/kingsoft/exchange/eas/EasFolderSync;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    invoke-virtual {v0}, Lcom/kingsoft/exchange/eas/EasFolderSync;->validate()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
