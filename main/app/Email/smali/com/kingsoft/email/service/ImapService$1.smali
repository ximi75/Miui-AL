.class Lcom/kingsoft/email/service/ImapService$1;
.super Lcom/kingsoft/email/service/EmailServiceStub;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/ImapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/ImapService;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/service/ImapService;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kingsoft/email/service/ImapService$1;->this$0:Lcom/kingsoft/email/service/ImapService;

    invoke-direct {p0}, Lcom/kingsoft/email/service/EmailServiceStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapabilities(Lcom/android/emailcommon/provider/Account;)I
    .locals 1
    .param p1, "acct"    # Lcom/android/emailcommon/provider/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    const v0, 0x104041

    return v0
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
    .line 128
    return-void
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapService$1;->this$0:Lcom/kingsoft/email/service/ImapService;

    invoke-virtual {v0}, Lcom/kingsoft/email/service/ImapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    # invokes: Lcom/kingsoft/email/service/ImapService;->searchMailboxImpl(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/service/ImapService;->access$000(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
    :try_end_0
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
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
    .line 152
    return-void
.end method
