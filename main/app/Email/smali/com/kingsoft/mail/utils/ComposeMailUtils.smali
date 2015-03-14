.class public Lcom/kingsoft/mail/utils/ComposeMailUtils;
.super Ljava/lang/Object;
.source "ComposeMailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/text/Editable;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "x2"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "x3"    # Landroid/text/Editable;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Landroid/content/ContentValues;

    .prologue
    .line 59
    invoke-static/range {p0 .. p6}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->createMessageValues(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/text/Editable;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static addAddressToList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 219
    :cond_0
    return-void

    .line 212
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 213
    .local v2, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 214
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "emailAdd":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->containAddress(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 216
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static addAddressesToList(Ljava/util/Collection;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/emailcommon/utility/MimeUtil;->MimeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0, p1}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addAddressToList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 206
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "toAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0, p2}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addCcAddressesToList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 255
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static addCcAddressesToList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p1, "compareToList":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_2

    .line 262
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 263
    .local v4, "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 264
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "address":Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->containAddress(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_2
    invoke-static {p1}, Lcom/kingsoft/mail/compose/ComposeActivity;->convertToHashSet(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    .line 272
    .local v1, "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/util/Rfc822Token;

    .line 273
    .restart local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 274
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0    # "address":Ljava/lang/String;
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 278
    invoke-static {p2, v0}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->containAddress(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 279
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "compareTo":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    return-void
.end method

.method public static addRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 8
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "addresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Account;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 297
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "recipientAddress":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->recipientMatchesThisAccount(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 299
    const-string/jumbo v5, "\"\""

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\t"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "recipientAddress":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static addToAddresses(Ljava/util/Collection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addAddressesToList(Ljava/util/Collection;Ljava/util/List;)V

    .line 195
    return-void
.end method

.method public static callAccountSendSaveMethod(Landroid/content/ContentResolver;Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/os/Bundle;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 434
    new-instance v4, Landroid/os/Bundle;

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 435
    .local v4, "methodExtras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 437
    .local v5, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 438
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, "entryValue":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, "key":Ljava/lang/String;
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 441
    check-cast v1, Ljava/lang/String;

    .end local v1    # "entryValue":Ljava/lang/Object;
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    .restart local v1    # "entryValue":Ljava/lang/Object;
    :cond_0
    instance-of v6, v1, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 443
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "entryValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 444
    .restart local v1    # "entryValue":Ljava/lang/Object;
    :cond_1
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 445
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "entryValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 446
    .restart local v1    # "entryValue":Ljava/lang/Object;
    :cond_2
    instance-of v6, v1, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 447
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "entryValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 449
    .restart local v1    # "entryValue":Ljava/lang/Object;
    :cond_3
    sget-object v6, Lcom/kingsoft/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Unexpected object type: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/kingsoft/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 454
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "entryValue":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    iget-object v6, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v7, p1, Lcom/kingsoft/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, p2, v7, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    return-object v6
.end method

.method private static containAddress(Ljava/util/List;Ljava/lang/String;)Z
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 222
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v6

    .line 226
    :cond_1
    invoke-static {p1}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v2

    .line 227
    .local v2, "newAdd":Lcom/kingsoft/mail/providers/Address;
    if-eqz v2, :cond_0

    .line 231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    .local v0, "add":Ljava/lang/String;
    invoke-static {v0}, Lcom/kingsoft/mail/providers/Address;->getEmailAddress(Ljava/lang/String;)Lcom/kingsoft/mail/providers/Address;

    move-result-object v4

    .line 233
    .local v4, "oldAdd":Lcom/kingsoft/mail/providers/Address;
    if-eqz v4, :cond_2

    .line 237
    invoke-virtual {v4}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "oldAddEmail":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 242
    invoke-virtual {v2}, Lcom/kingsoft/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "newAddEmail":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static createMessageValues(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/text/Editable;Ljava/util/List;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "msg"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "replyText"    # Landroid/text/Editable;
    .param p6, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Lcom/kingsoft/mail/providers/Message;",
            "Landroid/text/Editable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    .local p4, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Lcom/kingsoft/mail/providers/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v2, v3}, Lcom/kingsoft/mail/providers/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v10, "fromAddress":Lcom/kingsoft/mail/providers/Address;
    invoke-virtual {v10}, Lcom/kingsoft/mail/providers/Address;->pack()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putCustomFromAddress(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 332
    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->initReplyRecipients(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;ILjava/util/List;Ljava/util/List;)V

    .line 333
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putToAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putCcAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 336
    invoke-static/range {p0 .. p0}, Lcom/kingsoft/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/kingsoft/mail/preferences/MailPrefs;

    move-result-object v15

    .line 337
    .local v15, "mMailPrefs":Lcom/kingsoft/mail/preferences/MailPrefs;
    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/kingsoft/mail/preferences/MailPrefs;->getBccToMyself(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/kingsoft/mail/providers/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putBccAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 344
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100345

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .local v20, "replyLabel":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putSubject(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 355
    :goto_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putRefMessageId(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 359
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v9

    .line 361
    .local v9, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100312

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 362
    .local v21, "sQuoteBegin":Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/kingsoft/mail/providers/Message;->dateReceivedMs:J

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 364
    .local v8, "date":Ljava/util/Date;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v19, "quotedText":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100344

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/kingsoft/mail/providers/Message;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/kingsoft/mail/utils/Utils;->cleanUpString(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v9, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string/jumbo v2, "<br type=\'attribution\'>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string/jumbo v2, "<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v2, "<p/>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 373
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->bodyHtml:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    :goto_1
    const-string/jumbo v2, "</blockquote>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string/jumbo v2, "</div>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Account;->settings:Lcom/kingsoft/mail/providers/Settings;

    iget-object v0, v2, Lcom/kingsoft/mail/providers/Settings;->signature:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 384
    .local v22, "signature":Ljava/lang/String;
    if-nez v22, :cond_2

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 388
    :cond_2
    const/4 v12, 0x0

    .line 389
    .local v12, "htmlBody":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 390
    new-instance v16, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100383

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 393
    .local v16, "messageBody":Landroid/text/SpannableString;
    invoke-static/range {v16 .. v16}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 394
    const/16 v2, 0xf

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 395
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v13

    .line 396
    .local v13, "htmlEncodedString":Ljava/lang/String;
    invoke-static {v13}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 403
    .end local v16    # "messageBody":Landroid/text/SpannableString;
    :goto_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v14, 0x1

    .line 404
    .local v14, "includeQuotedText":Z
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .local v11, "fullBody":Ljava/lang/StringBuilder;
    if-eqz v14, :cond_3

    .line 407
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 408
    .local v23, "text":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    .line 409
    invoke-static/range {v23 .. v23}, Lcom/kingsoft/mail/compose/QuotedTextView;->getQuotedTextOffset(Ljava/lang/String;)I

    move-result v17

    .line 410
    .local v17, "pos":I
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int v18, v2, v17

    .line 411
    .local v18, "quoteStartPos":I
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/kingsoft/mail/providers/MessageModification;->putQuoteStartPos(Landroid/content/ContentValues;I)V

    .line 413
    move-object/from16 v0, p6

    invoke-static {v0, v14}, Lcom/kingsoft/mail/providers/MessageModification;->putAppendRefMessageContent(Landroid/content/ContentValues;Z)V

    .line 421
    .end local v17    # "pos":I
    .end local v18    # "quoteStartPos":I
    .end local v23    # "text":Ljava/lang/String;
    :cond_3
    :goto_4
    const/4 v2, 0x3

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putDraftType(Landroid/content/ContentValues;I)V

    .line 422
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putBodyHtml(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 424
    .end local v8    # "date":Ljava/util/Date;
    .end local v9    # "dateFormat":Ljava/text/DateFormat;
    .end local v11    # "fullBody":Ljava/lang/StringBuilder;
    .end local v12    # "htmlBody":Ljava/lang/String;
    .end local v13    # "htmlEncodedString":Ljava/lang/String;
    .end local v14    # "includeQuotedText":Z
    .end local v19    # "quotedText":Ljava/lang/StringBuilder;
    .end local v21    # "sQuoteBegin":Ljava/lang/String;
    .end local v22    # "signature":Ljava/lang/String;
    :cond_4
    return-void

    .line 348
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 349
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putSubject(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->subject:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/kingsoft/mail/providers/MessageModification;->putSubject(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    .restart local v8    # "date":Ljava/util/Date;
    .restart local v9    # "dateFormat":Ljava/text/DateFormat;
    .restart local v19    # "quotedText":Ljava/lang/StringBuilder;
    .restart local v21    # "sQuoteBegin":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 376
    new-instance v2, Landroid/text/SpannableString;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/kingsoft/mail/providers/Message;->bodyText:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/kingsoft/mail/compose/ComposeActivity;->removeComposingSpans(Landroid/text/Spanned;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 398
    .restart local v12    # "htmlBody":Ljava/lang/String;
    .restart local v22    # "signature":Ljava/lang/String;
    :cond_8
    invoke-static/range {p3 .. p3}, Lcom/kingsoft/mail/compose/ComposeActivity;->removeComposingSpans(Landroid/text/Spanned;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v13

    .line 400
    .restart local v13    # "htmlEncodedString":Ljava/lang/String;
    invoke-static {v13}, Lorg/apache/commons/lang3/StringEscapeUtils;->unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 403
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 415
    .restart local v11    # "fullBody":Ljava/lang/StringBuilder;
    .restart local v14    # "includeQuotedText":Z
    .restart local v23    # "text":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static createQuickReplyMessage(Landroid/content/Context;ZLandroid/widget/EditText;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/os/Handler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromVip"    # Z
    .param p2, "replyEdit"    # Landroid/widget/EditText;
    .param p3, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p4, "msg"    # Lcom/kingsoft/mail/providers/Message;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 74
    .local v7, "replyText":Landroid/text/Editable;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mail/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const v1, 0x7f10019d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/kingsoft/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 84
    .end local v7    # "replyText":Landroid/text/Editable;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v7    # "replyText":Landroid/text/Editable;
    :cond_1
    new-instance v0, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;-><init>(Landroid/content/Context;ZLandroid/widget/EditText;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;Landroid/os/Handler;)V

    .line 81
    .local v0, "runnable":Lcom/kingsoft/mail/utils/ComposeMailUtils$SendMailRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static initReplyRecipients(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Lcom/kingsoft/mail/providers/Message;ILjava/util/List;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p2, "refMessage"    # Lcom/kingsoft/mail/providers/Message;
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Lcom/kingsoft/mail/providers/Message;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 95
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "sentToAddresses":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getReplyToAddressesUnescaped()[Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "replyToAddresses":[Ljava/lang/String;
    array-length v8, v4

    if-lez v8, :cond_2

    aget-object v3, v4, v9

    .line 99
    .local v3, "replyToAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getFromAddressesUnescaped()[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "fromAddresses":[Ljava/lang/String;
    array-length v8, v2

    if-lez v8, :cond_3

    aget-object v1, v2, v9

    .line 103
    .local v1, "fromAddress":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    move-object v3, v1

    .line 111
    :cond_0
    if-nez p3, :cond_4

    .line 112
    invoke-static {p1, v1, v3, v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->initToRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 113
    .local v6, "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v6, p4}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addToAddresses(Ljava/util/Collection;Ljava/util/List;)V

    .line 123
    .end local v6    # "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .end local v1    # "fromAddress":Ljava/lang/String;
    .end local v2    # "fromAddresses":[Ljava/lang/String;
    .end local v3    # "replyToAddress":Ljava/lang/String;
    :cond_2
    move-object v3, v7

    .line 98
    goto :goto_0

    .restart local v2    # "fromAddresses":[Ljava/lang/String;
    .restart local v3    # "replyToAddress":Ljava/lang/String;
    :cond_3
    move-object v1, v7

    .line 100
    goto :goto_1

    .line 114
    .restart local v1    # "fromAddress":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    if-ne p3, v7, :cond_1

    .line 115
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 116
    .local v0, "ccAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, v1, v3, v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->initToRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 117
    .restart local v6    # "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, v6, v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;[Ljava/lang/String;)V

    .line 118
    iget-wide v7, p2, Lcom/kingsoft/mail/providers/Message;->mailBoxKey:J

    invoke-static {p0, p1, v6, v7, v8}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->removeSelf(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;J)V

    .line 119
    invoke-static {v6, p4}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addToAddresses(Ljava/util/Collection;Ljava/util/List;)V

    .line 120
    invoke-virtual {p2}, Lcom/kingsoft/mail/providers/Message;->getCcAddressesUnescaped()[Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v0, v7}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;[Ljava/lang/String;)V

    .line 121
    invoke-static {v0, v6, p5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->addCcAddresses(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static initToRecipients(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "fullSenderAddress"    # Ljava/lang/String;
    .param p2, "replyToAddress"    # Ljava/lang/String;
    .param p3, "inToAddresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/providers/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 153
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 154
    .local v4, "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    :goto_0
    return-object v4

    .line 160
    :cond_1
    array-length v5, p3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-static {p0, p1}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->recipientMatchesThisAccount(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, p3, v7

    invoke-static {p0, v5}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->recipientMatchesThisAccount(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    aget-object v5, p3, v7

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_2
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 171
    .local v0, "address":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->recipientMatchesThisAccount(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 172
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static recipientMatchesThisAccount(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Z
    .locals 1
    .param p0, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p1, "recipientAddress"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/kingsoft/mail/providers/Account;->getReplyFroms()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/kingsoft/mail/providers/ReplyFromAccount;->matchesAccountOrCustomFrom(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static removeSelf(Landroid/content/Context;Lcom/kingsoft/mail/providers/Account;Ljava/util/Set;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/kingsoft/mail/providers/Account;
    .param p3, "mailboxKey"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingsoft/mail/providers/Account;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "toAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 130
    invoke-static {p0, p3, p4}, Lcom/kingsoft/email/provider/EmailProvider;->getFolder(Landroid/content/Context;J)Lcom/kingsoft/mail/providers/Folder;

    move-result-object v0

    .line 131
    .local v0, "folder":Lcom/kingsoft/mail/providers/Folder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingsoft/mail/providers/Folder;->isSent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    .end local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_0
    return-void

    .line 135
    .restart local v0    # "folder":Lcom/kingsoft/mail/providers/Folder;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "toAddress":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/kingsoft/mail/utils/ComposeMailUtils;->recipientMatchesThisAccount(Lcom/kingsoft/mail/providers/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static tokenizeAddressList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v2, "tokenized":Ljava/util/List;, "Ljava/util/List<[Landroid/text/util/Rfc822Token;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
