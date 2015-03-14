.class public Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiUserEventUpLoadReceiver.java"


# static fields
.field public static final INTENT_USER_EVENT_UPLOAD_ACTION:Ljava/lang/String; = "action.userevent.upload"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getLastSyncTime(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, 0x0

    .line 27
    const-string/jumbo v1, "xieyi"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "synctime"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 29
    return-wide v3
.end method

.method public static setSyncTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 33
    const-string/jumbo v1, "xieyi"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "synctime"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;->setSyncTime(Landroid/content/Context;J)V

    .line 15
    new-instance v0, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver$1;-><init>(Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver$1;->start()V

    .line 24
    return-void
.end method
