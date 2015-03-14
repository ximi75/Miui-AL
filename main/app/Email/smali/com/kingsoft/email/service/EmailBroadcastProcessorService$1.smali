.class Lcom/kingsoft/email/service/EmailBroadcastProcessorService$1;
.super Ljava/util/TimerTask;
.source "EmailBroadcastProcessorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/service/EmailBroadcastProcessorService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/service/EmailBroadcastProcessorService;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/service/EmailBroadcastProcessorService;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kingsoft/email/service/EmailBroadcastProcessorService$1;->this$0:Lcom/kingsoft/email/service/EmailBroadcastProcessorService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/kingsoft/email/EmailApplication;->getInstance()Lcom/kingsoft/email/EmailApplication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 154
    :cond_0
    return-void
.end method
