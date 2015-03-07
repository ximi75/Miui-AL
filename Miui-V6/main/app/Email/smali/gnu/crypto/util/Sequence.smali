.class public final Lgnu/crypto/util/Sequence;
.super Ljava/util/AbstractList;
.source "Sequence.java"


# instance fields
.field private final sequence:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "end"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lgnu/crypto/util/Sequence;-><init>(III)V

    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lgnu/crypto/util/Sequence;-><init>(III)V

    .line 87
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "span"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 106
    if-nez p3, :cond_1

    .line 107
    if-eq p1, p2, :cond_0

    .line 108
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    iput-object v2, p0, Lgnu/crypto/util/Sequence;->sequence:[Ljava/lang/Integer;

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_0
    new-array v2, v5, [Ljava/lang/Integer;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    iput-object v2, p0, Lgnu/crypto/util/Sequence;->sequence:[Ljava/lang/Integer;

    goto :goto_0

    .line 113
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 114
    .local v1, "l":Ljava/util/LinkedList;
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ne v0, p2, :cond_2

    .line 117
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    iput-object v2, p0, Lgnu/crypto/util/Sequence;->sequence:[Ljava/lang/Integer;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/2addr v0, p3

    goto :goto_1
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 126
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lgnu/crypto/util/Sequence;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/crypto/util/Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    iget-object v0, p0, Lgnu/crypto/util/Sequence;->sequence:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lgnu/crypto/util/Sequence;->sequence:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lgnu/crypto/util/Sequence;->sequence:[Ljava/lang/Integer;

    invoke-virtual {v0}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
