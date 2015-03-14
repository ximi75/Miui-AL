.class Lorg/apache/tika/sax/LinkBuilder;
.super Ljava/lang/Object;
.source "LinkBuilder.java"


# instance fields
.field private final text:Ljava/lang/StringBuilder;

.field private title:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/apache/tika/sax/LinkBuilder;->uri:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/apache/tika/sax/LinkBuilder;->title:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/sax/LinkBuilder;->text:Ljava/lang/StringBuilder;

    .line 30
    iput-object p1, p0, Lorg/apache/tika/sax/LinkBuilder;->type:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/tika/sax/LinkBuilder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method public getLink()Lorg/apache/tika/sax/Link;
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lorg/apache/tika/sax/Link;

    iget-object v1, p0, Lorg/apache/tika/sax/LinkBuilder;->type:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tika/sax/LinkBuilder;->uri:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tika/sax/LinkBuilder;->title:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tika/sax/LinkBuilder;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/tika/sax/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lorg/apache/tika/sax/LinkBuilder;->title:Ljava/lang/String;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/apache/tika/sax/LinkBuilder;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lorg/apache/tika/sax/LinkBuilder;->uri:Ljava/lang/String;

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/apache/tika/sax/LinkBuilder;->uri:Ljava/lang/String;

    goto :goto_0
.end method
