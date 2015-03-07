.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagAttribute"
.end annotation


# instance fields
.field private final attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

.field private originalHtml:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attribute"    # Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "originalHtml"    # Ljava/lang/String;

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 785
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 786
    iput-object p2, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    .line 787
    iput-object p3, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    .line 788
    return-void

    .line 784
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$1;

    .prologue
    .line 770
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;-><init>(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAttribute()Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    .line 810
    return-void
.end method

.method public toHTML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->toHTML(Ljava/lang/StringBuilder;)V

    .line 841
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toHTML(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 828
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 831
    const-string/jumbo v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_0
    return-void
.end method

.method public toOriginalHTML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->toOriginalHTML(Ljava/lang/StringBuilder;)V

    .line 887
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toOriginalHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->toHTML(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXHTML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->toXHTML(Ljava/lang/StringBuilder;)V

    .line 866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXHTML(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 849
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :goto_0
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
