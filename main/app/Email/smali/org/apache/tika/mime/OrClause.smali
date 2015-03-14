.class Lorg/apache/tika/mime/OrClause;
.super Ljava/lang/Object;
.source "OrClause.java"

# interfaces
.implements Lorg/apache/tika/mime/Clause;


# instance fields
.field private final clauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/mime/Clause;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tika/mime/Clause;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "clauses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/tika/mime/Clause;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/apache/tika/mime/OrClause;->clauses:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public eval([B)Z
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 30
    iget-object v1, p0, Lorg/apache/tika/mime/OrClause;->clauses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 30
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/Clause;

    .line 31
    .local v0, "clause":Lorg/apache/tika/mime/Clause;
    invoke-interface {v0, p1}, Lorg/apache/tika/mime/Clause;->eval([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "size":I
    iget-object v2, p0, Lorg/apache/tika/mime/OrClause;->clauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    return v1

    .line 40
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/Clause;

    .line 41
    .local v0, "clause":Lorg/apache/tika/mime/Clause;
    invoke-interface {v0}, Lorg/apache/tika/mime/Clause;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "or"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tika/mime/OrClause;->clauses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
