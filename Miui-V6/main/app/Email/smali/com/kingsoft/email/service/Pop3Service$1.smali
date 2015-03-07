.class Lcom/kingsoft/email/service/Pop3Service$1;
.super Lcom/kingsoft/email/service/EmailServiceStub;
.source "Pop3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/Pop3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/Pop3Service;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/service/Pop3Service;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingsoft/email/service/Pop3Service$1;->this$0:Lcom/kingsoft/email/service/Pop3Service;

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
    .line 94
    const v0, 0x104000

    return v0
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JZ)V
    .locals 7
    .param p1, "callback"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p2, "attachmentId"    # J
    .param p4, "background"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 101
    iget-object v3, p0, Lcom/kingsoft/email/service/Pop3Service$1;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 102
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/kingsoft/email/service/Pop3Service$1;->mContext:Landroid/content/Context;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 104
    .local v1, "inboxId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 106
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/kingsoft/email/service/Pop3Service$1;->startSync(JZI)V

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
    .line 112
    return-void
.end method
