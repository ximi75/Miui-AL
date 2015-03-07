.class Lcom/kingsoft/email/mail/store/ImapPushFolder$1;
.super Ljava/lang/Object;
.source "ImapPushFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/mail/store/ImapPushFolder;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 204
    const-wide/16 v8, 0x0

    .line 205
    .local v8, "idleStartTime":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_9

    .line 207
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->startIdleWakeLock()V
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$100(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->syncFlag:Z
    invoke-static/range {v16 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$202(Lcom/kingsoft/email/mail/store/ImapPushFolder;Z)Z

    .line 209
    const-wide/16 v8, 0x0

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$300(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/accounts/Account;

    move-result-object v16

    sget-object v17, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 213
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "need to poll message from server, request sync here. for account"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->syncFlag:Z
    invoke-static/range {v16 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$202(Lcom/kingsoft/email/mail/store/ImapPushFolder;Z)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->requestSync()V

    .line 223
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_0

    .line 227
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "start imap idle"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    sget-object v17, Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    invoke-virtual/range {v16 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->openInternal(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 230
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "Could not establish connection for IDLE"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    :goto_2
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "establish connection OK"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapConnection;->isIdleCapable()Z

    move-result v16

    if-nez v16, :cond_6

    .line 238
    const-string/jumbo v16, "IMAP-PUSH"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IMAP server is not IDLE capable: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    sget-object v16, Lcom/kingsoft/email/service/ImapPushService;->unsupported:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/ImapStore;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    const/16 v17, 0x3c

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->setPeriodicSync(I)V
    invoke-static/range {v16 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$700(Lcom/kingsoft/email/mail/store/ImapPushFolder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v4

    .line 287
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->releaseIdleWakeLock()V
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$1000(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "errorMessage":Ljava/lang/String;
    :goto_3
    const-string/jumbo v16, "IMAP-PUSH"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 297
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 300
    .local v11, "nowTime":J
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-eqz v16, :cond_3

    sub-long v16, v11, v8

    const-wide/32 v18, 0x2bf20

    cmp-long v16, v16, v18

    if-gez v16, :cond_0

    .line 304
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$500(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/AlarmManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v17, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->pi:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$400(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$500(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->getNextWakeupOffset()J
    invoke-static {}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$600()J

    move-result-wide v20

    add-long v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v20, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->pi:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$400(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 310
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "network issue, try it 5 minutes later."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 219
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v11    # "nowTime":J
    :cond_4
    :try_start_1
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "need to stop push for account"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$500(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/AlarmManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v17, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->pi:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$400(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$500(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/AlarmManager;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->getNextWakeupOffset()J
    invoke-static {}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$600()J

    move-result-wide v20

    add-long v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v20, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->pi:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$400(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 247
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->syncFlag:Z
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$200(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    if-nez v16, :cond_7

    .line 249
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getMessageCount()I

    move-result v3

    .line 250
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapStore;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 251
    .local v2, "account":Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v17

    const/16 v19, 0x0

    invoke-static/range {v16 .. v19}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v10

    .line 254
    .local v10, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-wide v0, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v17, v0

    iget-wide v0, v10, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    move-wide/from16 v19, v0

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->getlatestLocalServerId(Landroid/content/Context;JJ)J
    invoke-static/range {v16 .. v20}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$800(Landroid/content/Context;JJ)J

    move-result-wide v6

    .line 256
    .local v6, "id":J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-lez v16, :cond_7

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    int-to-long v0, v3

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getMessages(J)[Ljava/lang/String;

    move-result-object v15

    .line 258
    .local v15, "uids":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 259
    const/16 v16, 0x0

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 260
    .local v13, "serverId":J
    cmp-long v16, v13, v6

    if-lez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$300(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/accounts/Account;

    move-result-object v16

    sget-object v17, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 261
    const-string/jumbo v16, "IMAP-PUSH"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "latest server id > local server id, so request sync. for account = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v18, v0

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->getAccountName()Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$900(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->requestSync()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    .end local v2    # "account":Lcom/android/emailcommon/provider/Account;
    .end local v3    # "count":I
    .end local v6    # "id":J
    .end local v10    # "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    .end local v13    # "serverId":J
    .end local v15    # "uids":[Ljava/lang/String;
    :cond_7
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    const v17, 0x493e0

    invoke-virtual/range {v16 .. v17}, Lcom/kingsoft/email/mail/store/ImapConnection;->setReadTimeout(I)V

    .line 274
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "start idle command, for account"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v16

    if-nez v16, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->releaseIdleWakeLock()V
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$1000(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    const-string/jumbo v17, "IDLE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/kingsoft/email/mail/store/ImapConnection;->executeSimpleCommand(Ljava/lang/String;Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;)Ljava/util/List;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 267
    :catch_1
    move-exception v4

    .line 268
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 291
    :cond_8
    const-string/jumbo v5, "unknownError"

    goto/16 :goto_3

    .line 315
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # invokes: Lcom/kingsoft/email/mail/store/ImapPushFolder;->releaseIdleWakeLock()V
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$1000(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V

    .line 318
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;
    invoke-static/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$500(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/AlarmManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v17, v0

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder;->pi:Landroid/app/PendingIntent;
    invoke-static/range {v17 .. v17}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->access$400(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 319
    const-string/jumbo v16, "IMAP-PUSH"

    const-string/jumbo v17, "close connection"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 324
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;->this$0:Lcom/kingsoft/email/mail/store/ImapPushFolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 328
    :goto_5
    return-void

    .line 325
    :catch_2
    move-exception v4

    .line 326
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
