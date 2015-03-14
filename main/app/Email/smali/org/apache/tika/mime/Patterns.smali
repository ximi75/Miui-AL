.class Lorg/apache/tika/mime/Patterns;
.super Ljava/lang/Object;
.source "Patterns.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/mime/Patterns$LengthComparator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x502fa258594461a4L


# instance fields
.field private final extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/mime/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private final globs:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/mime/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private maxExtensionLength:I

.field private minExtensionLength:I

.field private final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/mime/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field private final registry:Lorg/apache/tika/mime/MediaTypeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/tika/mime/MediaTypeRegistry;)V
    .locals 3
    .param p1, "registry"    # Lorg/apache/tika/mime/MediaTypeRegistry;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/Patterns;->names:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/mime/Patterns;->extensions:Ljava/util/Map;

    .line 49
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/tika/mime/Patterns;->minExtensionLength:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tika/mime/Patterns;->maxExtensionLength:I

    .line 57
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/apache/tika/mime/Patterns$LengthComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/tika/mime/Patterns$LengthComparator;-><init>(Lorg/apache/tika/mime/Patterns;Lorg/apache/tika/mime/Patterns$LengthComparator;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/tika/mime/Patterns;->globs:Ljava/util/SortedMap;

    .line 78
    iput-object p1, p0, Lorg/apache/tika/mime/Patterns;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 79
    return-void
.end method

.method private addExtension(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V
    .locals 5
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/apache/tika/mime/MimeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v2, p0, Lorg/apache/tika/mime/Patterns;->extensions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tika/mime/MimeType;

    .line 126
    .local v1, "previous":Lorg/apache/tika/mime/MimeType;
    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Lorg/apache/tika/mime/Patterns;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v1}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    :cond_0
    iget-object v2, p0, Lorg/apache/tika/mime/Patterns;->extensions:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 130
    .local v0, "length":I
    iget v2, p0, Lorg/apache/tika/mime/Patterns;->minExtensionLength:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/apache/tika/mime/Patterns;->minExtensionLength:I

    .line 131
    iget v2, p0, Lorg/apache/tika/mime/Patterns;->maxExtensionLength:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/apache/tika/mime/Patterns;->maxExtensionLength:I

    .line 139
    .end local v0    # "length":I
    :cond_1
    return-void

    .line 132
    :cond_2
    if-eq v1, p2, :cond_1

    .line 133
    iget-object v2, p0, Lorg/apache/tika/mime/Patterns;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    new-instance v2, Lorg/apache/tika/mime/MimeTypeException;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Conflicting extension pattern: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-direct {v2, v3}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private addGlob(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V
    .locals 4
    .param p1, "glob"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/apache/tika/mime/MimeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->globs:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/MimeType;

    .line 144
    .local v0, "previous":Lorg/apache/tika/mime/MimeType;
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v0}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->globs:Ljava/util/SortedMap;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    return-void

    .line 147
    :cond_2
    if-eq v0, p2, :cond_1

    .line 148
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    new-instance v1, Lorg/apache/tika/mime/MimeTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Conflicting glob pattern: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private addName(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/apache/tika/mime/MimeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->names:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/mime/MimeType;

    .line 112
    .local v0, "previous":Lorg/apache/tika/mime/MimeType;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {v0}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->names:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    return-void

    .line 115
    :cond_2
    if-eq v0, p2, :cond_1

    .line 116
    iget-object v1, p0, Lorg/apache/tika/mime/Patterns;->registry:Lorg/apache/tika/mime/MediaTypeRegistry;

    invoke-virtual {p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    new-instance v1, Lorg/apache/tika/mime/MimeTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Conflicting name pattern: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tika/mime/MimeTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private compile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "glob"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v2, "pattern":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\\A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 214
    const-string/jumbo v3, "\\z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 202
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 203
    .local v0, "ch":C
    const/16 v3, 0x3f

    if-ne v0, v3, :cond_1

    .line 204
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    .line 206
    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    :cond_2
    const-string/jumbo v3, "\\[]^.-$+(){}|"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 208
    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/apache/tika/mime/MimeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/tika/mime/Patterns;->add(Ljava/lang/String;ZLorg/apache/tika/mime/MimeType;)V

    .line 83
    return-void
.end method

.method public add(Ljava/lang/String;ZLorg/apache/tika/mime/MimeType;)V
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "isJavaRegex"    # Z
    .param p3, "type"    # Lorg/apache/tika/mime/MimeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tika/mime/MimeTypeException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5b

    const/16 v4, 0x3f

    const/16 v3, 0x2a

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 87
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 89
    const-string/jumbo v1, "Pattern and/or mime type is missing"

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    if-eqz p2, :cond_2

    .line 95
    invoke-direct {p0, p1, p3}, Lorg/apache/tika/mime/Patterns;->addGlob(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V

    .line 108
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 99
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 100
    invoke-direct {p0, p1, p3}, Lorg/apache/tika/mime/Patterns;->addName(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V

    goto :goto_0

    .line 101
    :cond_3
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 102
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/tika/mime/Patterns;->addExtension(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V

    goto :goto_0

    .line 105
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/tika/mime/Patterns;->compile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/tika/mime/Patterns;->addGlob(Ljava/lang/String;Lorg/apache/tika/mime/MimeType;)V

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Name is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :cond_0
    iget-object v4, p0, Lorg/apache/tika/mime/Patterns;->names:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    iget-object v4, p0, Lorg/apache/tika/mime/Patterns;->names:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tika/mime/MimeType;

    .line 195
    :goto_0
    return-object v4

    .line 180
    :cond_1
    iget v4, p0, Lorg/apache/tika/mime/Patterns;->maxExtensionLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 181
    .local v2, "maxLength":I
    move v3, v2

    .local v3, "n":I
    :goto_1
    iget v4, p0, Lorg/apache/tika/mime/Patterns;->minExtensionLength:I

    if-ge v3, v4, :cond_3

    .line 189
    iget-object v4, p0, Lorg/apache/tika/mime/Patterns;->globs:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 195
    const/4 v4, 0x0

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "extension":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/tika/mime/Patterns;->extensions:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    iget-object v4, p0, Lorg/apache/tika/mime/Patterns;->extensions:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tika/mime/MimeType;

    goto :goto_0

    .line 181
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 189
    .end local v1    # "extension":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/tika/mime/MimeType;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tika/mime/MimeType;

    goto :goto_0
.end method
