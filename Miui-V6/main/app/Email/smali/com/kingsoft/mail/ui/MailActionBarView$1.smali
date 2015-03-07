.class Lcom/kingsoft/mail/ui/MailActionBarView$1;
.super Lcom/kingsoft/mail/providers/AccountObserver;
.source "MailActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/ui/MailActionBarView;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/ui/MailActionBarView;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/kingsoft/mail/ui/MailActionBarView$1;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    invoke-direct {p0}, Lcom/kingsoft/mail/providers/AccountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "newAccount"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingsoft/mail/ui/MailActionBarView$1;->this$0:Lcom/kingsoft/mail/ui/MailActionBarView;

    # invokes: Lcom/kingsoft/mail/ui/MailActionBarView;->updateAccount(Lcom/kingsoft/mail/providers/Account;)V
    invoke-static {v0, p1}, Lcom/kingsoft/mail/ui/MailActionBarView;->access$200(Lcom/kingsoft/mail/ui/MailActionBarView;Lcom/kingsoft/mail/providers/Account;)V

    .line 305
    return-void
.end method
