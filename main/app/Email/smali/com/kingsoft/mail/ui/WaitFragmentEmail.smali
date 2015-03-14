.class public Lcom/kingsoft/mail/ui/WaitFragmentEmail;
.super Lcom/kingsoft/mail/ui/WaitFragment;
.source "WaitFragmentEmail.java"


# instance fields
.field private mActionBarController:Lcom/kingsoft/mail/ui/AbstractActivityController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingsoft/mail/ui/WaitFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/ui/WaitFragmentEmail;
    .locals 2
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 29
    new-instance v0, Lcom/kingsoft/mail/ui/WaitFragmentEmail;

    invoke-direct {v0}, Lcom/kingsoft/mail/ui/WaitFragmentEmail;-><init>()V

    .line 30
    .local v0, "fragment":Lcom/kingsoft/mail/ui/WaitFragmentEmail;
    invoke-static {p0}, Lcom/kingsoft/mail/ui/WaitFragment;->newInstance(Lcom/kingsoft/mail/providers/Account;)Lcom/kingsoft/mail/ui/WaitFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/ui/WaitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingsoft/mail/ui/WaitFragmentEmail;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/kingsoft/mail/ui/WaitFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f1100bb

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/ui/WaitFragmentEmail;->setThemeRes(I)V

    .line 40
    return-void
.end method
