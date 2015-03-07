.class public Lcom/kingsoft/email/mail/store/ImapPushFolder;
.super Lcom/kingsoft/email/mail/store/ImapFolder;
.source "ImapPushFolder.java"

# interfaces
.implements Lcom/kingsoft/email/mail/store/ImapPusher;
.implements Lcom/kingsoft/email/mail/store/ImapUntaggedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/mail/store/ImapPushFolder$Watchdog;,
        Lcom/kingsoft/email/mail/store/ImapPushFolder$LatestTimestampInfo;
    }
.end annotation


# static fields
.field private static final MAX_IDLE_WAIT_TIME:J = 0x2bf20L

.field private static final TAG:Ljava/lang/String; = "IMAP-PUSH"


# instance fields
.field private am:Landroid/app/AlarmManager;

.field final idling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAccountName:Ljava/lang/String;

.field private mAndroidAccount:Landroid/accounts/Account;

.field private mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field final needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pi:Landroid/app/PendingIntent;

.field private pm:Landroid/os/PowerManager;

.field final stop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private syncFlag:Z


# direct methods
.method public constructor <init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 8
    .param p1, "store"    # Lcom/kingsoft/email/mail/store/ImapStore;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/kingsoft/email/mail/store/ImapFolder;-><init>(Lcom/kingsoft/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 48
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->idling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    iput-boolean v7, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->syncFlag:Z

    .line 55
    iput-object v5, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;

    .line 56
    iput-object v5, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->pm:Landroid/os/PowerManager;

    .line 58
    iput-object v5, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    iput-object v5, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;

    .line 118
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 119
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;

    .line 120
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->pm:Landroid/os/PowerManager;

    .line 122
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kingsoft/email/mail/store/ImapPushFolder$Watchdog;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "account_id"

    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/email/mail/store/ImapStore;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->pi:Landroid/app/PendingIntent;

    .line 126
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 128
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    const-string/jumbo v4, "imap"

    invoke-static {v1, v4}, Lcom/kingsoft/email/service/EmailServiceUtils;->getServiceInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;

    move-result-object v2

    .line 131
    .local v2, "info":Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;
    new-instance v4, Landroid/accounts/Account;

    iget-object v5, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iget-object v6, v2, Lcom/kingsoft/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->startIdleWakeLock()V

    return-void
.end method

