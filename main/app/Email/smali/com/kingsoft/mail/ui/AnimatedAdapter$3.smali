.class Lcom/kingsoft/mail/ui/AnimatedAdapter$3;
.super Lcom/kingsoft/mail/providers/AccountObserver;
.source "AnimatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/AnimatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/AnimatedAdapter;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$3;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$3;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    # invokes: Lcom/kingsoft/mail/ui/AnimatedAdapter;->setAccount(Lcom/kingsoft/mail/providers/Account;)Z
    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->access$900(Lcom/kingsoft/mail/ui/AnimatedAdapter;Lcom/kingsoft/mail/providers/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/kingsoft/mail/ui/AnimatedAdapter$3;->this$0:Lcom/kingsoft/mail/ui/AnimatedAdapter;

    invoke-virtual {v0}, Lcom/kingsoft/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 210
    :cond_0
    return-void
.end method
