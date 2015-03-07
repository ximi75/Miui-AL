.class public Lcom/kingsoft/emailsync/MailboxAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MailboxAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-string/jumbo v2, "mailbox"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    .local v0, "mailboxId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/kingsoft/emailsync/SyncManager;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/kingsoft/emailsync/SyncManager;->alert(Landroid/content/Context;J)V

    goto :goto_0
.end method
