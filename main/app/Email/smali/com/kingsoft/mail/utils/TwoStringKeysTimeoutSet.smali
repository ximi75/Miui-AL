.class public Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;
.super Ljava/lang/Object;
.source "TwoStringKeysTimeoutSet.java"


# instance fields
.field private key1Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private timeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    .line 13
    iput-wide p1, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->timeout:J

    .line 14
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v1, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 22
    .local v0, "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .restart local v0    # "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 70
    iget-object v4, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 71
    .local v2, "key1s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    .local v1, "key1":Ljava/lang/String;
    iget-object v4, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 73
    .local v3, "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 77
    .end local v1    # "key1":Ljava/lang/String;
    .end local v3    # "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v3, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 81
    .local v0, "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 85
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 86
    .local v1, "time":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->timeout:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 94
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 32
    .local v0, "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public validate()V
    .locals 4

    .prologue
    .line 38
    iget-object v3, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 39
    .local v2, "key1s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "key1":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->validate(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v1    # "key1":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public validate(Ljava/lang/String;)V
    .locals 11
    .param p1, "key1"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v7, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 46
    .local v3, "key2Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v3, :cond_3

    .line 47
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 49
    .local v4, "key2s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 50
    .local v6, "remove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "key2":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 52
    .local v5, "l":Ljava/lang/Long;
    if-eqz v5, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-wide v9, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->timeout:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 54
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v2    # "key2":Ljava/lang/String;
    .end local v5    # "l":Ljava/lang/Long;
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    iget-object v7, p0, Lcom/kingsoft/mail/utils/TwoStringKeysTimeoutSet;->key1Map:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "key2s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "remove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method
