.class public abstract Lcom/google/android/mail/common/html/parser/HtmlDocument$SimpleMultiplexFilter;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleMultiplexFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;Ljava/util/List;)V
    .locals 3
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
    .line 1009
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    if-nez p1, :cond_0

    .line 1025
    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :goto_0
    return-void

    .line 1013
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v0, :cond_1

    .line 1014
    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$SimpleMultiplexFilter;->filterTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;Ljava/util/List;)V

    goto :goto_0

    .line 1015
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v0, :cond_2

    .line 1016
    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$SimpleMultiplexFilter;->filterText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;Ljava/util/List;)V

    goto :goto_0

    .line 1017
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_2
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    if-eqz v0, :cond_3

    .line 1018
    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$SimpleMultiplexFilter;->filterEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;Ljava/util/List;)V

    goto :goto_0

    .line 1019
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_3
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    if-eqz v0, :cond_4

    .line 1020
    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    .end local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$SimpleMultiplexFilter;->filterComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;Ljava/util/List;)V

    goto :goto_0

    .line 1022
    .restart local p1    # "originalNode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public filterComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;Ljava/util/List;)V
    .locals 0
    .param p1, "originalComment"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    return-void
.end method

.method public abstract filterEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract filterTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract filterText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation
.end method
