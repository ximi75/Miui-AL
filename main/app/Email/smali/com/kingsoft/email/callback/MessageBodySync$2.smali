.class Lcom/kingsoft/email/callback/MessageBodySync$2;
.super Ljava/lang/Object;
.source "MessageBodySync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/callback/MessageBodySync;->notifyStartOpenThread()V
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
    .line 347
    iput-object p1, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadBodyComplete(ZLcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;)V
    .locals 1
    .param p1, "res"    # Z
    .param p2, "req"    # Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    .prologue
    .line 378
    iget-object v0, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mCallback:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    if-eqz v0, :cond_0

    .line 379
    if-eqz p1, :cond_1

    .line 380
    iget-object v0, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mCallback:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    invoke-interface {v0}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;->onBodySyncFinished()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p2, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mCallback:Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;

    invoke-interface {v0}, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodySyncCallback;->onBodySyncFailed()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 352
    :goto_0
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 353
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$000(Lcom/kingsoft/email/callback/MessageBodySync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/email/provider/Utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$000(Lcom/kingsoft/email/callback/MessageBodySync;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10021f

    invoke-static {v0, v1, v9}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;II)V

    .line 355
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$500(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # setter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenThread:Ljava/lang/Thread;
    invoke-static {v0, v10}, Lcom/kingsoft/email/callback/MessageBodySync;->access$602(Lcom/kingsoft/email/callback/MessageBodySync;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 357
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$500(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    :goto_1
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    invoke-virtual {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->getBodyOpenRequest()Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;

    move-result-object v6

    .line 362
    .local v6, "req":Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;
    if-nez v6, :cond_1

    .line 363
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$500(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 364
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # setter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenThread:Ljava/lang/Thread;
    invoke-static {v0, v10}, Lcom/kingsoft/email/callback/MessageBodySync;->access$602(Lcom/kingsoft/email/callback/MessageBodySync;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 365
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    # getter for: Lcom/kingsoft/email/callback/MessageBodySync;->mBodyOpenLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/kingsoft/email/callback/MessageBodySync;->access$500(Lcom/kingsoft/email/callback/MessageBodySync;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 368
    :cond_1
    const-string/jumbo v0, "MessageBodySync"

    const-string/jumbo v1, "mBodyOpenThread mailboxkey is  %d, accountKey is %d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 370
    iget-object v0, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    .line 371
    .local v5, "idsArray":[Ljava/lang/String;
    iget-object v0, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mServiceIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/kingsoft/email/callback/MessageBodySync$2;->this$0:Lcom/kingsoft/email/callback/MessageBodySync;

    iget-object v1, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mRemote:Ljava/lang/Object;

    iget v4, v6, Lcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;->mProtocal:I

    # invokes: Lcom/kingsoft/email/callback/MessageBodySync;->downloadMessageBody(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;I[Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/kingsoft/email/callback/MessageBodySync;->access$400(Lcom/kingsoft/email/callback/MessageBodySync;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Ljava/lang/Object;I[Ljava/lang/String;)Z

    move-result v7

    .line 373
    .local v7, "res":Z
    invoke-direct {p0, v7, v6}, Lcom/kingsoft/email/callback/MessageBodySync$2;->loadBodyComplete(ZLcom/kingsoft/email/callback/MessageBodySync$MessageBodyRequest;)V

    goto/16 :goto_0
.end method
