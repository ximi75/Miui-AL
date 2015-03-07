.class final Lcom/kingsoft/emailsync/SyncManager$2;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/emailsync/SyncManager;->alert(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:J

.field final synthetic val$service:Lcom/kingsoft/emailsync/AbstractSyncService;

.field final synthetic val$ssm:Lcom/kingsoft/emailsync/SyncManager;


# direct methods
.method constructor <init>(Lcom/kingsoft/emailsync/SyncManager;JLcom/kingsoft/emailsync/AbstractSyncService;)V
    .locals 0

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$ssm:Lcom/kingsoft/emailsync/SyncManager;

    iput-wide p2, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$id:J

    iput-object p4, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$service:Lcom/kingsoft/emailsync/AbstractSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1151
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$ssm:Lcom/kingsoft/emailsync/SyncManager;

    iget-wide v4, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$id:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 1152
    .local v1, "m":Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_2

    .line 1155
    sget-boolean v3, Lcom/kingsoft/emailsync/SyncManager;->sUserLog:Z

    if-eqz v3, :cond_0

    .line 1156
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Alert for mailbox "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1159
    :cond_0
    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 1160
    :cond_1
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 1161
    .local v0, "args":[Ljava/lang/String;
    sget-object v3, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    iget-object v2, v3, Lcom/kingsoft/emailsync/SyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 1162
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1164
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "mailboxKey=?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1184
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    return-void

    .line 1168
    :cond_3
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$service:Lcom/kingsoft/emailsync/AbstractSyncService;

    sget-object v4, Lcom/kingsoft/emailsync/SyncManager;->INSTANCE:Lcom/kingsoft/emailsync/SyncManager;

    iget-wide v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    iput-object v4, v3, Lcom/kingsoft/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 1169
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$service:Lcom/kingsoft/emailsync/AbstractSyncService;

    iput-object v1, v3, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1171
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$service:Lcom/kingsoft/emailsync/AbstractSyncService;

    invoke-virtual {v3}, Lcom/kingsoft/emailsync/AbstractSyncService;->alarm()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1175
    const-string/jumbo v3, "Alarm failed; releasing mailbox"

    invoke-static {v3}, Lcom/kingsoft/emailsync/SyncManager;->log(Ljava/lang/String;)V

    .line 1176
    # getter for: Lcom/kingsoft/emailsync/SyncManager;->sSyncLock:Ljava/lang/Object;
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$300()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1177
    :try_start_0
    iget-object v3, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$ssm:Lcom/kingsoft/emailsync/SyncManager;

    iget-wide v5, p0, Lcom/kingsoft/emailsync/SyncManager$2;->val$id:J

    invoke-virtual {v3, v5, v6}, Lcom/kingsoft/emailsync/SyncManager;->releaseMailbox(J)V

    .line 1178
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    # invokes: Lcom/kingsoft/emailsync/SyncManager;->shutdownConnectionManager()V
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->access$400()V

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
