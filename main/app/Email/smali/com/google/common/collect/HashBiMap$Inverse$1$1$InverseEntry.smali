.class Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$Inverse$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InverseEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field delegate:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse$1$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;, "Lcom/google/common/collect/HashBiMap$Inverse$1.1.InverseEntry;"
    .local p2, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 595
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;, "Lcom/google/common/collect/HashBiMap$Inverse$1.1.InverseEntry;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;, "Lcom/google/common/collect/HashBiMap$Inverse$1.1.InverseEntry;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;, "Lcom/google/common/collect/HashBiMap$Inverse$1.1.InverseEntry;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 609
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v2, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    .line 610
    .local v2, "oldKey":Ljava/lang/Object;, "TK;"
    # invokes: Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$300(Ljava/lang/Object;)I

    move-result v0

    .line 611
    .local v0, "keyHash":I
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne v0, v3, :cond_0

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return-object p1

    .line 614
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    # invokes: Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    invoke-static {v3, p1, v0}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    const-string/jumbo v6, "value already present: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    # invokes: Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    invoke-static {v3, v4}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 616
    new-instance v1, Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v4, v4, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    invoke-direct {v1, p1, v0, v3, v4}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 618
    .local v1, "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v3, v3, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    # invokes: Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    invoke-static {v3, v1}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 619
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v4, v4, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v4, v4, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v4, v4, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    # getter for: Lcom/google/common/collect/HashBiMap;->modCount:I
    invoke-static {v4}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v4

    iput v4, v3, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->expectedModCount:I

    move-object p1, v2

    .line 622
    goto :goto_0

    .end local v1    # "newEntry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    :cond_1
    move v3, v5

    .line 614
    goto :goto_1
.end method
