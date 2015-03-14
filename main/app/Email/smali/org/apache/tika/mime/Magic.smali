.class Lorg/apache/tika/mime/Magic;
.super Ljava/lang/Object;
.source "Magic.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/tika/mime/Clause;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/tika/mime/Clause;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/tika/mime/Magic;",
        ">;"
    }
.end annotation


# instance fields
.field private clause:Lorg/apache/tika/mime/Clause;

.field private priority:I

.field private final type:Lorg/apache/tika/mime/MimeType;


# direct methods
.method constructor <init>(Lorg/apache/tika/mime/MimeType;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/tika/mime/MimeType;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x32

    iput v0, p0, Lorg/apache/tika/mime/Magic;->priority:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tika/mime/Magic;->clause:Lorg/apache/tika/mime/Clause;

    .line 34
    iput-object p1, p0, Lorg/apache/tika/mime/Magic;->type:Lorg/apache/tika/mime/MimeType;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/apache/tika/mime/Magic;

    invoke-virtual {p0, p1}, Lorg/apache/tika/mime/Magic;->compareTo(Lorg/apache/tika/mime/Magic;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tika/mime/Magic;)I
    .locals 3
    .param p1, "o"    # Lorg/apache/tika/mime/Magic;

    .prologue
    .line 68
    iget v1, p1, Lorg/apache/tika/mime/Magic;->priority:I

    iget v2, p0, Lorg/apache/tika/mime/Magic;->priority:I

    sub-int v0, v1, v2

    .line 69
    .local v0, "diff":I
    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lorg/apache/tika/mime/Magic;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/tika/mime/Magic;->size()I

    move-result v2

    sub-int v0, v1, v2

    .line 72
    :cond_0
    if-nez v0, :cond_1

    .line 73
    iget-object v1, p1, Lorg/apache/tika/mime/Magic;->type:Lorg/apache/tika/mime/MimeType;

    iget-object v2, p0, Lorg/apache/tika/mime/Magic;->type:Lorg/apache/tika/mime/MimeType;

    invoke-virtual {v1, v2}, Lorg/apache/tika/mime/MimeType;->compareTo(Lorg/apache/tika/mime/MimeType;)I

    move-result v0

    .line 75
    :cond_1
    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p1}, Lorg/apache/tika/mime/Magic;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tika/mime/Magic;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 78
    :cond_2
    return v0
.end method

.method public eval([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/tika/mime/Magic;->clause:Lorg/apache/tika/mime/Clause;

    invoke-interface {v0, p1}, Lorg/apache/tika/mime/Clause;->eval([B)Z

    move-result v0

    return v0
.end method

.method getPriority()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/tika/mime/Magic;->priority:I

    return v0
.end method

.method getType()Lorg/apache/tika/mime/MimeType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/tika/mime/Magic;->type:Lorg/apache/tika/mime/MimeType;

    return-object v0
.end method

.method setClause(Lorg/apache/tika/mime/Clause;)V
    .locals 0
    .param p1, "clause"    # Lorg/apache/tika/mime/Clause;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/apache/tika/mime/Magic;->clause:Lorg/apache/tika/mime/Clause;

    .line 51
    return-void
.end method

.method setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/apache/tika/mime/Magic;->priority:I

    .line 43
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/tika/mime/Magic;->clause:Lorg/apache/tika/mime/Clause;

    invoke-interface {v0}, Lorg/apache/tika/mime/Clause;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/tika/mime/Magic;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tika/mime/Magic;->clause:Lorg/apache/tika/mime/Clause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
