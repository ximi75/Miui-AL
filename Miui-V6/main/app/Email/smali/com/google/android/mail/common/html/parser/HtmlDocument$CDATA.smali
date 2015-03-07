.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;
.super Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CDATA"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$1;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-super {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$UnescapedText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public toHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    return-void
.end method

.method public toXHTML(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 499
    const-string/jumbo v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    return-void
.end method
