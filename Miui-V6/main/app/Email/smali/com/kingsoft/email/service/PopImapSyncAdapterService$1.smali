.class final Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;
.super Ljava/lang/Object;
.source "PopImapSyncAdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/PopImapSyncAdapterService;->sync(Landroid/content/Context;JLandroid/os/Bundle;Landroid/content/SyncResult;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$autoSync:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deltaMessageCount:I

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

.field final synthetic val$mailboxId:J

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$syncResult:Landroid/content/SyncResult;

.field final synthetic val$uiRefresh:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;IZZLandroid/content/ContentResolver;Landroid/os/Bundle;JLandroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p3, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput p4, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$deltaMessageCount:I

    iput-boolean p5, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$uiRefresh:Z

    iput-boolean p6, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$autoSync:Z

    iput-object p7, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p8, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$extras:Landroid/os/Bundle;

    iput-wide p9, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$mailboxId:J

    iput-object p11, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$syncResult:Landroid/content/SyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 195
    const-wide/16 v0, 0x17d4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v3, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$deltaMessageCount:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    iget-boolean v4, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$uiRefresh:Z

    iget-boolean v5, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$autoSync:Z

    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/service/ImapService;->synchronizeMailboxSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;ZZZ)I
    :try_end_1
    .catch Lcom/kingsoft/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :goto_2
    return-void

    .line 197
    :catch_0
    move-exception v7

    .line 198
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v9

    .line 201
    goto :goto_1

    .line 203
    :catch_1
    move-exception v7

    .line 204
    .local v7, "e":Lcom/kingsoft/emailcommon/mail/MessagingException;
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    .line 205
    .local v4, "cause":I
    packed-switch v4, :pswitch_data_0

    .line 217
    :goto_3
    invoke-virtual {v7}, Lcom/kingsoft/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_2

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingsoft/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/kingsoft/email/NotificationController;

    move-result-object v8

    .line 210
    .local v8, "nc":Lcom/kingsoft/email/NotificationController;
    iget-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v7, v2}, Lcom/kingsoft/email/NotificationController;->showLoginFailedNotification(JLcom/kingsoft/emailcommon/mail/MessagingException;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$extras:Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$mailboxId:J

    const/4 v6, 0x2

    move v5, v9

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V

    .line 214
    iget-object v0, p0, Lcom/kingsoft/email/service/PopImapSyncAdapterService$1;->val$syncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_3

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
