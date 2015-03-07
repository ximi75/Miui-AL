.class public Lcom/kingsoft/email/service/ImapPushService;
.super Landroid/app/Service;
.source "ImapPushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final ACTION_IMAPPUSH_REFRESH:Ljava/lang/String; = "com.kingsoft.email.ACTION_IMAPPUSH_REFRESH"

.field private static final ACTION_IMAPPUSH_SHUTDOWN:Ljava/lang/String; = "com.kingsoft.email.ACTION_IMAPPUSH_SHUTDOWN"

.field private static final ACTION_IMAPPUSH_START:Ljava/lang/String; = "com.kingsoft.email.ACTION_IMAPPUSH_START"

.field private static final ACTION_IMAPPUSH_STOP:Ljava/lang/String; = "com.kingsoft.email.ACTION_IMAPPUSH_STOP"

.field public static final ALL_ACCOUNTS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "IMAP"

.field private static final idle_debug:Z

.field public static unsupported:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private folderPushers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingsoft/email/mail/store/ImapPushFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private thread:Ljava/lang/Thread;

.field private threadFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kingsoft/email/service/ImapPushService;->unsupported:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/email/service/ImapPushService;->threadFlag:Z

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingsoft/email/service/ImapPushService$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/service/ImapPushService$1;-><init>(Lcom/kingsoft/email/service/ImapPushService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/email/service/ImapPushService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/ImapPushService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/kingsoft/email/service/ImapPushService;->threadFlag:Z

    return v0
.end method

.method static synthetic access$100(Lcom/kingsoft/email/service/ImapPushService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/ImapPushService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->folderPushers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/email/service/ImapPushService;)[Lcom/android/emailcommon/provider/Account;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/ImapPushService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kingsoft/email/service/ImapPushService;->getAccount()[Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/email/service/ImapPushService;Lcom/android/emailcommon/provider/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/email/service/ImapPushService;
    .param p1, "x1"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingsoft/email/service/ImapPushService;->isImapProtocol(Lcom/android/emailcommon/provider/Account;)Z

    move-result v0

    return v0
.end method

.method public static actionRefresh(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # I

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-class v1, Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v1, "com.kingsoft.email.ACTION_IMAPPUSH_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    return-void
.end method

.method public static actionShutdown(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "com.kingsoft.email.ACTION_IMAPPUSH_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void
.end method

.method public static actionStart(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # I

    .prologue
    .line 102
    invoke-static {p0}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->getInstance(Landroid/content/Context;)Lcom/kingsoft/mail/optimize/battery/SilenceManager;

    move-result-object v1

    .line 103
    .local v1, "silenceManager":Lcom/kingsoft/mail/optimize/battery/SilenceManager;
    invoke-virtual {v1}, Lcom/kingsoft/mail/optimize/battery/SilenceManager;->isInNormalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "i":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    const-string/jumbo v2, "account_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-class v2, Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v2, "com.kingsoft.email.ACTION_IMAPPUSH_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static actionStop(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # I

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-class v1, Lcom/kingsoft/email/service/ImapPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "com.kingsoft.email.ACTION_IMAPPUSH_STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    return-void
.end method

.method private getAccount()[Lcom/android/emailcommon/provider/Account;
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/kingsoft/email/service/ImapPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/provider/Account;->getAllEmailAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/emailcommon/provider/Account;

    .line 209
    .local v0, "accounts":[Lcom/android/emailcommon/provider/Account;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/emailcommon/provider/Account;

    return-object v2
.end method

.method private isImapProtocol(Lcom/android/emailcommon/provider/Account;)Z
    .locals 2
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/kingsoft/email/service/ImapPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "protocol":Ljava/lang/String;
    const-string/jumbo v1, "imap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const/4 v1, 0x1

    .line 217
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refresh(I)V
    .locals 2
    .param p1, "accountId"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kingsoft/email/service/ImapPushService$4;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/email/service/ImapPushService$4;-><init>(Lcom/kingsoft/email/service/ImapPushService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private reschedulePushers(I)V
    .locals 2
    .param p1, "accountId"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kingsoft/email/service/ImapPushService$2;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/email/service/ImapPushService$2;-><init>(Lcom/kingsoft/email/service/ImapPushService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kingsoft/email/service/ImapPushService$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/email/service/ImapPushService$3;-><init>(Lcom/kingsoft/email/service/ImapPushService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method private stop(I)V
    .locals 2
    .param p1, "accountId"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kingsoft/email/service/ImapPushService$5;

    invoke-direct {v1, p0, p1}, Lcom/kingsoft/email/service/ImapPushService$5;-><init>(Lcom/kingsoft/email/service/ImapPushService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 175
    const-string/jumbo v0, "IMAP"

    const-string/jumbo v1, "ImapPushService onCreate()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/email/service/ImapPushService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 185
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 191
    const-string/jumbo v0, "IMAP"

    const-string/jumbo v1, "ImapPushService onDestroy()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 144
    if-nez p1, :cond_1

    .line 145
    invoke-direct {p0, v4}, Lcom/kingsoft/email/service/ImapPushService;->reschedulePushers(I)V

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    const-string/jumbo v3, "account_id"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "accountId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.kingsoft.email.ACTION_IMAPPUSH_START"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    invoke-direct {p0, v0}, Lcom/kingsoft/email/service/ImapPushService;->reschedulePushers(I)V

    goto :goto_0

    .line 153
    :cond_2
    const-string/jumbo v3, "com.kingsoft.email.ACTION_IMAPPUSH_STOP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    if-ne v0, v4, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/kingsoft/email/service/ImapPushService;->reset()V

    goto :goto_0

    .line 157
    :cond_3
    invoke-direct {p0, v0}, Lcom/kingsoft/email/service/ImapPushService;->stop(I)V

    goto :goto_0

    .line 160
    :cond_4
    const-string/jumbo v3, "com.kingsoft.email.ACTION_IMAPPUSH_SHUTDOWN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    invoke-direct {p0}, Lcom/kingsoft/email/service/ImapPushService;->reset()V

    .line 162
    invoke-virtual {p0}, Lcom/kingsoft/email/service/ImapPushService;->stopSelf()V

    .line 163
    const/4 v2, 0x2

    goto :goto_0

    .line 164
    :cond_5
    const-string/jumbo v3, "com.kingsoft.email.ACTION_IMAPPUSH_REFRESH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lcom/kingsoft/email/service/ImapPushService;->refresh(I)V

    goto :goto_0
.end method
