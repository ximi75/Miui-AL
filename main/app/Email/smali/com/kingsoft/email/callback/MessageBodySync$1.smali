.class Lcom/kingsoft/email/callback/MessageBodySync$1;
.super Ljava/lang/Object;
.source "MessageBodySync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/callback/MessageBodySync;->notifyStartSyncThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/callback/MessageBodySync;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/callback/MessageBodySync;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 148
    :goto_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 149
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$000(Lcom/kingsoft/email/callback/MessageBodySync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/provider/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$000(Lcom/kingsoft/email/callback/MessageBodySync;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10021f

    invoke-static {v0, v1, v9}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;II)V

    .line 151
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$100(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 152
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mSyncMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$200(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 153
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # setter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyDownloadThread:Ljava/lang/Thread;
    invoke-static {v0, v10}, Lcom/kingsoft/email/callback/MessageBodySync;->access$302(Lcom/kingsoft/email/callback/MessageBodySync;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 154
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$100(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    :goto_1
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    invoke-virtual {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->getBodySyncRequest()Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    move-result-object v6

    .line 160
    .local v6, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    if-nez v6, :cond_1

    .line 161
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$100(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 162
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # setter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyDownloadThread:Ljava/lang/Thread;
    invoke-static {v0, v10}, Lcom/kingsoft/email/callback/MessageBodySync;->access$302(Lcom/kingsoft/email/callback/MessageBodySync;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 163
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodySyncLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$100(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 167
    :cond_1
    const-string/jumbo v0, "MessageBodySync"

    const-string/jumbo v1, "mBodyDownloadThread AccountKey is %d, MailboxKey is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v4, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 169
    iget-object v0, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 170
    .local v5, "idsArray":[Ljava/lang/String;
    iget-object v0, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$1;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    iget-object v1, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    iget v4, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    # invokes: Lcom/kingsoft/email/callback/MessageBodySync;->downloadMessageBody(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;I[Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/callback/MessageBodySync;->access$400(Lcom/kingsoft/email/callback/MessageBodySync;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;I[Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
