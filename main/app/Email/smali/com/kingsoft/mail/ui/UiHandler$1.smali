.class Lcom/kingsoft/mail/ui/UiHandler$1;
.super Ljava/lang/Object;
.source "UiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/ui/UiHandler;->post(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/UiHandler;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/UiHandler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kingsoft/mail/ui/UiHandler$1;->this$0:Lcom/kingsoft/mail/ui/UiHandler;

    iput-object p2, p0, Lcom/kingsoft/mail/ui/UiHandler$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingsoft/mail/ui/UiHandler$1;->this$0:Lcom/kingsoft/mail/ui/UiHandler;

    # getter for: Lcom/kingsoft/mail/ui/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/kingsoft/mail/ui/UiHandler;->access$000(Lcom/kingsoft/mail/ui/UiHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 51
    iget-object v0, p0, Lcom/kingsoft/mail/ui/UiHandler$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    return-void
.end method
