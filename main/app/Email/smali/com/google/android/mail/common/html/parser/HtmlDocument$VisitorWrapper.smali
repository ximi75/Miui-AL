.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisitorWrapper"
.end annotation


# instance fields
.field private final wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;


# direct methods
.method protected constructor <init>(Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .param p1, "wrap"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    .prologue
    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    .line 1147
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->finish()V

    .line 1177
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->start()V

    .line 1152
    return-void
.end method

.method public visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V
    .locals 1
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V

    .line 1172
    return-void
.end method

.method public visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 1
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V

    .line 1167
    return-void
.end method

.method public visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 1
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 1162
    return-void
.end method

.method public visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 1
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Visitor;->visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V

    .line 1157
    return-void
.end method
