.class public Lcom/kingsoft/mail/compose/RecipientAdapter;
.super Lcom/kingsoft/ex/chips/BaseRecipientAdapter;
.source "RecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/kingsoft/mail/providers/Account;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/kingsoft/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/compose/RecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 27
    return-void
.end method
