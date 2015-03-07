.class public Lorg/apache/tika/language/LanguageIdentifier;
.super Ljava/lang/Object;
.source "LanguageIdentifier.java"


# static fields
.field private static final LANGUAGES_KEY:Ljava/lang/String; = "languages"

.field private static final PROFILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/language/LanguageProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final PROFILE_SUFFIX:Ljava/lang/String; = ".ngp"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "tika.language.properties"

.field private static final PROPERTIES_OVERRIDE_FILE:Ljava/lang/String; = "tika.language.override.properties"

.field private static errors:Ljava/lang/String;

.field private static props:Ljava/util/Properties;


# instance fields
.field private final distance:D

.field private final language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    sput-object v0, Lorg/apache/tika/language/LanguageIdentifier;->PROFILES:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/apache/tika/language/LanguageIdentifier;->props:Ljava/util/Properties;

    .line 50
    const-string/jumbo v0, ""

    sput-object v0, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    .line 64
    invoke-static {}, Lorg/apache/tika/language/LanguageIdentifier;->initProfiles()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Lorg/apache/tika/language/LanguageProfile;

    invoke-direct {v0, p1}, Lorg/apache/tika/language/LanguageProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/language/LanguageIdentifier;-><init>(Lorg/apache/tika/language/LanguageProfile;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/language/LanguageProfile;)V
    .locals 8
    .param p1, "profile"    # Lorg/apache/tika/language/LanguageProfile;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string/jumbo v5, "unknown"

    .line 114
    .local v5, "minLanguage":Ljava/lang/String;
    const-wide/high16 v3, 0x3ff0000000000000L

    .line 115
    .local v3, "minDistance":D
    sget-object v6, Lorg/apache/tika/language/LanguageIdentifier;->PROFILES:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 123
    iput-object v5, p0, Lorg/apache/tika/language/LanguageIdentifier;->language:Ljava/lang/String;

    .line 124
    iput-wide v3, p0, Lorg/apache/tika/language/LanguageIdentifier;->distance:D

    .line 125
    return-void

    .line 115
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/tika/language/LanguageProfile;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tika/language/LanguageProfile;

    invoke-virtual {p1, v6}, Lorg/apache/tika/language/LanguageProfile;->distance(Lorg/apache/tika/language/LanguageProfile;)D

    move-result-wide v0

    .line 117
    .local v0, "distance":D
    cmpg-double v6, v0, v3

    if-gez v6, :cond_0

    .line 118
    move-wide v3, v0

    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "minLanguage":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "minLanguage":Ljava/lang/String;
    goto :goto_0
.end method

.method private static addProfile(Ljava/lang/String;)V
    .locals 9
    .param p0, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Lorg/apache/tika/language/LanguageProfile;

    invoke-direct {v1}, Lorg/apache/tika/language/LanguageProfile;-><init>()V

    .line 75
    .local v1, "profile":Lorg/apache/tika/language/LanguageProfile;
    const-class v6, Lorg/apache/tika/language/LanguageIdentifier;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ".ngp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 78
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 80
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 90
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 93
    invoke-static {p0, v1}, Lorg/apache/tika/language/LanguageIdentifier;->addProfile(Ljava/lang/String;Lorg/apache/tika/language/LanguageProfile;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    return-void

    .line 81
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 84
    .local v3, "space":I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 85
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 83
    invoke-virtual {v1, v6, v7, v8}, Lorg/apache/tika/language/LanguageProfile;->add(Ljava/lang/String;J)V

    .line 87
    .end local v3    # "space":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 89
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    .line 90
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 91
    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    .end local v1    # "profile":Lorg/apache/tika/language/LanguageProfile;
    .end local v4    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 95
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed trying to load language profile for language \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\". Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static addProfile(Ljava/lang/String;Lorg/apache/tika/language/LanguageProfile;)V
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "profile"    # Lorg/apache/tika/language/LanguageProfile;

    .prologue
    .line 105
    sget-object v0, Lorg/apache/tika/language/LanguageIdentifier;->PROFILES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public static clearProfiles()V
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/apache/tika/language/LanguageIdentifier;->PROFILES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    return-void
.end method

.method public static getErrors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    sget-object v0, Lorg/apache/tika/language/LanguageIdentifier;->PROFILES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static hasErrors()Z
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initProfiles()V
    .locals 10

    .prologue
    .line 160
    invoke-static {}, Lorg/apache/tika/language/LanguageIdentifier;->clearProfiles()V

    .line 162
    const-string/jumbo v5, ""

    sput-object v5, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    .line 164
    const-class v5, Lorg/apache/tika/language/LanguageIdentifier;

    const-string/jumbo v6, "tika.language.override.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 165
    .local v4, "stream":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 166
    const-class v5, Lorg/apache/tika/language/LanguageIdentifier;

    const-string/jumbo v6, "tika.language.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 168
    :cond_0
    if-eqz v4, :cond_1

    .line 170
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    sput-object v5, Lorg/apache/tika/language/LanguageIdentifier;->props:Ljava/util/Properties;

    .line 171
    sget-object v5, Lorg/apache/tika/language/LanguageIdentifier;->props:Ljava/util/Properties;

    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_1
    :goto_0
    sget-object v5, Lorg/apache/tika/language/LanguageIdentifier;->props:Ljava/util/Properties;

    const-string/jumbo v6, "languages"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "languages":[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_2

    .line 187
    return-void

    .line 172
    .end local v2    # "languages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "IOException while trying to load property file. Message: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "languages":[Ljava/lang/String;
    :cond_2
    aget-object v1, v2, v5

    .line 179
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 180
    sget-object v7, Lorg/apache/tika/language/LanguageIdentifier;->props:Ljava/util/Properties;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "name."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Unknown"

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "name":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Lorg/apache/tika/language/LanguageIdentifier;->addProfile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "Language "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") not initialized. Message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/apache/tika/language/LanguageIdentifier;->errors:Ljava/lang/String;

    goto :goto_2
.end method

.method public static initProfiles(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/language/LanguageProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "profilesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/tika/language/LanguageProfile;>;"
    invoke-static {}, Lorg/apache/tika/language/LanguageIdentifier;->clearProfiles()V

    .line 196
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    return-void

    .line 196
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/tika/language/LanguageProfile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tika/language/LanguageProfile;

    invoke-static {v1, v2}, Lorg/apache/tika/language/LanguageIdentifier;->addProfile(Ljava/lang/String;Lorg/apache/tika/language/LanguageProfile;)V

    goto :goto_0
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/tika/language/LanguageIdentifier;->language:Ljava/lang/String;

    return-object v0
.end method

.method public isReasonablyCertain()Z
    .locals 4

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/tika/language/LanguageIdentifier;->distance:D

    const-wide v2, 0x3f96872b020c49baL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tika/language/LanguageIdentifier;->language:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/tika/language/LanguageIdentifier;->distance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