.method static synthetic access$1000(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->releaseIdleWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->syncFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/kingsoft/email/mail/store/ImapPushFolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->syncFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->pi:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->am:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getNextWakeupOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/kingsoft/email/mail/store/ImapPushFolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->setPeriodicSync(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;JJ)J
    .locals 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getlatestLocalServerId(Landroid/content/Context;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/kingsoft/email/mail/store/ImapPushFolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/mail/store/ImapPushFolder;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapStore;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAccountName:Ljava/lang/String;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private static getNextWakeupOffset()J
    .locals 2

    .prologue
    .line 161
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method private static getlatestLocalServerId(Landroid/content/Context;JJ)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    .line 80
    const/4 v6, 0x0

    .line 82
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/kingsoft/email/mail/store/ImapPushFolder$LatestTimestampInfo;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/kingsoft/email/mail/store/ImapPushFolder$LatestTimestampInfo;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "accountKey=? AND mailboxKey=? AND timeStamp!=0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    const-wide/16 v7, 0x0

    .line 92
    .local v7, "latestLocalServerId":J
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 98
    :cond_0
    if-eqz v6, :cond_1

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    const/4 v6, 0x0

    :cond_1
    return-wide v7

    .line 98
    .end local v7    # "latestLocalServerId":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private releaseIdleWakeLock()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    return-void
.end method

.method private sendDone()V
    .locals 3

    .prologue
    .line 371
    const-string/jumbo v0, "IMAP-PUSH"

    const-string/jumbo v1, "sendDone for imapidle, for account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    const-string/jumbo v1, "DONE"

    invoke-virtual {v0, v1}, Lcom/kingsoft/email/mail/store/ImapConnection;->sendContinuation(Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method

.method private setPeriodicSync(I)V
    .locals 10
    .param p1, "syncInternal"    # I

    .prologue
    .line 184
    const-string/jumbo v3, "IMAP-PUSH"

    const-string/jumbo v4, "setPeriodicSync as 10 minutes, as it doesn\'t support imap idle."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 188
    .local v2, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/PeriodicSync;

    .line 189
    .local v1, "sync":Landroid/content/PeriodicSync;
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {v3, v4, v5}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 193
    .end local v1    # "sync":Landroid/content/PeriodicSync;
    :cond_0
    iget-object v3, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    int-to-long v6, p1

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 196
    return-void
.end method

.method private startIdleWakeLock()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "email_for_idle"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 172
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 173
    return-void
.end method


# virtual methods
.method public bridge synthetic appendMessages([Lcom/kingsoft/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "x0"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->appendMessages([Lcom/kingsoft/emailcommon/mail/Message;)V

    return-void
.end method

.method public bridge synthetic canCreate(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "x0"    # Lcom/kingsoft/emailcommon/mail/Folder$FolderType;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->canCreate(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic close(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->close(Z)V

    return-void
.end method

.method public bridge synthetic closeConnection()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->closeConnection()V

    return-void
.end method

.method public bridge synthetic copyMessages([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/Folder;Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 0
    .param p1, "x0"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "x1"    # Lcom/kingsoft/emailcommon/mail/Folder;
    .param p3, "x2"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/ImapFolder;->copyMessages([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/Folder;Lcom/kingsoft/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    return-void
.end method

.method public bridge synthetic create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "x0"    # Lcom/kingsoft/emailcommon/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->create(Lcom/kingsoft/emailcommon/mail/Folder$FolderType;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic createMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->createMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delete(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->delete(Z)V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->exists()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic expunge()[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->expunge()[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 0
    .param p1, "x0"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "x1"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "x2"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/ImapFolder;->fetch([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    return-void
.end method

.method public bridge synthetic fetchAttachment([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 0
    .param p1, "x0"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "x1"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lcom/kingsoft/email/mail/store/ImapFolder;->fetchAttachment([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    return-void
.end method

.method public bridge synthetic fetchInternal([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 0
    .param p1, "x0"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "x1"    # Lcom/kingsoft/emailcommon/mail/FetchProfile;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lcom/kingsoft/email/mail/store/ImapFolder;->fetchInternal([Lcom/kingsoft/emailcommon/mail/Message;Lcom/kingsoft/emailcommon/mail/FetchProfile;JLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)V

    return-void
.end method

.method public bridge synthetic getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessage(Ljava/lang/String;)Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageCount()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessageCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessages(IIJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessages(IIJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessages(IILcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessages(IILcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessages(JJLcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # Lcom/android/emailcommon/service/SearchParams;
    .param p2, "x1"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessages(Lcom/android/emailcommon/service/SearchParams;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessages([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessages([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(J)[Ljava/lang/String;
    .locals 8
    .param p1, "start"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "uids":[Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%d:*%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string/jumbo v7, " NOT DELETED"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "command":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->searchForUids(Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingsoft/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 387
    :goto_0
    return-object v2

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Lcom/kingsoft/email/mail/store/ImapStore$ImapException;
    invoke-virtual {v1}, Lcom/kingsoft/email/mail/store/ImapStore$ImapException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/kingsoft/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/kingsoft/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->getMode()Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPermanentFlags()[Lcom/kingsoft/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->getPermanentFlags()[Lcom/kingsoft/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method public handleAsyncUntaggedResponse(Lcom/kingsoft/email/mail/store/imap/ImapResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/kingsoft/email/mail/store/imap/ImapResponse;

    .prologue
    const/4 v5, 0x1

    .line 355
    const-string/jumbo v2, "IMAP-PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle imap response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , for account"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 357
    invoke-virtual {p1}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 358
    invoke-virtual {p1, v5}, Lcom/kingsoft/email/mail/store/imap/ImapResponse;->getElementOrNone(I)Lcom/kingsoft/email/mail/store/imap/ImapElement;

    move-result-object v0

    .line 359
    .local v0, "elem":Lcom/kingsoft/email/mail/store/imap/ImapElement;
    instance-of v2, v0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;

    if-eqz v2, :cond_0

    .line 360
    check-cast v0, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;

    .end local v0    # "elem":Lcom/kingsoft/email/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/imap/ImapSimpleString;->getString()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "string":Ljava/lang/String;
    const-string/jumbo v2, "EXISTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->sendDone()V

    .line 363
    iget-object v2, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->needsPoll:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 368
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/kingsoft/email/mail/store/ImapFolder;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isStoped()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->open(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    return-void
.end method

.method public bridge synthetic openInternal(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kingsoft/email/mail/store/ImapFolder;->openInternal(Lcom/kingsoft/emailcommon/mail/Folder$OpenMode;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->start()V

    .line 342
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected requestSync()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 140
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder;->getStore()Lcom/kingsoft/email/mail/store/ImapStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingsoft/email/mail/store/ImapStore;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 141
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 144
    .local v3, "mailbox":Lcom/android/emailcommon/provider/Mailbox;
    iget-wide v4, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->createSyncBundle(J)Landroid/os/Bundle;

    move-result-object v2

    .line 146
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "do_not_retry"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string/jumbo v4, "expedited"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string/jumbo v4, "__push_only__"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    iget-object v4, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mAndroidAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public bridge synthetic setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V
    .locals 0
    .param p1, "x0"    # [Lcom/kingsoft/emailcommon/mail/Message;
    .param p2, "x1"    # [Lcom/kingsoft/emailcommon/mail/Flag;
    .param p3, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kingsoft/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/kingsoft/email/mail/store/ImapFolder;->setFlags([Lcom/kingsoft/emailcommon/mail/Message;[Lcom/kingsoft/emailcommon/mail/Flag;Z)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    new-instance v0, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;

    invoke-direct {v0, p0}, Lcom/kingsoft/email/mail/store/ImapPushFolder$1;-><init>(Lcom/kingsoft/email/mail/store/ImapPushFolder;)V

    .line 330
    .local v0, "runner":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 347
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    invoke-virtual {v0}, Lcom/kingsoft/email/mail/store/ImapConnection;->close()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/mail/store/ImapPushFolder;->mConnection:Lcom/kingsoft/email/mail/store/ImapConnection;

    .line 351
    :cond_0
    return-void
.end method
