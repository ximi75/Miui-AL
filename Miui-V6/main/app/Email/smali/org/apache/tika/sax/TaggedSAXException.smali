.class public Lorg/apache/tika/sax/TaggedSAXException;
.super Lorg/xml/sax/SAXException;
.source "TaggedSAXException.java"


# instance fields
.field private final tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xml/sax/SAXException;Ljava/lang/Object;)V
    .locals 1
    .param p1, "original"    # Lorg/xml/sax/SAXException;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/tika/sax/TaggedSAXException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 42
    iput-object p2, p0, Lorg/apache/tika/sax/TaggedSAXException;->tag:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/tika/sax/TaggedSAXException;->getCause()Lorg/xml/sax/SAXException;

    move-result-object v0

    return-object v0
.end method

.method public getCause()Lorg/xml/sax/SAXException;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lorg/xml/sax/SAXException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXException;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/tika/sax/TaggedSAXException;->tag:Ljava/lang/Object;

    return-object v0
.end method
