.class public Lcom/google/android/mail/common/html/parser/HtmlDocument;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/html/parser/HtmlDocument$1;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$DebugPrinter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterChain;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$SimpleMultiplexFilter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilterAdapter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Filter;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$EscapedText;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;,
        Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    }
.end annotation


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 48
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static createCDATA(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;-><init>(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method

.method public static createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    .locals 1
    .param p0, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v0

    return-object v0
.end method

.method public static createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    .locals 2
    .param p0, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;
    .param p1, "originalHtml"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method

.method public static createEscapedText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .locals 2
    .param p0, "htmlText"    # Ljava/lang/String;
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$EscapedText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EscapedText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method

.method public static createHtmlComment(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    invoke-direct {v0, p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 1
    .param p0, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;)",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    const/4 v0, 0x0

    .line 121
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    return-object v0
.end method

.method public static createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 7
    .param p0, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;
    .param p2, "originalHtmlBeforeAttributes"    # Ljava/lang/String;
    .param p3, "originalHtmlAfterAttributes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method

.method public static createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 1
    .param p0, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;)",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    const/4 v0, 0x0

    .line 101
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    return-object v0
.end method

.method public static createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .locals 7
    .param p0, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;
    .param p2, "originalHtmlBeforeAttributes"    # Ljava/lang/String;
    .param p3, "originalHtmlAfterAttributes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method

.method public static createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .locals 1
    .param p0, "attr"    # Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
    .locals 2
    .param p0, "attr"    # Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "originalHtml"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 162
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    return-object v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createText(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v0

    return-object v0
.end method

.method public static createText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V
    .locals 3
    .param p1, "v"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    .prologue
    .line 206
    invoke-interface {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->start()V

    .line 207
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 208
    .local v1, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V

    goto :goto_0

    .line 210
    .end local v1    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-interface {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->finish()V

    .line 211
    return-void
.end method

.method public filter(Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;)Lcom/google/android/mail/common/html/parser/HtmlDocument;
    .locals 4
    .param p1, "filter"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;

    .prologue
    .line 218
    invoke-interface {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;->start()V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v1, "newNodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 221
    .local v2, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-interface {p1, v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;->filter(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;Ljava/util/List;)V

    goto :goto_0

    .line 223
    .end local v2    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$MultiplexFilter;->finish(Ljava/util/List;)V

    .line 224
    new-instance v3, Lcom/google/android/mail/common/html/parser/HtmlDocument;

    invoke-direct {v3, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    return-object v0
.end method

.method public toHTML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 61
    .local v1, "n":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->toHTML(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 63
    .end local v1    # "n":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toOriginalHTML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 83
    .local v1, "n":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->toOriginalHTML(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 85
    .end local v1    # "n":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 92
    .local v0, "strWriter":Ljava/io/StringWriter;
    new-instance v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$DebugPrinter;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$DebugPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXHTML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 70
    .local v1, "n":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;->toXHTML(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 72
    .end local v1    # "n":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
