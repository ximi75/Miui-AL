.class public Lorg/apache/tika/utils/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# static fields
.field private static final CHARSET_ALIASES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final CP_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ISO_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final WIN_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "[ \\\"]*([^ >,;\\\"]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/utils/CharsetUtils;->CHARSET_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 29
    const-string/jumbo v0, "(?i).*8859-([\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/utils/CharsetUtils;->ISO_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    const-string/jumbo v0, "(?i)cp-([\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/utils/CharsetUtils;->CP_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 31
    const-string/jumbo v0, "(?i)win(|-)([\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/utils/CharsetUtils;->WIN_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 35
    new-instance v0, Lorg/apache/tika/utils/CharsetUtils$1;

    invoke-direct {v0}, Lorg/apache/tika/utils/CharsetUtils$1;-><init>()V

    sput-object v0, Lorg/apache/tika/utils/CharsetUtils;->CHARSET_ALIASES:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 74
    if-nez p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v4

    .line 79
    :cond_1
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->CHARSET_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 80
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "result":Ljava/lang/String;
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->CHARSET_ALIASES:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->CHARSET_ALIASES:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 106
    .restart local v3    # "result":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 107
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 88
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :cond_3
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->ISO_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->ISO_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "iso-8859-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    goto :goto_1

    :cond_4
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->CP_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 95
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->CP_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cp"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    goto :goto_1

    :cond_5
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->WIN_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    sget-object v5, Lorg/apache/tika/utils/CharsetUtils;->WIN_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "windows-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 62
    :goto_0
    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
