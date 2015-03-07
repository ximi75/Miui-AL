.class Lorg/apache/tika/mime/MimeType$RootXML;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/mime/MimeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RootXML"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4756b66c6cf94d9aL


# instance fields
.field private localName:Ljava/lang/String;

.field private namespaceURI:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tika/mime/MimeType;

.field private type:Lorg/apache/tika/mime/MimeType;


# direct methods
.method constructor <init>(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "type"    # Lorg/apache/tika/mime/MimeType;
    .param p3, "namespaceURI"    # Ljava/lang/String;
    .param p4, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object p1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->this$0:Lorg/apache/tika/mime/MimeType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v0, p0, Lorg/apache/tika/mime/MimeType$RootXML;->type:Lorg/apache/tika/mime/MimeType;

    .line 217
    iput-object v0, p0, Lorg/apache/tika/mime/MimeType$RootXML;->namespaceURI:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lorg/apache/tika/mime/MimeType$RootXML;->localName:Ljava/lang/String;

    .line 222
    invoke-direct {p0, p3}, Lorg/apache/tika/mime/MimeType$RootXML;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lorg/apache/tika/mime/MimeType$RootXML;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 224
    const-string/jumbo v1, "Both namespaceURI and localName cannot be empty"

    .line 223
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iput-object p2, p0, Lorg/apache/tika/mime/MimeType$RootXML;->type:Lorg/apache/tika/mime/MimeType;

    .line 227
    iput-object p3, p0, Lorg/apache/tika/mime/MimeType$RootXML;->namespaceURI:Ljava/lang/String;

    .line 228
    iput-object p4, p0, Lorg/apache/tika/mime/MimeType$RootXML;->localName:Ljava/lang/String;

    .line 229
    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType$RootXML;->localName:Ljava/lang/String;

    return-object v0
.end method

.method getNameSpaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType$RootXML;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method getType()Lorg/apache/tika/mime/MimeType;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType$RootXML;->type:Lorg/apache/tika/mime/MimeType;

    return-object v0
.end method

.method matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->namespaceURI:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tika/mime/MimeType$RootXML;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tika/mime/MimeType$RootXML;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :cond_2
    iget-object v1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->localName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/tika/mime/MimeType$RootXML;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 248
    iget-object v1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->localName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 255
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/tika/mime/MimeType$RootXML;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->type:Lorg/apache/tika/mime/MimeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tika/mime/MimeType$RootXML;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
