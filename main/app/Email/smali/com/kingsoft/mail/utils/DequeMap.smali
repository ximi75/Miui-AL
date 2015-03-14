.class public Lcom/kingsoft/mail/utils/DequeMap;
.super Ljava/lang/Object;
.source "DequeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/utils/DequeMap$Visitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Deque",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/kingsoft/mail/utils/DequeMap;, "Lcom/kingsoft/mail/utils/DequeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/utils/DequeMap;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/kingsoft/mail/utils/DequeMap;, "Lcom/kingsoft/mail/utils/DequeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "item":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/kingsoft/mail/utils/DequeMap;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 44
    .local v0, "pile":Ljava/util/Deque;, "Ljava/util/Deque<TV;>;"
    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/kingsoft/mail/utils/DequeMap;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/kingsoft/mail/utils/DequeMap;, "Lcom/kingsoft/mail/utils/DequeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/kingsoft/mail/utils/DequeMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

.method public peek(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/kingsoft/mail/utils/DequeMap;, "Lcom/kingsoft/mail/utils/DequeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/kingsoft/mail/utils/DequeMap;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 79
    .local v0, "pile":Ljava/util/Deque;, "Ljava/util/Deque<TV;>;"
    if-nez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public poll(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/kingsoft/mail/utils/DequeMap;, "Lcom/kingsoft/mail/utils/DequeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/kingsoft/mail/utils/DequeMap;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 62
    .local v0, "pile":Ljava/util/Deque;, "Ljava/util/Deque<TV;>;"
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public visitAll(Lcom/kingsoft/mail/utils/DequeMap$Visitor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingsoft/mail/utils/DequeMap$Visitor",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/kingsoft/mail/utils/DequeMap;, "Lcom/kingsoft/mail/utils/DequeMap<TK;TV;>;"
    .local p1, "visitor":Lcom/kingsoft/mail/utils/DequeMap$Visitor;, "Lcom/kingsoft/mail/utils/DequeMap$Visitor<TV;>;"
    iget-object v4, p0, Lcom/kingsoft/mail/utils/DequeMap;->mMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Deque<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 100
    .local v3, "item":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v3}, Lcom/kingsoft/mail/utils/DequeMap$Visitor;->visit(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Deque<TV;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/lang/Object;, "TV;"
    :cond_1
    return-void
.end method
