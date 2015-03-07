.class Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;
.super Ljava/util/TimerTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshTimerTask"
.end annotation


# instance fields
.field final mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AbstractActivityController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "controller"    # Lcom/kingsoft/mail/ui/AbstractActivityController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4053
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4054
    iput-object p2, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;->mHandler:Landroid/os/Handler;

    .line 4055
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;->mController:Lcom/kingsoft/mail/ui/AbstractActivityController;

    .line 4056
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask$1;-><init>(Lcom/kingsoft/mail/ui/AbstractActivityController$RefreshTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4066
    return-void
.end method
