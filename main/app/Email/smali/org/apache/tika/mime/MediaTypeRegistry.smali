.class public Lorg/apache/tika/mime/MediaTypeRegistry;
.super Ljava/lang/Object;
.source "MediaTypeRegistry.java"


# instance fields
.field private final inheritance:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->registry:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->inheritance:Ljava/util/Map;

    .line 29
    return-void
.end method

.method public static getDefaultRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lorg/apache/tika/config/TikaConfig;->getDefaultConfig()Lorg/apache/tika/config/TikaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tika/config/TikaConfig;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAlias(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;
    .param p2, "alias"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public addSuperType(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;
    .param p2, "supertype"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->inheritance:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public addType(Lorg/apache/tika/mime/MediaType;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->registry:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public getAliases(Lorg/apache/tika/mime/MediaType;)Ljava/util/SortedSet;
    .locals 4
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/mime/MediaType;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 76
    .local v0, "aliases":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/apache/tika/mime/MediaType;>;"
    iget-object v2, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->registry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    return-object v0

    .line 76
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v2, p1}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v2, p1}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/mime/MediaType;

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSupertype(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/mime/MediaType;
    .locals 2
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 137
    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->hasParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->getBaseType()Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->inheritance:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->inheritance:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/MediaType;

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lorg/apache/tika/mime/MediaType;->APPLICATION_XML:Lorg/apache/tika/mime/MediaType;

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    sget-object v0, Lorg/apache/tika/mime/MediaType;->APPLICATION_ZIP:Lorg/apache/tika/mime/MediaType;

    goto :goto_0

    .line 145
    :cond_3
    const-string/jumbo v0, "text"

    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    sget-object v0, Lorg/apache/tika/mime/MediaType;->TEXT_PLAIN:Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v0, p1}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    sget-object v0, Lorg/apache/tika/mime/MediaType;->TEXT_PLAIN:Lorg/apache/tika/mime/MediaType;

    goto :goto_0

    .line 148
    :cond_4
    sget-object v0, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    invoke-virtual {v0, p1}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    sget-object v0, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    goto :goto_0

    .line 151
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTypes()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->registry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z
    .locals 2
    .param p1, "a"    # Lorg/apache/tika/mime/MediaType;
    .param p2, "b"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/tika/mime/MediaTypeRegistry;->getSupertype(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    .line 119
    .local v0, "x":Lorg/apache/tika/mime/MediaType;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public normalize(Lorg/apache/tika/mime/MediaType;)Lorg/apache/tika/mime/MediaType;
    .locals 3
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 97
    iget-object v1, p0, Lorg/apache/tika/mime/MediaTypeRegistry;->registry:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->getBaseType()Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/MediaType;

    .line 98
    .local v0, "canonical":Lorg/apache/tika/mime/MediaType;
    if-nez v0, :cond_0

    .line 103
    .end local p1    # "type":Lorg/apache/tika/mime/MediaType;
    :goto_0
    return-object p1

    .line 100
    .restart local p1    # "type":Lorg/apache/tika/mime/MediaType;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->hasParameters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    new-instance v1, Lorg/apache/tika/mime/MediaType;

    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tika/mime/MediaType;-><init>(Lorg/apache/tika/mime/MediaType;Ljava/util/Map;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 103
    goto :goto_0
.end method
