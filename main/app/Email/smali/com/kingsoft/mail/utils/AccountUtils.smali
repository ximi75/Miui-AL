.class public Lcom/kingsoft/mail/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 102
    .local v7, "accountsCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 104
    .local v6, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    :try_start_0
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    if-eqz v7, :cond_1

    .line 107
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    new-instance v1, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v1, v7}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_0

    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 112
    :cond_1
    if-eqz v7, :cond_2

    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/kingsoft/mail/providers/Account;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/mail/providers/Account;

    return-object v1
.end method

.method public static getSyncingAccounts(Landroid/content/Context;)[Lcom/kingsoft/mail/providers/Account;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 73
    .local v8, "accountsCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 76
    .local v7, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    :try_start_0
    invoke-static {}, Lcom/kingsoft/mail/providers/MailAppProvider;->getAccountsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 78
    if-eqz v8, :cond_2

    .line 79
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    new-instance v6, Lcom/kingsoft/mail/providers/Account;

    invoke-direct {v6, v8}, Lcom/kingsoft/mail/providers/Account;-><init>(Landroid/database/Cursor;)V

    .line 81
    .local v6, "account":Lcom/kingsoft/mail/providers/Account;
    invoke-virtual {v6}, Lcom/kingsoft/mail/providers/Account;->isAccountSyncRequired()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v6    # "account":Lcom/kingsoft/mail/providers/Account;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_1

    .line 88
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 87
    :cond_2
    if-eqz v8, :cond_3

    .line 88
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/kingsoft/mail/providers/Account;

    invoke-interface {v7, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/kingsoft/mail/providers/Account;

    return-object v1
.end method

.method public static mergeAccountLists(Ljava/util/List;[Lcom/kingsoft/mail/providers/Account;Z)Ljava/util/List;
    .locals 7
    .param p1, "accounts"    # [Lcom/kingsoft/mail/providers/Account;
    .param p2, "prioritizeAccountList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;[",
            "Lcom/kingsoft/mail/providers/Account;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingsoft/mail/providers/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "inList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v5, "newAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/kingsoft/mail/providers/Account;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "existingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/mail/providers/Account;

    .line 48
    .local v0, "account":Lcom/kingsoft/mail/providers/Account;
    iget-object v6, v0, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v0    # "account":Lcom/kingsoft/mail/providers/Account;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 55
    aget-object v6, p1, v3

    iget-object v1, v6, Lcom/kingsoft/mail/providers/Account;->name:Ljava/lang/String;

    .line 58
    .local v1, "accountName":Ljava/lang/String;
    if-nez p2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    :cond_1
    aget-object v6, p1, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "accountName":Ljava/lang/String;
    :cond_3
    return-object v5
.end method
