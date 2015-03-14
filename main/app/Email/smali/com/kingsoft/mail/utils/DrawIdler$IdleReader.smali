.class Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;
.super Ljava/lang/Object;
.source "DrawIdler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/utils/DrawIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/utils/DrawIdler;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/utils/DrawIdler;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/kingsoft/mail/utils/DrawIdler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/mail/utils/DrawIdler;Lcom/kingsoft/mail/utils/DrawIdler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/mail/utils/DrawIdler;
    .param p2, "x1"    # Lcom/kingsoft/mail/utils/DrawIdler$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;-><init>(Lcom/kingsoft/mail/utils/DrawIdler;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/kingsoft/mail/utils/DrawIdler;

    # invokes: Lcom/kingsoft/mail/utils/DrawIdler;->setState(I)V
    invoke-static {v0, v3}, Lcom/kingsoft/mail/utils/DrawIdler;->access$100(Lcom/kingsoft/mail/utils/DrawIdler;I)V

    .line 79
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/kingsoft/mail/utils/DrawIdler;

    # getter for: Lcom/kingsoft/mail/utils/DrawIdler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/DrawIdler;->access$200(Lcom/kingsoft/mail/utils/DrawIdler;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/kingsoft/mail/utils/DrawIdler;

    # getter for: Lcom/kingsoft/mail/utils/DrawIdler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/kingsoft/mail/utils/DrawIdler;->access$200(Lcom/kingsoft/mail/utils/DrawIdler;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return v3
.end method

.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/kingsoft/mail/utils/DrawIdler;

    const/4 v1, 0x0

    # invokes: Lcom/kingsoft/mail/utils/DrawIdler;->setState(I)V
    invoke-static {v0, v1}, Lcom/kingsoft/mail/utils/DrawIdler;->access$100(Lcom/kingsoft/mail/utils/DrawIdler;I)V

    .line 74
    return-void
.end method
