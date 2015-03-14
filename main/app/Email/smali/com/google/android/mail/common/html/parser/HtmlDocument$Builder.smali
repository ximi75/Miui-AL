.class public Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;
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
    name = "Builder"
.end annotation


# instance fields
.field private doc:Lcom/google/android/mail/common/html/parser/HtmlDocument;

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

.field private final preserveComments:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;-><init>(Z)V

    .line 1193
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "preserveComments"    # Z

    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    .line 1199
    iput-boolean p1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->preserveComments:Z

    .line 1200
    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V
    .locals 1
    .param p1, "node"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1228
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlDocument;

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->doc:Lcom/google/android/mail/common/html/parser/HtmlDocument;

    .line 1229
    return-void
.end method

.method public getDocument()Lcom/google/android/mail/common/html/parser/HtmlDocument;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->doc:Lcom/google/android/mail/common/html/parser/HtmlDocument;

    return-object v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 1207
    return-void
.end method

.method public visitComment(Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;)V
    .locals 1
    .param p1, "n"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->preserveComments:Z

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1221
    :cond_0
    return-void
.end method

.method public visitEndTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;)V
    .locals 0
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1225
    return-void
.end method

.method public visitTag(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 0
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .prologue
    .line 1214
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1215
    return-void
.end method

.method public visitText(Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;)V
    .locals 0
    .param p1, "t"    # Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .prologue
    .line 1210
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;)V

    .line 1211
    return-void
.end method
