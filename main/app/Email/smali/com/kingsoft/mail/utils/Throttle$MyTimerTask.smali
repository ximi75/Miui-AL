.class Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;
.super Ljava/util/TimerTask;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/Throttle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/kingsoft/mail/utils/Throttle;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/utils/Throttle;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/kingsoft/mail/utils/Throttle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/utils/Throttle;Lcom/kingsoft/mail/utils/Throttle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/utils/Throttle;
    .param p2, "x1"    # Lcom/kingsoft/mail/utils/Throttle$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;-><init>(Lcom/kingsoft/mail/utils/Throttle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->mCanceled:Z

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->mCanceled:Z

    .line 158
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/kingsoft/mail/utils/Throttle;

    # getter for: Lcom/kingsoft/mail/utils/Throttle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Throttle;->access$200(Lcom/kingsoft/mail/utils/Throttle;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;Lcom/kingsoft/mail/utils/Throttle$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
