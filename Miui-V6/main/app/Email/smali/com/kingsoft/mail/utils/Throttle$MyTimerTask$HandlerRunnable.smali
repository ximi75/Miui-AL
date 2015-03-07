.class Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;
.super Ljava/lang/Object;
.source "Throttle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;Lcom/kingsoft/mail/utils/Throttle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;
    .param p2, "x1"    # Lcom/kingsoft/mail/utils/Throttle$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/kingsoft/mail/utils/Throttle;

    const/4 v1, 0x0

    # setter for: Lcom/kingsoft/mail/utils/Throttle;->mRunningTimerTask:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;
    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/Throttle;->access$302(Lcom/kingsoft/mail/utils/Throttle;Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;)Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    .line 165
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    # getter for: Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->mCanceled:Z
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->access$400(Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;

    iget-object v0, v0, Lcom/kingsoft/mail/utils/Throttle$MyTimerTask;->this$0:Lcom/kingsoft/mail/utils/Throttle;

    # getter for: Lcom/kingsoft/mail/utils/Throttle;->mCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/Throttle;->access$500(Lcom/kingsoft/mail/utils/Throttle;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 169
    :cond_0
    return-void
.end method
