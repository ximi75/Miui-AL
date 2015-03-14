.class public abstract Lcom/kingsoft/emailsync/AbstractSyncService;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/emailsync/AbstractSyncService$ValidationResult;
    }
.end annotation


# static fields
.field public static final EXIT_ACCESS_DENIED:I = 0x5

.field public static final EXIT_DONE:I = 0x0

.field public static final EXIT_EXCEPTION:I = 0x3

.field public static final EXIT_IO_ERROR:I = 0x1

.field public static final EXIT_LOGIN_FAILURE:I = 0x2

.field public static final EXIT_SECURITY_FAILURE:I = 0x4


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public mChangeCount:I

.field public mContext:Landroid/content/Context;

.field protected mExitReason:Ljava/lang/String;

.field protected mExitStatus:I

.field public mFileLog:Z

.field public mIsValid:Z

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected mMailboxId:J

.field protected mMailboxName:Ljava/lang/String;

.field protected mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/kingsoft/emailsync/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mRequestTime:J

.field protected volatile mStop:Z

.field public volatile mSyncReason:I

.field protected final mSynchronizer:Ljava/lang/Object;

.field public volatile mThread:Ljava/lang/Thread;

.field public mUserLog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_mailbox"    # Lcom/android/emailcommon/provider/Mailbox;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mExitStatus:I

    .line 59
    iput v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mChangeCount:I

    .line 60
    iput v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mSyncReason:I

    .line 61
    iput-boolean v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mStop:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 65
    iput-boolean v2, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mIsValid:Z

    .line 67
    iput-boolean v2, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mUserLog:Z

    .line 68
    iput-boolean v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mFileLog:Z

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestTime:J

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 113
    iput-object p1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 115
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailboxId:J

    .line 116
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 117
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mExitStatus:I

    .line 59
    iput v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mChangeCount:I

    .line 60
    iput v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mSyncReason:I

    .line 61
    iput-boolean v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mStop:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 65
    iput-boolean v2, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mIsValid:Z

    .line 67
    iput-boolean v2, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mUserLog:Z

    .line 68
    iput-boolean v1, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mFileLog:Z

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestTime:J

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 122
    return-void
.end method

.method public static validate(Ljava/lang/Class;Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingsoft/emailsync/AbstractSyncService;",
            ">;",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Landroid/content/Context;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/kingsoft/emailsync/AbstractSyncService;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/emailsync/AbstractSyncService;

    .line 139
    .local v0, "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    invoke-virtual {v0, p1, p2}, Lcom/kingsoft/emailsync/AbstractSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    .end local v0    # "svc":Lcom/kingsoft/emailsync/AbstractSyncService;
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v1

    .line 143
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addRequest(Lcom/kingsoft/emailsync/Request;)V
    .locals 1
    .param p1, "req"    # Lcom/kingsoft/emailsync/Request;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    return-void
.end method

.method public abstract alarm()Z
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 300
    return-void
.end method

.method public errorLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 249
    iget-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mFileLog:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method public getSynchronizer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    return-object v0
.end method

.method public hasConnectivity()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 261
    iget-object v5, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 263
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .local v2, "tries":I
    move v3, v2

    .line 264
    .end local v2    # "tries":I
    .local v3, "tries":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    if-ge v3, v4, :cond_1

    .line 267
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 268
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 276
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_1
    return v4

    .line 272
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const-wide/16 v5, 0x2710

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v3, v2

    .line 275
    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_0

    .line 276
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 273
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public hasPendingRequests()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mStop:Z

    return v0
.end method

.method public removeRequest(Lcom/kingsoft/emailsync/Request;)V
    .locals 1
    .param p1, "req"    # Lcom/kingsoft/emailsync/Request;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract resetCalendarSyncKey()V
.end method

.method public abstract stop()V
.end method

.method public userLog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mUserLog:Z

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/emailsync/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "string2"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mUserLog:Z

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingsoft/emailsync/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mUserLog:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 213
    :goto_0
    iget-boolean v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mFileLog:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-static {p2}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/Exception;)V

    .line 216
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 9
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 225
    iget-boolean v6, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mUserLog:Z

    if-eqz v6, :cond_0

    .line 227
    array-length v6, p1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 228
    aget-object v3, p1, v8

    .line 236
    .local v3, "logText":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    iget-boolean v6, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->mFileLog:Z

    if-eqz v6, :cond_0

    .line 238
    iget-object v6, p0, Lcom/kingsoft/emailsync/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/kingsoft/mail/utils/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v3    # "logText":Ljava/lang/String;
    :cond_0
    return-void

    .line 230
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 232
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v5    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "logText":Ljava/lang/String;
    goto :goto_0
.end method

.method public abstract validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
.end method
