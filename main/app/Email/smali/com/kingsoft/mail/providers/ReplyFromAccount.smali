.class public Lcom/kingsoft/mail/providers/ReplyFromAccount;
.super Ljava/lang/Object;
.source "ReplyFromAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADDRESS_STRING:Ljava/lang/String; = "address"

.field private static final BASE_ACCOUNT_URI:Ljava/lang/String; = "baseAccountUri"

.field private static final IS_CUSTOM_FROM:Ljava/lang/String; = "isCustom"

.field private static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NAME_STRING:Ljava/lang/String; = "name"

.field private static final REPLY_TO:Ljava/lang/String; = "replyTo"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public account:Lcom/kingsoft/mail/providers/Account;

.field public address:Ljava/lang/String;

.field baseAccountUri:Landroid/net/Uri;

.field public isCustomFrom:Z

.field public isDefault:Z

.field public name:Ljava/lang/String;

.field public replyTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/kingsoft/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "baseAccountUri"    # Landroid/net/Uri;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "replyTo"    # Ljava/lang/String;
    .param p6, "isDefault"    # Z
    .param p7, "isCustom"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->account:Lcom/kingsoft/mail/providers/Account;

    .line 56
    iput-object p2, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->baseAccountUri:Landroid/net/Uri;

    .line 57
    iput-object p3, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->replyTo:Ljava/lang/String;

    .line 60
    iput-boolean p6, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->isDefault:Z

    .line 61
    iput-boolean p7, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->isCustomFrom:Z

    .line 62
    return-void
.end method

.method public static deserialize(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 5
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "stringExtra"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/kingsoft/mail/providers/ReplyFromAccount;->deserialize(Lcom/kingsoft/mail/providers/Account;Lorg/json/JSONObject;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not deserialize replyfromaccount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static deserialize(Lcom/kingsoft/mail/providers/Account;Lorg/json/JSONObject;)Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .locals 12
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 80
    const/4 v9, 0x0

    .line 82
    .local v9, "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :try_start_0
    const-string/jumbo v1, "baseAccountUri"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingsoft/mail/utils/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "addressString":Ljava/lang/String;
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "nameString":Ljava/lang/String;
    const-string/jumbo v1, "replyTo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "replyTo":Ljava/lang/String;
    const-string/jumbo v1, "isDefault"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 87
    .local v6, "isDefault":Z
    const-string/jumbo v1, "isCustom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 88
    .local v7, "isCustomFrom":Z
    new-instance v0, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingsoft/mail/providers/ReplyFromAccount;-><init>(Lcom/kingsoft/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "addressString":Ljava/lang/String;
    .end local v4    # "nameString":Ljava/lang/String;
    .end local v5    # "replyTo":Ljava/lang/String;
    .end local v6    # "isDefault":Z
    .end local v7    # "isCustomFrom":Z
    .end local v9    # "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .local v0, "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :goto_0
    return-object v0

    .line 90
    .end local v0    # "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .restart local v9    # "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    :catch_0
    move-exception v8

    .line 91
    .local v8, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/kingsoft/mail/providers/ReplyFromAccount;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Could not deserialize replyfromaccount"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v8, v10, v11}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v9

    .end local v9    # "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    .restart local v0    # "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    goto :goto_0
.end method

.method public static matchesAccountOrCustomFrom(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "possibleCustomFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/ReplyFromAccount;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "replyFromAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/ReplyFromAccount;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v4

    .line 116
    :cond_1
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    .line 117
    .local v3, "tokens":[Landroid/text/util/Rfc822Token;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 118
    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/mail/utils/Utils;->normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "parsedFromAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kingsoft/mail/utils/Utils;->normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 121
    goto :goto_0

    .line 123
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;

    .line 124
    .local v2, "replyFromAccount":Lcom/kingsoft/mail/providers/ReplyFromAccount;
    iget-object v6, v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingsoft/mail/utils/Utils;->normalizeEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->isCustomFrom:Z

    if-eqz v6, :cond_3

    move v4, v5

    .line 126
    goto :goto_0
.end method


# virtual methods
.method public serialize()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "baseAccountUri"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->baseAccountUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v2, "address"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v2, "replyTo"

    iget-object v3, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->replyTo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v2, "isDefault"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->isDefault:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v2, "isCustom"

    iget-boolean v3, p0, Lcom/kingsoft/mail/providers/ReplyFromAccount;->isCustomFrom:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/kingsoft/mail/providers/ReplyFromAccount;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not serialize account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
