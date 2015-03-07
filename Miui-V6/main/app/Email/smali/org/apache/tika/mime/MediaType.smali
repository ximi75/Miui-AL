.class public final Lorg/apache/tika/mime/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/tika/mime/MediaType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final APPLICATION_XML:Lorg/apache/tika/mime/MediaType;

.field public static final APPLICATION_ZIP:Lorg/apache/tika/mime/MediaType;

.field private static final CONTENT_TYPE_CHARSET_FIRST_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final MIME_TYPE_PATTERN_STRING:Ljava/lang/String; = "([^\\c\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]+)\\s*/\\s*([^\\c\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]+)"

.field private static final NO_PARAMETERS:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

.field private static final SPECIAL:Ljava/util/regex/Pattern;

.field private static final SPECIAL_OR_WHITESPACE:Ljava/util/regex/Pattern;

.field public static final TEXT_PLAIN:Lorg/apache/tika/mime/MediaType;

.field private static final VALID_MIMETYPE_CHARS:Ljava/lang/String; = "[^\\c\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]"

.field private static final serialVersionUID:J = -0x352a72b555f8af68L


# instance fields
.field private final parameters:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    .line 39
    sput-object v0, Lorg/apache/tika/mime/MediaType;->NO_PARAMETERS:Ljava/util/SortedMap;

    .line 43
    const-string/jumbo v0, "[\\(\\)<>@,;:\\\\\"/\\[\\]\\?=]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 42
    sput-object v0, Lorg/apache/tika/mime/MediaType;->SPECIAL:Ljava/util/regex/Pattern;

    .line 46
    const-string/jumbo v0, "[\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 45
    sput-object v0, Lorg/apache/tika/mime/MediaType;->SPECIAL_OR_WHITESPACE:Ljava/util/regex/Pattern;

    .line 54
    const-string/jumbo v0, "(?is)\\s*([^\\c\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]+)\\s*/\\s*([^\\c\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]+)\\s*($|;.*)"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/mime/MediaType;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    const-string/jumbo v0, "(?i)\\s*(charset\\s*=\\s*[^\\c;\\s]+)\\s*;\\s*([^\\c\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]+)\\s*/\\s*([^\\c\\(\\)<>@,;:\\\\\"/\\[\\]\\?=\\s]+)"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/mime/MediaType;->CONTENT_TYPE_CHARSET_FIRST_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    const-string/jumbo v0, "octet-stream"

    invoke-static {v0}, Lorg/apache/tika/mime/MediaType;->application(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    .line 60
    const-string/jumbo v0, "plain"

    invoke-static {v0}, Lorg/apache/tika/mime/MediaType;->text(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/mime/MediaType;->TEXT_PLAIN:Lorg/apache/tika/mime/MediaType;

    .line 62
    const-string/jumbo v0, "xml"

    invoke-static {v0}, Lorg/apache/tika/mime/MediaType;->application(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/mime/MediaType;->APPLICATION_XML:Lorg/apache/tika/mime/MediaType;

    .line 64
    const-string/jumbo v0, "zip"

    invoke-static {v0}, Lorg/apache/tika/mime/MediaType;->application(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/mime/MediaType;->APPLICATION_ZIP:Lorg/apache/tika/mime/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lorg/apache/tika/mime/MediaType;->NO_PARAMETERS:Ljava/util/SortedMap;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    .line 148
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    sget-object v2, Lorg/apache/tika/mime/MediaType;->NO_PARAMETERS:Ljava/util/SortedMap;

    iput-object v2, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 152
    .local v1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    invoke-interface {v1, v4, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/apache/tika/mime/MediaType;Ljava/util/Map;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/tika/mime/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tika/mime/MediaType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p1, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    invoke-static {v2, p2}, Lorg/apache/tika/mime/MediaType;->union(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    return-void
.end method

.method public static application(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lorg/apache/tika/mime/MediaType;

    const-string/jumbo v1, "application"

    invoke-direct {v0, v1, p0}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static audio(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lorg/apache/tika/mime/MediaType;

    const-string/jumbo v1, "audio"

    invoke-direct {v0, v1, p0}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static image(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lorg/apache/tika/mime/MediaType;

    const-string/jumbo v1, "image"

    invoke-direct {v0, v1, p0}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;
    .locals 15
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 96
    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v8

    .line 104
    :cond_1
    sget-object v10, Lorg/apache/tika/mime/MediaType;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 105
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 106
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "subtype":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "params":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_2
    if-lt v8, v11, :cond_3

    .line 132
    new-instance v8, Lorg/apache/tika/mime/MediaType;

    invoke-direct {v8, v7, v6, v4}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 110
    .end local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "params":Ljava/lang/String;
    .end local v6    # "subtype":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    sget-object v10, Lorg/apache/tika/mime/MediaType;->CONTENT_TYPE_CHARSET_FIRST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    .restart local v5    # "params":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 114
    .restart local v7    # "type":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 115
    .restart local v6    # "subtype":Ljava/lang/String;
    goto :goto_1

    .line 121
    .restart local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    aget-object v3, v10, v8

    .line 122
    .local v3, "paramPiece":Ljava/lang/String;
    const-string/jumbo v12, "="

    invoke-virtual {v3, v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "keyValue":[Ljava/lang/String;
    aget-object v12, v1, v9

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 125
    array-length v12, v1

    if-le v12, v13, :cond_5

    .line 126
    aget-object v12, v1, v13

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 128
    :cond_5
    const-string/jumbo v12, ""

    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static text(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lorg/apache/tika/mime/MediaType;

    const-string/jumbo v1, "text"

    invoke-direct {v0, v1, p0}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static union(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    .end local p1    # "b":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 168
    .restart local p1    # "b":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, p0

    .line 169
    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v0, "union":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 173
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p1, v0

    .line 174
    goto :goto_0
.end method

.method public static video(Ljava/lang/String;)Lorg/apache/tika/mime/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lorg/apache/tika/mime/MediaType;

    const-string/jumbo v1, "video"

    invoke-direct {v0, v1, p0}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/apache/tika/mime/MediaType;

    invoke-virtual {p0, p1}, Lorg/apache/tika/mime/MediaType;->compareTo(Lorg/apache/tika/mime/MediaType;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tika/mime/MediaType;)I
    .locals 2
    .param p1, "that"    # Lorg/apache/tika/mime/MediaType;

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tika/mime/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 241
    instance-of v2, p1, Lorg/apache/tika/mime/MediaType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 242
    check-cast v0, Lorg/apache/tika/mime/MediaType;

    .line 243
    .local v0, "that":Lorg/apache/tika/mime/MediaType;
    iget-object v2, p0, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    iget-object v3, v0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 247
    .end local v0    # "that":Lorg/apache/tika/mime/MediaType;
    :cond_0
    return v1
.end method

.method public getBaseType()Lorg/apache/tika/mime/MediaType;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    .end local p0    # "this":Lorg/apache/tika/mime/MediaType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/tika/mime/MediaType;
    :cond_0
    new-instance v0, Lorg/apache/tika/mime/MediaType;

    iget-object v1, p0, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/mime/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasParameters()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 252
    const/16 v0, 0x11

    .line 253
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 254
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 255
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 256
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x22

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/tika/mime/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    iget-object v3, p0, Lorg/apache/tika/mime/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v3, p0, Lorg/apache/tika/mime/MediaType;->parameters:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 224
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    .local v2, "value":Ljava/lang/String;
    sget-object v3, Lorg/apache/tika/mime/MediaType;->SPECIAL_OR_WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    sget-object v3, Lorg/apache/tika/mime/MediaType;->SPECIAL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v5, "\\\\$0"

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
