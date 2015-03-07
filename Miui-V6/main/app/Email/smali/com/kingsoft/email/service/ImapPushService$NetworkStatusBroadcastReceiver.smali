.class public Lcom/kingsoft/email/service/ImapPushService$NetworkStatusBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImapPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/email/service/ImapPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStatusBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 56
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 59
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 79
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 61
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 62
    invoke-static {p1}, Lcom/kingsoft/mail/utils/Utils;->getAndroidAccountCount(Landroid/content/Context;)I

    move-result v0

    .line 63
    .local v0, "accountsNumber":I
    if-lez v0, :cond_0

    .line 65
    invoke-static {p1, v7}, Lcom/kingsoft/email/service/ImapPushService;->actionStart(Landroid/content/Context;I)V

    goto :goto_0

    .line 69
    .end local v0    # "accountsNumber":I
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 70
    invoke-static {p1}, Lcom/kingsoft/mail/utils/Utils;->getAndroidAccountCount(Landroid/content/Context;)I

    move-result v0

    .line 71
    .restart local v0    # "accountsNumber":I
    if-lez v0, :cond_0

    .line 73
    const-string/jumbo v4, "IMAP"

    const-string/jumbo v5, "network lost"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/kingsoft/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-static {p1, v7}, Lcom/kingsoft/email/service/ImapPushService;->actionStop(Landroid/content/Context;I)V

    goto :goto_0
.end method
