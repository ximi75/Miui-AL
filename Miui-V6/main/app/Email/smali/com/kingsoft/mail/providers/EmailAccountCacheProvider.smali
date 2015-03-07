.class public Lcom/kingsoft/mail/providers/EmailAccountCacheProvider;
.super Lcom/kingsoft/mail/providers/MailAppProvider;
.source "EmailAccountCacheProvider.java"


# static fields
.field private static final sAuthority:Ljava/lang/String; = "com.android.email3.accountcache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingsoft/mail/providers/MailAppProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "com.android.email3.accountcache"

    return-object v0
.end method

.method protected getNoAccountsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "content://ui.email.android.com/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "AccountSettings.no_account"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    return-object v0
.end method

.method public getSuggestionAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/EmailAccountCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10039a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
