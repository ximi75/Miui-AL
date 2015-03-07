.class public Lorg/apache/tika/detect/NameDetector;
.super Ljava/lang/Object;
.source "NameDetector.java"

# interfaces
.implements Lorg/apache/tika/detect/Detector;


# instance fields
.field private final patterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Lorg/apache/tika/mime/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Lorg/apache/tika/mime/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/regex/Pattern;Lorg/apache/tika/mime/MediaType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/tika/detect/NameDetector;->patterns:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;
    .locals 11
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 96
    const-string/jumbo v8, "resourceName"

    invoke-virtual {p2, v8}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 99
    const/16 v8, 0x3f

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 100
    .local v6, "question":I
    if-eq v6, v9, :cond_0

    .line 101
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 103
    :cond_0
    const/16 v8, 0x23

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 104
    .local v2, "hash":I
    if-eq v2, v9, :cond_1

    .line 105
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 109
    :cond_1
    const/16 v8, 0x2f

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 110
    .local v7, "slash":I
    if-eq v7, v9, :cond_2

    .line 111
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    :cond_2
    const/16 v8, 0x5c

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 114
    .local v0, "backslash":I
    if-eq v0, v9, :cond_3

    .line 115
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_3
    const/16 v8, 0x25

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 120
    .local v5, "percent":I
    if-eq v5, v9, :cond_4

    .line 122
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 129
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 132
    iget-object v8, p0, Lorg/apache/tika/detect/NameDetector;->patterns:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 140
    .end local v0    # "backslash":I
    .end local v2    # "hash":I
    .end local v5    # "percent":I
    .end local v6    # "question":I
    .end local v7    # "slash":I
    :cond_6
    sget-object v8, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    :goto_0
    return-object v8

    .line 123
    .restart local v0    # "backslash":I
    .restart local v2    # "hash":I
    .restart local v5    # "percent":I
    .restart local v6    # "question":I
    .restart local v7    # "slash":I
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "UTF-8 not supported"

    invoke-direct {v8, v9, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 132
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 133
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 134
    iget-object v8, p0, Lorg/apache/tika/detect/NameDetector;->patterns:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/tika/mime/MediaType;

    goto :goto_0
.end method
