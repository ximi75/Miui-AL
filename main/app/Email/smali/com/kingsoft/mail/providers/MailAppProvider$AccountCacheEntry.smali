.class Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;
.super Ljava/lang/Object;
.source "MailAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingsoft/mail/providers/MailAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountCacheEntry"
.end annotation


# static fields
.field private static final KEY_ACCOUNT:Ljava/lang/String; = "acct"

.field private static final KEY_QUERY_URI:Ljava/lang/String; = "queryUri"


# instance fields
.field final mAccount:Lcom/kingsoft/mail/providers/Account;

.field final mAccountsQueryUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "accountQueryUri"    # Landroid/net/Uri;

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p1, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 533
    iput-object p2, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    .line 534
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    const-string/jumbo v1, "acct"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/providers/Account;->newinstance(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    .line 538
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    if-nez v1, :cond_0

    .line 539
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AccountCacheEntry de-serializing failed. Account object could not be created from the JSONObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    iget-object v1, v1, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    sget-object v2, Lcom/kingsoft/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/kingsoft/mail/providers/Settings;

    if-ne v1, v2, :cond_1

    .line 544
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AccountCacheEntry de-serializing failed. Settings could not be created from the JSONObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_1
    const-string/jumbo v1, "queryUri"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "uriStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 549
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_2
    iput-object v3, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 557
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "acct"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/kingsoft/mail/providers/Account;

    invoke-virtual {v3}, Lcom/kingsoft/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "queryUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 560
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
