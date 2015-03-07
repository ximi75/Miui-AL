.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiplexFilterAdapter"
.end annotation


# instance fields
.field private final filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;


# direct methods
.method public constructor <init>(Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    .prologue
    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    .line 960
    return-void
.end method


# virtual methods
.method public filter(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;Ljava/util/List;)V
    .locals 4
    .param p1, "originalNode"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    if-nez p1, :cond_1

    .line 989
    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    :goto_0
    return-void

    .line 974
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_1
    instance-of v1, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v1, :cond_2

    .line 975
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-interface {v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;->visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    .line 986
    .local v0, "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :goto_1
    if-eqz v0, :cond_0

    .line 987
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 976
    .end local v0    # "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_2
    instance-of v1, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v1, :cond_3

    .line 977
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-interface {v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;->visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v0

    .restart local v0    # "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    goto :goto_1

    .line 978
    .end local v0    # "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_3
    instance-of v1, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v1, :cond_4

    .line 979
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-interface {v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;->visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v0

    .restart local v0    # "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    goto :goto_1

    .line 980
    .end local v0    # "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_4
    instance-of v1, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    if-eqz v1, :cond_5

    .line 981
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-interface {v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;->visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    move-result-object v0

    .restart local v0    # "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    goto :goto_1

    .line 983
    .end local v0    # "resultNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown node type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public finish(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;->finish()V

    .line 994
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;->start()V

    .line 965
    return-void
.end method
