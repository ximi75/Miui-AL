.class Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver$1;
.super Ljava/lang/Thread;
.source "MiuiUserEventUpLoadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;

.field final synthetic val$con:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver$1;->this$0:Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver;

    iput-object p2, p0, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver$1;->val$con:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 18
    :try_start_0
    new-instance v1, Lcom/kingsoft/email/statistics/UserEventsUploader;

    iget-object v2, p0, Lcom/kingsoft/email/statistics/MiuiUserEventUpLoadReceiver$1;->val$con:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingsoft/email/statistics/UserEventsUploader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/kingsoft/email/statistics/UserEventsUploader;->postEventsToServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
