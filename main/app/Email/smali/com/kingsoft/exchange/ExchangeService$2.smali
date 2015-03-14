.class Lcom/kingsoft/exchange/ExchangeService$2;
.super Lcom/kingsoft/emailsync/SyncManager$AccountObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/exchange/ExchangeService;->getAccountObserver(Landroid/os/Handler;)Lcom/kingsoft/emailsync/SyncManager$AccountObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/kingsoft/exchange/ExchangeService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/kingsoft/exchange/ExchangeService$2;->this$0:Lcom/kingsoft/exchange/ExchangeService;

    invoke-direct {p0, p1, p2}, Lcom/kingsoft/emailsync/SyncManager$AccountObserver;-><init>(Lcom/kingsoft/emailsync/SyncManager;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public newAccount(J)V
    .locals 6
    .param p1, "acctId"    # J

    .prologue
    const/4 v5, 0x0

    .line 663
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 664
    .local v0, "acct":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 666
    const-string/jumbo v2, "Exchange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot initialize bad acctId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 678
    :goto_0
    return-void

    .line 669
    :cond_0
    new-instance v1, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 670
    .local v1, "main":Lcom/android/emailcommon/provider/Mailbox;
    const-string/jumbo v2, "__eas"

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "__eas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 672
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 673
    const/16 v2, 0x44

    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 674
    const/4 v2, -0x2

    iput v2, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 675
    iput-boolean v5, v1, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 676
    invoke-static {}, Lcom/kingsoft/emailsync/SyncManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initializing account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingsoft/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
