.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;
.super Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comment"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    .line 284
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    .prologue
    .line 288
    invoke-interface {p1, p0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V

    .line 289
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public toHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    return-void
.end method

.method public toOriginalHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    return-void
.end method

.method public toXHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    return-void
.end method
