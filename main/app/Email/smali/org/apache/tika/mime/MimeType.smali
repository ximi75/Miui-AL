.class public final Lorg/apache/tika/mime/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/mime/MimeType$RootXML;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/tika/mime/MimeType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3c7a1fb23f487571L


# instance fields
.field private description:Ljava/lang/String;

.field private final magics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/tika/mime/Magic;",
            ">;"
        }
    .end annotation
.end field

.field private minLength:I

.field private final rootXML:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/tika/mime/MimeType$RootXML;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/apache/tika/mime/MediaType;


# direct methods
.method constructor <init>(Lorg/apache/tika/mime/MediaType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/apache/tika/mime/MimeType;->description:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeType;->magics:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MimeType;->rootXML:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tika/mime/MimeType;->minLength:I

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Media type name is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lorg/apache/tika/mime/MimeType;->type:Lorg/apache/tika/mime/MediaType;

    .line 103
    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Name is missing"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_0
    const/4 v2, 0x0

    .line 53
    .local v2, "slash":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 67
    .end local v2    # "slash":Z
    :goto_1
    return v2

    .line 54
    .restart local v2    # "slash":Z
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 55
    .local v0, "ch":C
    const/16 v4, 0x20

    if-le v0, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_2

    const/16 v4, 0x28

    if-eq v0, v4, :cond_2

    const/16 v4, 0x29

    if-eq v0, v4, :cond_2

    .line 56
    const/16 v4, 0x3c

    if-eq v0, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_2

    const/16 v4, 0x40

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_2

    .line 57
    const/16 v4, 0x3b

    if-eq v0, v4, :cond_2

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_2

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_2

    const/16 v4, 0x22

    if-eq v0, v4, :cond_2

    .line 58
    const/16 v4, 0x5b

    if-eq v0, v4, :cond_2

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_2

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_2

    const/16 v4, 0x3d

    if-ne v0, v4, :cond_3

    :cond_2
    move v2, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_6

    .line 61
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_5

    :cond_4
    move v2, v3

    .line 62
    goto :goto_1

    .line 64
    :cond_5
    const/4 v2, 0x1

    .line 53
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method addMagic(Lorg/apache/tika/mime/Magic;)V
    .locals 1
    .param p1, "magic"    # Lorg/apache/tika/mime/Magic;

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->magics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addRootXML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->rootXML:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/tika/mime/MimeType$RootXML;

    invoke-direct {v1, p0, p0, p1, p2}, Lorg/apache/tika/mime/MimeType$RootXML;-><init>(Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MimeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/apache/tika/mime/MimeType;

    invoke-virtual {p0, p1}, Lorg/apache/tika/mime/MimeType;->compareTo(Lorg/apache/tika/mime/MimeType;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tika/mime/MimeType;)I
    .locals 2
    .param p1, "mime"    # Lorg/apache/tika/mime/MimeType;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->type:Lorg/apache/tika/mime/MediaType;

    iget-object v1, p1, Lorg/apache/tika/mime/MimeType;->type:Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v0, v1}, Lorg/apache/tika/mime/MediaType;->compareTo(Lorg/apache/tika/mime/MediaType;)I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->description:Ljava/lang/String;

    return-object v0
.end method

.method getMagics()[Lorg/apache/tika/mime/Magic;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->magics:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tika/mime/MimeType;->magics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/tika/mime/Magic;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tika/mime/Magic;

    return-object v0
.end method

.method getMinLength()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/tika/mime/MimeType;->minLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->type:Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v0}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRootXMLs()[Lorg/apache/tika/mime/MimeType$RootXML;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->rootXML:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tika/mime/MimeType;->rootXML:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/tika/mime/MimeType$RootXML;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tika/mime/MimeType$RootXML;

    return-object v0
.end method

.method public getType()Lorg/apache/tika/mime/MediaType;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->type:Lorg/apache/tika/mime/MediaType;

    return-object v0
.end method

.method public hasMagic()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->magics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasRootXML()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->rootXML:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/tika/mime/MimeType;->matchesMagic([B)Z

    move-result v0

    return v0
.end method

.method public matchesMagic([B)Z
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/tika/mime/MimeType;->magics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 197
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 192
    :cond_0
    iget-object v2, p0, Lorg/apache/tika/mime/MimeType;->magics:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tika/mime/Magic;

    .line 193
    .local v1, "magic":Lorg/apache/tika/mime/Magic;
    invoke-virtual {v1, p1}, Lorg/apache/tika/mime/Magic;->eval([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const/4 v2, 0x1

    goto :goto_1

    .line 191
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method matchesXML(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v1, p0, Lorg/apache/tika/mime/MimeType;->rootXML:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 155
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/MimeType$RootXML;

    .line 156
    .local v0, "xml":Lorg/apache/tika/mime/MimeType$RootXML;
    invoke-virtual {v0, p1, p2}, Lorg/apache/tika/mime/MimeType$RootXML;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Description is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iput-object p1, p0, Lorg/apache/tika/mime/MimeType;->description:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/tika/mime/MimeType;->type:Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v0}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
