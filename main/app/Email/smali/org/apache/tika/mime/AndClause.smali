.class Lorg/apache/tika/mime/AndClause;
.super Ljava/lang/Object;
.source "AndClause.java"

# interfaces
.implements Lorg/apache/tika/mime/Clause;


# instance fields
.field private final clauses:[Lorg/apache/tika/mime/Clause;


# direct methods
.method varargs constructor <init>([Lorg/apache/tika/mime/Clause;)V
    .locals 0
    .param p1, "clauses"    # [Lorg/apache/tika/mime/Clause;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/apache/tika/mime/AndClause;->clauses:[Lorg/apache/tika/mime/Clause;

    .line 27
    return-void
.end method


# virtual methods
.method public eval([B)Z
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v3, p0, Lorg/apache/tika/mime/AndClause;->clauses:[Lorg/apache/tika/mime/Clause;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 35
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 30
    :cond_1
    aget-object v0, v3, v2

    .line 31
    .local v0, "clause":Lorg/apache/tika/mime/Clause;
    invoke-interface {v0, p1}, Lorg/apache/tika/mime/Clause;->eval([B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "size":I
    iget-object v3, p0, Lorg/apache/tika/mime/AndClause;->clauses:[Lorg/apache/tika/mime/Clause;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 43
    return v1

    .line 40
    :cond_0
    aget-object v0, v3, v2

    .line 41
    .local v0, "clause":Lorg/apache/tika/mime/Clause;
    invoke-interface {v0}, Lorg/apache/tika/mime/Clause;->size()I

    move-result v5

    add-int/2addr v1, v5

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "and"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tika/mime/AndClause;->clauses:[Lorg/apache/tika/mime/Clause;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
