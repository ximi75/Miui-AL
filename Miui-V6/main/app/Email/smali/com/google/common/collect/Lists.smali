.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Lists$RandomAccessListWrapper;,
        Lcom/google/common/collect/Lists$AbstractListWrapper;,
        Lcom/google/common/collect/Lists$RandomAccessReverseList;,
        Lcom/google/common/collect/Lists$ReverseList;,
        Lcom/google/common/collect/Lists$CharSequenceAsList;,
        Lcom/google/common/collect/Lists$StringAsImmutableList;,
        Lcom/google/common/collect/Lists$RandomAccessPartition;,
        Lcom/google/common/collect/Lists$Partition;,
        Lcom/google/common/collect/Lists$TransformingRandomAccessList;,
        Lcom/google/common/collect/Lists$TransformingSequentialList;,
        Lcom/google/common/collect/Lists$TwoPlusArrayList;,
        Lcom/google/common/collect/Lists$OnePlusArrayList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Ljava/util/List;ILjava/lang/Iterable;)Z
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;I",
            "Ljava/lang/Iterable",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    const/4 v0, 0x0

    .line 916
    .local v0, "changed":Z
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 917
    .local v3, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 918
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {v3, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 919
    const/4 v0, 0x1

    .line 920
    goto :goto_0

    .line 921
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0
.end method

.method public static asList(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "first":Ljava/lang/Object;, "TE;"
    .local p1, "second":Ljava/lang/Object;, "TE;"
    .local p2, "rest":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Lcom/google/common/collect/Lists$TwoPlusArrayList;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Lists$TwoPlusArrayList;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "first":Ljava/lang/Object;, "TE;"
    .local p1, "rest":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Lcom/google/common/collect/Lists$OnePlusArrayList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$OnePlusArrayList;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static cartesianProduct(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+TB;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "lists":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+TB;>;>;"
    invoke-static {p0}, Lcom/google/common/collect/CartesianList;->create(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static varargs cartesianProduct([Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/List",
            "<+TB;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "lists":[Ljava/util/List;, "[Ljava/util/List<+TB;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->cartesianProduct(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static cast(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    check-cast p0, Ljava/util/List;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method public static charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    new-instance v1, Lcom/google/common/collect/Lists$StringAsImmutableList;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$StringAsImmutableList;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static charactersOf(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    new-instance v1, Lcom/google/common/collect/Lists$CharSequenceAsList;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$CharSequenceAsList;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static computeArrayListCapacity(I)I
    .locals 4
    .param p0, "arraySize"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 108
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 111
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 897
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v1

    .line 900
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-nez v3, :cond_2

    move v1, v2

    .line 901
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 904
    check-cast v0, Ljava/util/List;

    .line 906
    .local v0, "o":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method static hashCodeImpl(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x1

    .line 884
    .local v0, "hashCode":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 885
    .local v2, "o":Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int v0, v4, v3

    .line 887
    xor-int/lit8 v3, v0, -0x1

    xor-int/lit8 v0, v3, -0x1

    .line 889
    goto :goto_0

    .line 885
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 890
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method static indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 929
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    .line 934
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 942
    .local v0, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    .line 947
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method static listIteratorImpl(Ljava/util/List;I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v0, Lcom/google/common/collect/Lists$AbstractListWrapper;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$AbstractListWrapper;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Lists$AbstractListWrapper;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 147
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    array-length v2, p0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->computeArrayListCapacity(I)I

    move-result v0

    .line 102
    .local v0, "capacity":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 104
    return-object v1
.end method

.method public static newArrayListWithCapacity(I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "initialArraySize"    # I
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 173
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newArrayListWithExpectedSize(I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "estimatedSize"    # I
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/Lists;->computeArrayListCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArrayList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArrayList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 256
    .local v0, "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 253
    .end local v0    # "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static newLinkedList()Ljava/util/LinkedList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static newLinkedList(Ljava/lang/Iterable;)Ljava/util/LinkedList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 223
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 224
    return-object v0
.end method

.method public static partition(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 607
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/Lists$RandomAccessPartition;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$RandomAccessPartition;-><init>(Ljava/util/List;I)V

    :goto_1
    return-object v0

    .line 606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 607
    :cond_1
    new-instance v0, Lcom/google/common/collect/Lists$Partition;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$Partition;-><init>(Ljava/util/List;I)V

    goto :goto_1
.end method

.method public static reverse(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    instance-of v0, p0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 741
    check-cast p0, Lcom/google/common/collect/ImmutableList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 747
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    return-object v0

    .line 742
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/Lists$ReverseList;

    if-eqz v0, :cond_1

    .line 743
    check-cast p0, Lcom/google/common/collect/Lists$ReverseList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->getForwardList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 744
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_2

    .line 745
    new-instance v0, Lcom/google/common/collect/Lists$RandomAccessReverseList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$RandomAccessReverseList;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 747
    :cond_2
    new-instance v0, Lcom/google/common/collect/Lists$ReverseList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$ReverseList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method static subListImpl(Ljava/util/List;II)Ljava/util/List;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    .line 964
    new-instance v0, Lcom/google/common/collect/Lists$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$1;-><init>(Ljava/util/List;)V

    .line 980
    .local v0, "wrapper":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 972
    .end local v0    # "wrapper":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/Lists$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$2;-><init>(Ljava/util/List;)V

    .restart local v0    # "wrapper":Ljava/util/List;, "Ljava/util/List<TE;>;"
    goto :goto_0
.end method

.method public static transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "fromList":Ljava/util/List;, "Ljava/util/List<TF;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TF;+TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Lists$TransformingSequentialList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingSequentialList;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    goto :goto_0
.end method
