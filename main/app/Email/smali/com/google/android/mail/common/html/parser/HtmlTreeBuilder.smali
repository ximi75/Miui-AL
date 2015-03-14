.class public Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;
.super Ljava/lang/Object;
.source "HtmlTreeBuilder.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private built:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private final tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

.field private tree:Lcom/google/android/mail/common/html/parser/HtmlTree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-direct {v0, p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;-><init>(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->built:Z

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;Lcom/google/android/mail/common/html/parser/HTML$Element;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;
    .param p1, "x1"    # Lcom/google/android/mail/common/html/parser/HTML$Element;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->push(Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;)Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    return-object v0
.end method

.method private addMissingEndTag()V
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->pop()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 152
    .local v0, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    invoke-static {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v1

    .line 153
    .local v1, "endTag":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->seeEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 154
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 155
    return-void
.end method

.method private findStartTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)I
    .locals 3
    .param p1, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;

    .prologue
    .line 136
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 137
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 138
    .local v0, "e":Lcom/google/android/mail/common/html/parser/HTML$Element;
    if-ne v0, p1, :cond_0

    .line 142
    .end local v0    # "e":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 136
    .restart local v0    # "e":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 142
    .end local v0    # "e":Lcom/google/android/mail/common/html/parser/HTML$Element;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 304
    new-instance v2, Ljava/lang/String;

    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 305
    .local v2, "html":Ljava/lang/String;
    new-instance v4, Lcom/google/android/mail/common/html/parser/HtmlParser;

    invoke-direct {v4}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>()V

    .line 306
    .local v4, "parser":Lcom/google/android/mail/common/html/parser/HtmlParser;
    invoke-virtual {v4, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->parse(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument;

    move-result-object v1

    .line 308
    .local v1, "doc":Lcom/google/android/mail/common/html/parser/HtmlDocument;
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;-><init>()V

    .line 309
    .local v0, "builder":Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;
    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V

    .line 310
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->getTree()Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mail/common/html/parser/HtmlTree;->getHtml()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "outputHtml":Ljava/lang/String;
    return-void
.end method

.method private pop()Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    return-object v0
.end method

.method private push(Lcom/google/android/mail/common/html/parser/HTML$Element;)V
    .locals 1
    .param p1, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->addMissingEndTag()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->finish()V

    .line 65
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->finish()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->built:Z

    .line 68
    return-void
.end method

.method public getTree()Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->built:Z

    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 47
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    return-object v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    .line 54
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->start()V

    .line 55
    return-void
.end method

.method public visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V
    .locals 0
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    .prologue
    .line 132
    return-void
.end method

.method public visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 5
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 103
    .local v0, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->findStartTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)I

    move-result v1

    .line 104
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->addMissingEndTag()V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->pop()Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 112
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-virtual {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->seeEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 113
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 119
    :goto_1
    return-void

    .line 117
    :cond_1
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring end tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 6
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-virtual {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->seeTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 75
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 76
    .local v0, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addSingularTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 95
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->isSelfTerminating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getOriginalHtmlBeforeAttributes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getOriginalHtmlAfterAttributes()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addStartTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 88
    invoke-static {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v1

    .line 89
    .local v1, "end":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->seeEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 90
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    goto :goto_0

    .line 92
    .end local v1    # "end":Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;
    :cond_1
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addStartTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 93
    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->push(Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    goto :goto_0
.end method

.method public visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 1
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tableFixer:Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder$TableFixer;->seeText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTreeBuilder;->tree:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->addText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V

    .line 126
    return-void
.end method
