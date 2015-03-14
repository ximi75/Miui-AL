.class public Lcom/kingsoft/email/service/EmailBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    return-void
.end method
