.class public Lcom/kingsoft/email/service/CheckSendResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckSendResultReceiver.java"


# static fields
.field public static final CHECK_SEND_RESULT:Ljava/lang/String; = "com.kingsoft.email.action.CHECK_SEND_RESULT"

.field public static final CHECK_SEND_RESULT_INTERVAL:I = 0x493e0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static clearSentAlarmById(Landroid/content/Context;I)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 46
    const-string/jumbo v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 48
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.kingsoft.email.action.CHECK_SEND_RESULT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-static {p0, p1, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 52
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 55
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 57
    .local v2, "notificationMgr":Landroid/app/NotificationManager;
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v9, -0x1

    .line 21
    if-nez p2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 26
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "com.kingsoft.email.action.CHECK_SEND_RESULT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string/jumbo v0, "_id"

    invoke-virtual {p2, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 31
    .local v7, "msgId":J
    const-string/jumbo v0, "mailboxKey"

    invoke-virtual {p2, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 33
    .local v4, "mailboxKey":J
    const-string/jumbo v0, "accountKey"

    invoke-virtual {p2, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 35
    .local v1, "accountKey":J
    cmp-long v0, v7, v9

    if-eqz v0, :cond_0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_0

    cmp-long v0, v1, v9

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 37
    .local v3, "mailMessage":Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v3, :cond_0

    iget-wide v9, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v0, v9, v4

    if-nez v0, :cond_0

    iget-wide v9, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    cmp-long v0, v9, v1

    if-nez v0, :cond_0

    move-object v0, p1

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/kingsoft/mail/utils/NotificationUtils;->displaySentFailTimeout(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;J)V

    goto :goto_0
.end method
