.class public final Lcom/kingsoft/mail/lib/base/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/lib/base/StringUtil$1;,
        Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;,
        Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;
    }
.end annotation


# static fields
.field private static final CJK_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_MATCHER:Lcom/kingsoft/mail/lib/base/CharMatcher;

.field static final ESCAPE_STRINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final FANCY_DOUBLE_QUOTE:Lcom/kingsoft/mail/lib/base/CharMatcher;

.field private static final FANCY_SINGLE_QUOTE:Lcom/kingsoft/mail/lib/base/CharMatcher;

.field private static final HEX_CHARS:[C

.field static final HEX_LETTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAVA_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

.field private static final JSON_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final JS_ESCAPE_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final LT_GT_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

.field private static final NEWLINE_SPLITTER:Lcom/kingsoft/mail/lib/base/Splitter;

.field private static final OCTAL_CHARS:[C

.field private static final REGEX_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

.field private static final TO_WORDS:Lcom/kingsoft/mail/lib/base/Splitter;

.field public static final WHITE_SPACES:Ljava/lang/String; = " \r\n\t\u3000\u00a0\u2007\u202f"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final characterReferencePattern:Ljava/util/regex/Pattern;

.field private static final dbSpecPattern:Ljava/util/regex/Pattern;

.field private static final htmlTagPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x3e

    const/16 v6, 0x3c

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 395
    invoke-static {v5}, Lcom/kingsoft/mail/lib/base/Splitter;->on(C)Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/lib/base/Splitter;->omitEmptyStrings()Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->NEWLINE_SPLITTER:Lcom/kingsoft/mail/lib/base/Splitter;

    .line 449
    sget-object v1, Lcom/kingsoft/mail/lib/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/Splitter;->on(Lcom/kingsoft/mail/lib/base/CharMatcher;)Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/lib/base/Splitter;->omitEmptyStrings()Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->TO_WORDS:Lcom/kingsoft/mail/lib/base/Splitter;

    .line 720
    const-string/jumbo v1, "\u0091\u0092\u2018\u2019"

    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    .line 722
    const-string/jumbo v1, "\u0093\u0094\u201c\u201d"

    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    .line 996
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xfc

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 998
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&nbsp"

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&iexcl"

    const/16 v3, 0xa1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&cent"

    const/16 v3, 0xa2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&pound"

    const/16 v3, 0xa3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&curren"

    const/16 v3, 0xa4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&yen"

    const/16 v3, 0xa5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&brvbar"

    const/16 v3, 0xa6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sect"

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&uml"

    const/16 v3, 0xa8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&copy"

    const/16 v3, 0xa9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ordf"

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&laquo"

    const/16 v3, 0xab

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&not"

    const/16 v3, 0xac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&shy"

    const/16 v3, 0xad

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&reg"

    const/16 v3, 0xae

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&macr"

    const/16 v3, 0xaf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&deg"

    const/16 v3, 0xb0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&plusmn"

    const/16 v3, 0xb1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sup2"

    const/16 v3, 0xb2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sup3"

    const/16 v3, 0xb3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&acute"

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&micro"

    const/16 v3, 0xb5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&para"

    const/16 v3, 0xb6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&middot"

    const/16 v3, 0xb7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&cedil"

    const/16 v3, 0xb8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sup1"

    const/16 v3, 0xb9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ordm"

    const/16 v3, 0xba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&raquo"

    const/16 v3, 0xbb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&frac14"

    const/16 v3, 0xbc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&frac12"

    const/16 v3, 0xbd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&frac34"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&iquest"

    const/16 v3, 0xbf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Agrave"

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Aacute"

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Acirc"

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Atilde"

    const/16 v3, 0xc3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Auml"

    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Aring"

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&AElig"

    const/16 v3, 0xc6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ccedil"

    const/16 v3, 0xc7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Egrave"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Eacute"

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ecirc"

    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Euml"

    const/16 v3, 0xcb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Igrave"

    const/16 v3, 0xcc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Iacute"

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Icirc"

    const/16 v3, 0xce

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Iuml"

    const/16 v3, 0xcf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ETH"

    const/16 v3, 0xd0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ntilde"

    const/16 v3, 0xd1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ograve"

    const/16 v3, 0xd2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Oacute"

    const/16 v3, 0xd3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ocirc"

    const/16 v3, 0xd4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Otilde"

    const/16 v3, 0xd5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ouml"

    const/16 v3, 0xd6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&times"

    const/16 v3, 0xd7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Oslash"

    const/16 v3, 0xd8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ugrave"

    const/16 v3, 0xd9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Uacute"

    const/16 v3, 0xda

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Ucirc"

    const/16 v3, 0xdb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Uuml"

    const/16 v3, 0xdc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Yacute"

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&THORN"

    const/16 v3, 0xde

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&szlig"

    const/16 v3, 0xdf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&agrave"

    const/16 v3, 0xe0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&aacute"

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&acirc"

    const/16 v3, 0xe2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&atilde"

    const/16 v3, 0xe3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&auml"

    const/16 v3, 0xe4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&aring"

    const/16 v3, 0xe5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&aelig"

    const/16 v3, 0xe6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ccedil"

    const/16 v3, 0xe7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&egrave"

    const/16 v3, 0xe8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&eacute"

    const/16 v3, 0xe9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ecirc"

    const/16 v3, 0xea

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&euml"

    const/16 v3, 0xeb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&igrave"

    const/16 v3, 0xec

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&iacute"

    const/16 v3, 0xed

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&icirc"

    const/16 v3, 0xee

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&iuml"

    const/16 v3, 0xef

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&eth"

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ntilde"

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ograve"

    const/16 v3, 0xf2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&oacute"

    const/16 v3, 0xf3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ocirc"

    const/16 v3, 0xf4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&otilde"

    const/16 v3, 0xf5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ouml"

    const/16 v3, 0xf6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&divide"

    const/16 v3, 0xf7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&oslash"

    const/16 v3, 0xf8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ugrave"

    const/16 v3, 0xf9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&uacute"

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ucirc"

    const/16 v3, 0xfb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&uuml"

    const/16 v3, 0xfc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&yacute"

    const/16 v3, 0xfd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&thorn"

    const/16 v3, 0xfe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&yuml"

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&fnof"

    const/16 v3, 0x192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Alpha"

    const/16 v3, 0x391

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Beta"

    const/16 v3, 0x392

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Gamma"

    const/16 v3, 0x393

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Delta"

    const/16 v3, 0x394

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Epsilon"

    const/16 v3, 0x395

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Zeta"

    const/16 v3, 0x396

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Eta"

    const/16 v3, 0x397

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Theta"

    const/16 v3, 0x398

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Iota"

    const/16 v3, 0x399

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Kappa"

    const/16 v3, 0x39a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Lambda"

    const/16 v3, 0x39b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Mu"

    const/16 v3, 0x39c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Nu"

    const/16 v3, 0x39d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Xi"

    const/16 v3, 0x39e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Omicron"

    const/16 v3, 0x39f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Pi"

    const/16 v3, 0x3a0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Rho"

    const/16 v3, 0x3a1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Sigma"

    const/16 v3, 0x3a3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Tau"

    const/16 v3, 0x3a4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Upsilon"

    const/16 v3, 0x3a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Phi"

    const/16 v3, 0x3a6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Chi"

    const/16 v3, 0x3a7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Psi"

    const/16 v3, 0x3a8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Omega"

    const/16 v3, 0x3a9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&alpha"

    const/16 v3, 0x3b1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&beta"

    const/16 v3, 0x3b2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&gamma"

    const/16 v3, 0x3b3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&delta"

    const/16 v3, 0x3b4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&epsilon"

    const/16 v3, 0x3b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&zeta"

    const/16 v3, 0x3b6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&eta"

    const/16 v3, 0x3b7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&theta"

    const/16 v3, 0x3b8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&iota"

    const/16 v3, 0x3b9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&kappa"

    const/16 v3, 0x3ba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lambda"

    const/16 v3, 0x3bb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&mu"

    const/16 v3, 0x3bc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&nu"

    const/16 v3, 0x3bd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&xi"

    const/16 v3, 0x3be

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&omicron"

    const/16 v3, 0x3bf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&pi"

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rho"

    const/16 v3, 0x3c1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sigmaf"

    const/16 v3, 0x3c2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sigma"

    const/16 v3, 0x3c3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&tau"

    const/16 v3, 0x3c4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&upsilon"

    const/16 v3, 0x3c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&phi"

    const/16 v3, 0x3c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&chi"

    const/16 v3, 0x3c7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&psi"

    const/16 v3, 0x3c8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&omega"

    const/16 v3, 0x3c9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&thetasym"

    const/16 v3, 0x3d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&upsih"

    const/16 v3, 0x3d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&piv"

    const/16 v3, 0x3d6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&bull"

    const/16 v3, 0x2022

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&hellip"

    const/16 v3, 0x2026

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&prime"

    const/16 v3, 0x2032

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Prime"

    const/16 v3, 0x2033

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&oline"

    const/16 v3, 0x203e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&frasl"

    const/16 v3, 0x2044

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&weierp"

    const/16 v3, 0x2118

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&image"

    const/16 v3, 0x2111

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&real"

    const/16 v3, 0x211c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&trade"

    const/16 v3, 0x2122

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&alefsym"

    const/16 v3, 0x2135

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&larr"

    const/16 v3, 0x2190

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&uarr"

    const/16 v3, 0x2191

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rarr"

    const/16 v3, 0x2192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&darr"

    const/16 v3, 0x2193

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&harr"

    const/16 v3, 0x2194

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&crarr"

    const/16 v3, 0x21b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lArr"

    const/16 v3, 0x21d0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&uArr"

    const/16 v3, 0x21d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rArr"

    const/16 v3, 0x21d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&dArr"

    const/16 v3, 0x21d3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&hArr"

    const/16 v3, 0x21d4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&forall"

    const/16 v3, 0x2200

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&part"

    const/16 v3, 0x2202

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&exist"

    const/16 v3, 0x2203

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&empty"

    const/16 v3, 0x2205

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&nabla"

    const/16 v3, 0x2207

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&isin"

    const/16 v3, 0x2208

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&notin"

    const/16 v3, 0x2209

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ni"

    const/16 v3, 0x220b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&prod"

    const/16 v3, 0x220f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sum"

    const/16 v3, 0x2211

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&minus"

    const/16 v3, 0x2212

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lowast"

    const/16 v3, 0x2217

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&radic"

    const/16 v3, 0x221a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&prop"

    const/16 v3, 0x221d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&infin"

    const/16 v3, 0x221e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ang"

    const/16 v3, 0x2220

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&and"

    const/16 v3, 0x2227

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&or"

    const/16 v3, 0x2228

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&cap"

    const/16 v3, 0x2229

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&cup"

    const/16 v3, 0x222a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&int"

    const/16 v3, 0x222b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&there4"

    const/16 v3, 0x2234

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sim"

    const/16 v3, 0x223c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&cong"

    const/16 v3, 0x2245

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&asymp"

    const/16 v3, 0x2248

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ne"

    const/16 v3, 0x2260

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&equiv"

    const/16 v3, 0x2261

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&le"

    const/16 v3, 0x2264

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ge"

    const/16 v3, 0x2265

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sub"

    const/16 v3, 0x2282

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sup"

    const/16 v3, 0x2283

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&nsub"

    const/16 v3, 0x2284

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sube"

    const/16 v3, 0x2286

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&supe"

    const/16 v3, 0x2287

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&oplus"

    const/16 v3, 0x2295

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&otimes"

    const/16 v3, 0x2297

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&perp"

    const/16 v3, 0x22a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sdot"

    const/16 v3, 0x22c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lceil"

    const/16 v3, 0x2308

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rceil"

    const/16 v3, 0x2309

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lfloor"

    const/16 v3, 0x230a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rfloor"

    const/16 v3, 0x230b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lang"

    const/16 v3, 0x2329

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rang"

    const/16 v3, 0x232a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&loz"

    const/16 v3, 0x25ca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&spades"

    const/16 v3, 0x2660

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&clubs"

    const/16 v3, 0x2663

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&hearts"

    const/16 v3, 0x2665

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&diams"

    const/16 v3, 0x2666

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&quot"

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&amp"

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lt"

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&gt"

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&OElig"

    const/16 v3, 0x152

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&oelig"

    const/16 v3, 0x153

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Scaron"

    const/16 v3, 0x160

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&scaron"

    const/16 v3, 0x161

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Yuml"

    const/16 v3, 0x178

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&circ"

    const/16 v3, 0x2c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&tilde"

    const/16 v3, 0x2dc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ensp"

    const/16 v3, 0x2002

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&emsp"

    const/16 v3, 0x2003

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&thinsp"

    const/16 v3, 0x2009

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&zwnj"

    const/16 v3, 0x200c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&zwj"

    const/16 v3, 0x200d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lrm"

    const/16 v3, 0x200e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rlm"

    const/16 v3, 0x200f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ndash"

    const/16 v3, 0x2013

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&mdash"

    const/16 v3, 0x2014

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lsquo"

    const/16 v3, 0x2018

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rsquo"

    const/16 v3, 0x2019

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&sbquo"

    const/16 v3, 0x201a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&ldquo"

    const/16 v3, 0x201c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rdquo"

    const/16 v3, 0x201d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&bdquo"

    const/16 v3, 0x201e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&dagger"

    const/16 v3, 0x2020

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&Dagger"

    const/16 v3, 0x2021

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&permil"

    const/16 v3, 0x2030

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&lsaquo"

    const/16 v3, 0x2039

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&rsaquo"

    const/16 v3, 0x203a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v2, "&euro"

    const/16 v3, 0x20ac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    .line 1253
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1254
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1256
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1257
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1258
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1259
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1260
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1261
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1262
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1263
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1264
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    new-instance v1, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;-><init>()V

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v6, v2}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v7, v2}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->toEscaper()Lcom/kingsoft/mail/lib/base/CharEscaper;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->LT_GT_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

    .line 1410
    const-string/jumbo v1, "</?[a-zA-Z][^>]*>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    .line 1748
    const-string/jumbo v1, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u000b\u000c\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff"

    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->CONTROL_MATCHER:Lcom/kingsoft/mail/lib/base/CharMatcher;

    .line 1803
    new-instance v1, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;-><init>()V

    const-string/jumbo v2, "\\n"

    invoke-virtual {v1, v5, v2}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string/jumbo v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const-string/jumbo v3, "\\t"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    const-string/jumbo v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x22

    const-string/jumbo v3, "\\\""

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x26

    const-string/jumbo v3, "&amp;"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v6, v2}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v7, v2}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x27

    const-string/jumbo v3, "\\\'"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->toEscaper()Lcom/kingsoft/mail/lib/base/CharEscaper;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->JAVA_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

    .line 1830
    new-instance v1, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;-><init>()V

    const/16 v2, 0x28

    const-string/jumbo v3, "\\("

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x29

    const-string/jumbo v3, "\\)"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    const-string/jumbo v3, "\\|"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2a

    const-string/jumbo v3, "\\*"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2b

    const-string/jumbo v3, "\\+"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3f

    const-string/jumbo v3, "\\?"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    const-string/jumbo v3, "\\."

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    const-string/jumbo v3, "\\{"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    const-string/jumbo v3, "\\}"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    const-string/jumbo v3, "\\["

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    const-string/jumbo v3, "\\]"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x24

    const-string/jumbo v3, "\\$"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5e

    const-string/jumbo v3, "\\^"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x5c

    const-string/jumbo v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/lib/base/CharEscaperBuilder;->toEscaper()Lcom/kingsoft/mail/lib/base/CharEscaper;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->REGEX_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

    .line 2344
    const-string/jumbo v1, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    .line 2396
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2397
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2398
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2399
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2400
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2401
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2402
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2403
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2404
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2405
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2406
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2407
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2408
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2409
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2410
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2411
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2412
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2413
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2414
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2415
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2416
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2417
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2418
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    .line 2673
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    .line 2676
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->OCTAL_CHARS:[C

    .line 2732
    const-string/jumbo v1, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    .line 3154
    new-instance v1, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;-><init>(Lcom/kingsoft/mail/lib/base/StringUtil$1;)V

    const/16 v2, 0xad

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x600

    const/16 v3, 0x603

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x6dd

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x70f

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x17b4

    const/16 v3, 0x17b5

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x200b

    const/16 v3, 0x200f

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x202a

    const/16 v3, 0x202e

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x2060

    const/16 v3, 0x2064

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xfeff

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xfff9

    const v3, 0xfffb

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0x1d173

    const v3, 0x1d17a

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xe0001

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const v2, 0xe0020

    const v3, 0xe007f

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x2028

    const/16 v3, 0x2029

    invoke-virtual {v1, v2, v3}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x85

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, "<"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, "\\"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->create()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->JS_ESCAPE_CHARS:Ljava/util/Set;

    .line 3186
    new-instance v1, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;-><init>(Lcom/kingsoft/mail/lib/base/StringUtil$1;)V

    const-string/jumbo v2, "\""

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const-string/jumbo v2, "\\"

    invoke-static {v2, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addCodePoint(I)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v4, v2}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->addRange(II)Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingsoft/mail/lib/base/StringUtil$UnicodeSetBuilder;->create()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->JSON_ESCAPE_CHARS:Ljava/util/Set;

    return-void

    .line 2673
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V
    .locals 4
    .param p0, "codePoint"    # I
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1594
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1600
    .local v0, "surrogates":[C
    const/4 v1, 0x0

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1601
    const/4 v1, 0x1

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1609
    .end local v0    # "surrogates":[C
    :goto_0
    return-void

    .line 1604
    :cond_0
    const-string/jumbo v1, "\\u"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static appendHexJavaScriptRepresentation(Ljava/lang/StringBuilder;C)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C

    .prologue
    .line 1649
    :try_start_0
    invoke-static {p1, p0}, Lcom/kingsoft/mail/lib/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    return-void

    .line 1650
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static appendOctalJavaScriptRepresentation(CZLjava/lang/Appendable;)V
    .locals 3
    .param p0, "ch"    # C
    .param p1, "pad"    # Z
    .param p2, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x5c

    .line 1622
    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    if-eqz p1, :cond_1

    .line 1626
    :cond_0
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->OCTAL_CHARS:[C

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->OCTAL_CHARS:[C

    ushr-int/lit8 v2, p0, 0x3

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->OCTAL_CHARS:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1638
    :goto_0
    return-void

    .line 1630
    :cond_1
    const/16 v0, 0x8

    if-lt p0, v0, :cond_2

    .line 1631
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->OCTAL_CHARS:[C

    ushr-int/lit8 v2, p0, 0x3

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->OCTAL_CHARS:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1635
    :cond_2
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->OCTAL_CHARS:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public static bytesStorage(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2882
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2884
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2885
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2886
    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/kingsoft/mail/lib/base/StringUtil;->bytesUtf8(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2885
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_0

    .line 2888
    :cond_0
    return v1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2684
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/ByteArrays;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "delimiter"    # Ljava/lang/Character;

    .prologue
    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v5, p0

    if-nez p1, :cond_1

    const/4 v4, 0x2

    :goto_0
    mul-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2696
    .local v0, "hex":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 2697
    aget-byte v4, p0, v1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v2, v4, 0xf

    .line 2698
    .local v2, "nibble1":I
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 2699
    .local v3, "nibble2":I
    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2700
    :cond_0
    sget-object v4, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2701
    sget-object v4, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_CHARS:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2696
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2693
    .end local v0    # "hex":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "nibble1":I
    .end local v3    # "nibble2":I
    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    .line 2703
    .restart local v0    # "hex":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static bytesUtf8(I)I
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 2856
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 2857
    const/4 v0, 0x1

    .line 2870
    :goto_0
    return v0

    .line 2858
    :cond_0
    const/16 v0, 0x800

    if-ge p0, v0, :cond_1

    .line 2859
    const/4 v0, 0x2

    goto :goto_0

    .line 2860
    :cond_1
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_2

    .line 2861
    const/4 v0, 0x3

    goto :goto_0

    .line 2862
    :cond_2
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_3

    .line 2863
    const/4 v0, 0x4

    goto :goto_0

    .line 2867
    :cond_3
    const/high16 v0, 0x4000000

    if-ge p0, v0, :cond_4

    .line 2868
    const/4 v0, 0x5

    goto :goto_0

    .line 2870
    :cond_4
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2812
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2817
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2815
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2816
    .local v1, "first":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 2817
    .local v0, "capitalized":C
    if-eq v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static collapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2135
    if-nez p0, :cond_0

    .line 2136
    const/4 v4, 0x0

    .line 2160
    :goto_0
    return-object v4

    .line 2139
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2141
    .local v2, "newStr":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2143
    .local v3, "prevCharMatched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2144
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2145
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2147
    if-eqz v3, :cond_1

    .line 2143
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2152
    :cond_1
    const/4 v3, 0x1

    .line 2153
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2155
    :cond_2
    const/4 v3, 0x0

    .line 2156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2160
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static collapseControlChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2187
    if-nez p0, :cond_0

    .line 2188
    const/4 v4, 0x0

    .line 2212
    :goto_0
    return-object v4

    .line 2191
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2193
    .local v2, "newStr":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2195
    .local v3, "prevCharMatched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2196
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2197
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2199
    if-eqz v3, :cond_1

    .line 2195
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2204
    :cond_1
    const/4 v3, 0x1

    .line 2205
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2207
    :cond_2
    const/4 v3, 0x0

    .line 2208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2212
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2107
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/lib/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static compareToIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "nullsAreGreater"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 2325
    if-ne p0, p1, :cond_1

    .line 2326
    const/4 v0, 0x0

    .line 2334
    :cond_0
    :goto_0
    return v0

    .line 2328
    :cond_1
    if-nez p0, :cond_2

    .line 2329
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2331
    :cond_2
    if-nez p1, :cond_4

    .line 2332
    if-eqz p2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 2334
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static containsCharRef(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2352
    sget-object v0, Lcom/kingsoft/mail/lib/base/StringUtil;->characterReferencePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static convertEOLToLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 782
    .local v3, "res":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 783
    .local v4, "s":[C
    const/4 v1, 0x0

    .line 784
    .local v1, "from":I
    array-length v0, v4

    .line 785
    .local v0, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 786
    aget-char v5, v4, v2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 787
    sub-int v5, v2, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v4, v5

    if-ne v5, v7, :cond_0

    .line 790
    add-int/lit8 v2, v2, 0x1

    .line 793
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .line 785
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    :cond_2
    if-nez v1, :cond_3

    .line 802
    .end local p0    # "input":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 801
    .restart local p0    # "input":Ljava/lang/String;
    :cond_3
    sub-int v5, v0, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static displayWidth(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2487
    const/16 v0, 0x4f9

    if-le p0, v0, :cond_8

    const/16 v0, 0x5be

    if-eq p0, v0, :cond_8

    const/16 v0, 0x5d0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5ea

    if-le p0, v0, :cond_8

    :cond_0
    const/16 v0, 0x5f3

    if-eq p0, v0, :cond_8

    const/16 v0, 0x5f4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x600

    if-lt p0, v0, :cond_1

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_8

    :cond_1
    const/16 v0, 0x750

    if-lt p0, v0, :cond_2

    const/16 v0, 0x77f

    if-le p0, v0, :cond_8

    :cond_2
    const v0, 0xfb50

    if-lt p0, v0, :cond_3

    const v0, 0xfdff

    if-le p0, v0, :cond_8

    :cond_3
    const v0, 0xfe70

    if-lt p0, v0, :cond_4

    const v0, 0xfeff

    if-le p0, v0, :cond_8

    :cond_4
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_5

    const/16 v0, 0x20af

    if-le p0, v0, :cond_8

    :cond_5
    const/16 v0, 0x2100

    if-lt p0, v0, :cond_6

    const/16 v0, 0x213a

    if-le p0, v0, :cond_8

    :cond_6
    const/16 v0, 0xe00

    if-lt p0, v0, :cond_7

    const/16 v0, 0xe7f

    if-le p0, v0, :cond_8

    :cond_7
    const v0, 0xff61

    if-lt p0, v0, :cond_9

    const v0, 0xffdc

    if-gt p0, v0, :cond_9

    .line 2502
    :cond_8
    const/4 v0, 0x1

    .line 2504
    :goto_0
    return v0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static displayWidth(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2455
    const/4 v2, 0x0

    .line 2456
    .local v2, "width":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2457
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2458
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/kingsoft/mail/lib/base/StringUtil;->displayWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    .line 2457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2460
    :cond_0
    return v2
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 2847
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2848
    .local v5, "len":I
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static escapeStringBody(Ljava/lang/CharSequence;ZLcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    .locals 8
    .param p0, "plainText"    # Ljava/lang/CharSequence;
    .param p1, "escapeToAscii"    # Z
    .param p2, "jsEscapingMode"    # Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;
    .param p3, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1513
    const/4 v5, 0x0

    .line 1514
    .local v5, "pos":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1515
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 1516
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1517
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 1519
    .local v0, "charCount":I
    invoke-static {v1, p1, p2}, Lcom/kingsoft/mail/lib/base/StringUtil;->shouldEscapeChar(IZLcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1515
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 1523
    :cond_0
    invoke-interface {p3, p0, v5, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1524
    add-int v5, v2, v0

    .line 1525
    sparse-switch v1, :sswitch_data_0

    .line 1544
    :cond_1
    const/16 v6, 0x100

    if-ge v1, v6, :cond_2

    sget-object v6, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->JSON:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    if-ne p2, v6, :cond_4

    .line 1545
    :cond_2
    invoke-static {v1, p3}, Lcom/kingsoft/mail/lib/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    goto :goto_1

    .line 1526
    :sswitch_0
    const-string/jumbo v6, "\\b"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1527
    :sswitch_1
    const-string/jumbo v6, "\\t"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1528
    :sswitch_2
    const-string/jumbo v6, "\\n"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1529
    :sswitch_3
    const-string/jumbo v6, "\\f"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1530
    :sswitch_4
    const-string/jumbo v6, "\\r"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1531
    :sswitch_5
    const-string/jumbo v6, "\\\\"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 1533
    :sswitch_6
    sget-object v6, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->JSON:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    if-ne p2, v6, :cond_3

    const/16 v6, 0x27

    if-ne v6, v1, :cond_3

    .line 1536
    int-to-char v6, v1

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1538
    :cond_3
    sget-object v6, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    if-eq p2, v6, :cond_1

    .line 1539
    const/16 v6, 0x5c

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v6

    int-to-char v7, v1

    invoke-interface {v6, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1550
    :cond_4
    add-int v6, v2, v0

    if-ge v6, v3, :cond_5

    add-int v6, v2, v0

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/mail/lib/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v4, 0x1

    .line 1552
    .local v4, "pad":Z
    :goto_2
    int-to-char v6, v1

    invoke-static {v6, v4, p3}, Lcom/kingsoft/mail/lib/base/StringUtil;->appendOctalJavaScriptRepresentation(CZLjava/lang/Appendable;)V

    goto :goto_1

    .line 1550
    .end local v4    # "pad":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1557
    .end local v0    # "charCount":I
    .end local v1    # "codePoint":I
    :cond_7
    invoke-interface {p3, p0, v5, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1558
    return-void

    .line 1525
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method public static expandShardNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "dbSpecComponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2752
    sget-object v8, Lcom/kingsoft/mail/lib/base/StringUtil;->dbSpecPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2753
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2755
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2757
    .local v4, "prefix":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2761
    .local v2, "minShard":I
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2765
    .local v1, "maxShard":I
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2768
    .local v6, "suffix":Ljava/lang/String;
    if-le v2, v1, :cond_0

    .line 2769
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Maximum shard must be greater than or equal to the minimum shard"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    .end local v1    # "maxShard":I
    .end local v2    # "minShard":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v6    # "suffix":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2782
    .local v3, "nfex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Malformed DB specification component: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2773
    .end local v3    # "nfex":Ljava/lang/NumberFormatException;
    .restart local v1    # "maxShard":I
    .restart local v2    # "minShard":I
    .restart local v4    # "prefix":Ljava/lang/String;
    .restart local v6    # "suffix":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2774
    .local v7, "tmp":Ljava/lang/StringBuilder;
    move v5, v2

    .local v5, "shard":I
    :goto_0
    if-gt v5, v1, :cond_2

    .line 2775
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    if-eq v5, v1, :cond_1

    .line 2777
    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2780
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 2786
    .end local v1    # "maxShard":I
    .end local v2    # "minShard":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "shard":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/StringBuilder;
    .end local p0    # "dbSpecComponent":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public static fixedSplit(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "lineLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v2, "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Splitter;->fixedLength(I)Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/kingsoft/mail/lib/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 501
    .local v0, "elem":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    .end local v0    # "elem":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static fixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v3, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/kingsoft/mail/lib/base/StringUtil;->NEWLINE_SPLITTER:Lcom/kingsoft/mail/lib/base/Splitter;

    invoke-virtual {v4, p0}, Lcom/kingsoft/mail/lib/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    .local v1, "line":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 418
    .local v2, "lineArray":[Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->fixedWidth([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static fixedWidth([Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v1, "formattedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 443
    .local v4, "line":Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p1, :cond_0

    .line 481
    .end local p0    # "line":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 460
    .restart local p0    # "line":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 463
    .local v1, "col":I
    sget-object v5, Lcom/kingsoft/mail/lib/base/StringUtil;->TO_WORDS:Lcom/kingsoft/mail/lib/base/Splitter;

    invoke-virtual {v5, p0}, Lcom/kingsoft/mail/lib/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 464
    .local v4, "word":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 465
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 478
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 467
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v3, v5, 0x1

    .line 469
    .local v3, "newCol":I
    if-gt v3, p1, :cond_2

    .line 470
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    move v1, v3

    goto :goto_2

    .line 473
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    .line 481
    .end local v3    # "newCol":I
    .end local v4    # "word":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static hexToBytes(Ljava/lang/CharSequence;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 756
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 757
    .local v0, "bytes":[B
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 774
    :cond_0
    return-object v0

    .line 760
    :cond_1
    aput-byte v5, v0, v5

    .line 761
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 762
    .local v3, "nibbleIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 763
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 764
    .local v1, "c":C
    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/StringUtil;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 765
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "string contains non-hex chars"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 767
    :cond_2
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3

    .line 768
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/StringUtil;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 772
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_3
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/StringUtil;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1
.end method

.method private static hexValue(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 849
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 850
    add-int/lit8 v0, p0, -0x30

    .line 854
    :goto_0
    return v0

    .line 851
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 852
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 854
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static htmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3203
    invoke-static {}, Lcom/kingsoft/mail/lib/base/CharEscapers;->asciiHtmlEscaper()Lcom/kingsoft/mail/lib/base/CharEscaper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static indent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "iString"    # Ljava/lang/String;
    .param p1, "iIndentDepth"    # I

    .prologue
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v1, "spacer":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 516
    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    const-string/jumbo v2, "\n"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static indexOfChars(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 7
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v4, -0x1

    const/16 v6, 0x80

    .line 147
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt p2, v5, :cond_1

    move v3, v4

    .line 181
    :cond_0
    :goto_0
    return v3

    .line 156
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 157
    .local v2, "charSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    new-array v1, v6, [Z

    .line 158
    .local v1, "charArray":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 159
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 160
    .local v0, "c":C
    if-ge v0, v6, :cond_2

    .line 161
    const/4 v5, 0x1

    aput-boolean v5, v1, v0

    .line 158
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "charSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 166
    .restart local v2    # "charSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    .end local v0    # "c":C
    :cond_4
    const/4 v5, 0x0

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 172
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 173
    .restart local v0    # "c":C
    if-ge v0, v6, :cond_6

    .line 174
    aget-boolean v5, v1, v0

    if-nez v5, :cond_0

    .line 171
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 177
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .end local v0    # "c":C
    :cond_7
    move v3, v4

    .line 181
    goto :goto_0
.end method

.method public static isCjk(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2430
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/StringUtil;->isCjk(I)Z

    move-result v0

    return v0
.end method

.method public static isCjk(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 2439
    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_0

    .line 2440
    const/4 v0, 0x0

    .line 2443
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/lib/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isCjk(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2382
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2383
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2384
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/mail/lib/base/StringUtil;->isCjk(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2385
    const/4 v2, 0x1

    .line 2388
    :goto_1
    return v2

    .line 2383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2388
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    sget-object v0, Lcom/kingsoft/mail/lib/base/CharMatcher;->WHITESPACE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHebrew(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    .line 2373
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2361
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2362
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/kingsoft/mail/lib/base/StringUtil;->isHebrew(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2363
    const/4 v2, 0x1

    .line 2366
    :goto_1
    return v2

    .line 2361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2366
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isHex(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 843
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOctal(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 839
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1799
    sget-object v0, Lcom/kingsoft/mail/lib/base/StringUtil;->JAVA_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptEscape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1439
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "escapeToAscii"    # Z

    .prologue
    .line 1474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1476
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    sget-object v2, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    invoke-static {p0, p1, v2, v1}, Lcom/kingsoft/mail/lib/base/StringUtil;->escapeStringBody(Ljava/lang/CharSequence;ZLcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1477
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static javaScriptEscapeToAscii(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1451
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptUnescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1663
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1664
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1665
    .local v0, "c":C
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_0

    .line 1666
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3, v2}, Lcom/kingsoft/mail/lib/base/StringUtil;->javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_0

    .line 1668
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1672
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v11, 0x8

    const/4 v1, 0x2

    .line 1685
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt p1, v9, :cond_0

    .line 1686
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "End-of-string after escape character in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1690
    :cond_0
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1691
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1739
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown escape code ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1692
    :sswitch_0
    const/16 v9, 0xa

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1744
    .end local v3    # "i":I
    .restart local p1    # "i":I
    :goto_0
    return p1

    .line 1693
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_1
    const/16 v9, 0xd

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1694
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_2
    const/16 v9, 0x9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1695
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_3
    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1696
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_4
    const/16 v9, 0xc

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1701
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1702
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .line 1705
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_6
    add-int/lit8 p1, v3, -0x1

    .line 1706
    .end local v3    # "i":I
    .restart local p1    # "i":I
    const/4 v6, 0x1

    .line 1707
    .local v6, "nOctalDigits":I
    const/16 v9, 0x34

    if-ge v0, v9, :cond_1

    const/4 v1, 0x3

    .line 1709
    .local v1, "digitLimit":I
    :cond_1
    :goto_1
    if-ge v6, v1, :cond_2

    add-int v9, p1, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    add-int v9, p1, v6

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/kingsoft/mail/lib/base/StringUtil;->isOctal(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1710
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1712
    :cond_2
    add-int v9, p1, v6

    invoke-virtual {p0, p1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1714
    add-int/2addr p1, v6

    .line 1715
    goto :goto_0

    .line 1719
    .end local v1    # "digitLimit":I
    .end local v6    # "nOctalDigits":I
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :sswitch_7
    const/16 v9, 0x75

    if-ne v0, v9, :cond_3

    const/4 v5, 0x4

    .line 1721
    .local v5, "nHexDigits":I
    :goto_2
    add-int v9, v3, v5

    :try_start_0
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1729
    .local v2, "hexCode":Ljava/lang/String;
    const/16 v9, 0x10

    :try_start_1
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1735
    .local v8, "unicodeValue":I
    int-to-char v9, v8

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1736
    add-int p1, v3, v5

    .line 1737
    .end local v3    # "i":I
    .restart local p1    # "i":I
    goto :goto_0

    .end local v2    # "hexCode":Ljava/lang/String;
    .end local v5    # "nHexDigits":I
    .end local v8    # "unicodeValue":I
    .end local p1    # "i":I
    .restart local v3    # "i":I
    :cond_3
    move v5, v1

    .line 1719
    goto :goto_2

    .line 1722
    .restart local v5    # "nHexDigits":I
    :catch_0
    move-exception v4

    .line 1723
    .local v4, "ioobe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid unicode sequence ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1730
    .end local v4    # "ioobe":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "hexCode":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1731
    .local v7, "nfe":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid unicode sequence ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1691
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x3e -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_7
        0x78 -> :sswitch_7
    .end sparse-switch
.end method

.method public static lastIndexNotOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 683
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 685
    move v0, p2

    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    .line 686
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 691
    .end local v0    # "pos":I
    :goto_1
    return v0

    .line 685
    .restart local v0    # "pos":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 691
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lastToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 2341
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->lastIndexIn(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 2083
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 2084
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2085
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2086
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2087
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Duplicate string key in map when lower casing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2090
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2092
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static map2String(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sepKey"    # Ljava/lang/String;
    .param p2, "sepEntry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2067
    .local p0, "in":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner$MapJoiner;->join(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static maskLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "maskChar"    # C

    .prologue
    .line 826
    if-gtz p1, :cond_0

    .line 835
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 829
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 832
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "left"    # Z
    .param p2, "right"    # Z
    .param p3, "what"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    if-nez p0, :cond_1

    .line 544
    const/4 p0, 0x0

    .line 557
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 547
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Lcom/kingsoft/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v0

    .line 548
    .local v0, "matcher":Lcom/kingsoft/mail/lib/base/CharMatcher;
    if-eqz p1, :cond_3

    .line 549
    if-eqz p2, :cond_2

    .line 550
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 554
    :cond_3
    if-eqz p2, :cond_0

    .line 555
    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static mustEscapeCharInJsString(I)Z
    .locals 2
    .param p0, "codepoint"    # I

    .prologue
    .line 3109
    sget-object v0, Lcom/kingsoft/mail/lib/base/StringUtil;->JS_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static mustEscapeCharInJsonString(I)Z
    .locals 2
    .param p0, "codepoint"    # I

    .prologue
    .line 3125
    sget-object v0, Lcom/kingsoft/mail/lib/base/StringUtil;->JSON_ESCAPE_CHARS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static padLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 810
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/lib/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static padRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "padChar"    # C

    .prologue
    .line 818
    invoke-static {p0, p1, p2}, Lcom/kingsoft/mail/lib/base/Strings;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedList(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 9
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    const/4 v8, 0x0

    .line 2272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2275
    .local v0, "delim":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v2, v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2278
    .local v2, "st":Ljava/util/StringTokenizer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2279
    .local v4, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, ""

    .line 2280
    .local v1, "lastToken":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2294
    .local v5, "word":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2295
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2296
    .local v3, "tok":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2297
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2298
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    .line 2307
    :cond_0
    :goto_1
    move-object v1, v3

    .line 2308
    goto :goto_0

    .line 2301
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 2302
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 2310
    .end local v3    # "tok":Ljava/lang/String;
    :cond_3
    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static regexEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1826
    sget-object v0, Lcom/kingsoft/mail/lib/base/StringUtil;->REGEX_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeChars(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "oldchars"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 716
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/kingsoft/mail/lib/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "what"    # Ljava/lang/CharSequence;
    .param p2, "with"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkArgument(Z)V

    .line 392
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "oldchars"    # Ljava/lang/CharSequence;
    .param p2, "newchar"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 704
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/kingsoft/mail/lib/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceSmartQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 730
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    const/16 v2, 0x27

    invoke-virtual {v1, p0, v2}, Lcom/kingsoft/mail/lib/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "tmp":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    const/16 v2, 0x22

    invoke-virtual {v1, v0, v2}, Lcom/kingsoft/mail/lib/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static shouldEscapeChar(IZLcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;)Z
    .locals 2
    .param p0, "codePoint"    # I
    .param p1, "escapeToAscii"    # Z
    .param p2, "jsEscapingMode"    # Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    .prologue
    const/4 v0, 0x1

    .line 1566
    if-eqz p1, :cond_1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return v0

    .line 1575
    :cond_1
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;->JSON:Lcom/kingsoft/mail/lib/base/StringUtil$JsEscapingMode;

    if-ne p2, v1, :cond_2

    .line 1576
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/StringUtil;->mustEscapeCharInJsonString(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/StringUtil;->mustEscapeCharInJsString(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1581
    :cond_2
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/StringUtil;->mustEscapeCharInJsString(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delims"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delims"    # Ljava/lang/String;
    .param p2, "trimTokens"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 245
    .local v2, "n":I
    new-array v1, v2, [Ljava/lang/String;

    .line 246
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 247
    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 246
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    goto :goto_1

    .line 253
    :cond_1
    return-object v1
.end method

.method public static splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delims"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitInts(Ljava/lang/String;)[I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 356
    .local v2, "n":I
    new-array v1, v2, [I

    .line 357
    .local v1, "list":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 358
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static splitLongs(Ljava/lang/String;)[J
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 368
    .local v2, "n":I
    new-array v1, v2, [J

    .line 369
    .local v1, "list":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 370
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v1, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2833
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static stream2String(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2244
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 2245
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2246
    .local v2, "sw":Ljava/io/StringWriter;
    const/4 v3, 0x0

    .line 2247
    .local v3, "totalRead":I
    const/4 v1, 0x0

    .line 2250
    .local v1, "read":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2251
    add-int/2addr v3, v1

    .line 2252
    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2253
    if-eq v5, p1, :cond_1

    if-ge v3, p1, :cond_2

    :cond_1
    if-ne v1, v5, :cond_0

    .line 2255
    :cond_2
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "doStrip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1924
    .local p3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1925
    const/4 v3, 0x0

    .line 1957
    :goto_0
    return-object v3

    .line 1927
    :cond_0
    if-nez p3, :cond_1

    .line 1928
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .restart local p3    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1931
    :cond_2
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v3, p3

    .line 1932
    goto :goto_0

    .line 1935
    :cond_3
    const/4 v0, 0x0

    .line 1937
    .local v0, "fromIndex":I
    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "pos":I
    if-ltz v2, :cond_7

    .line 1938
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1939
    .local v1, "interim":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1940
    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1942
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1943
    :cond_5
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1946
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1947
    goto :goto_1

    .line 1949
    .end local v1    # "interim":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1950
    .restart local v1    # "interim":Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 1951
    invoke-static {v1}, Lcom/kingsoft/mail/lib/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1953
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 1954
    :cond_9
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object v3, p3

    .line 1957
    goto :goto_0
.end method

.method public static string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "doStrip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1863
    if-nez p0, :cond_0

    .line 1864
    const/4 v0, 0x0

    .line 1869
    :goto_0
    return-object v0

    .line 1867
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1868
    .local v0, "out":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_0
.end method

.method public static string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimEntry"    # Ljava/lang/String;
    .param p2, "delimKey"    # Ljava/lang/String;
    .param p3, "doStripEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1979
    if-nez p0, :cond_0

    .line 1980
    const/4 v0, 0x0

    .line 1983
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lcom/kingsoft/mail/lib/base/StringUtil;->stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static string2Set(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "doStrip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1891
    if-nez p0, :cond_0

    .line 1892
    const/4 v0, 0x0

    .line 1897
    :goto_0
    return-object v0

    .line 1895
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1896
    .local v0, "out":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_0
.end method

.method private static stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .param p1, "in"    # Ljava/lang/String;
    .param p2, "delimEntry"    # Ljava/lang/String;
    .param p3, "delimKey"    # Ljava/lang/String;
    .param p4, "doStripEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "out":Ljava/util/Map;, "TT;"
    const/4 v7, 0x0

    .line 2028
    invoke-static {p2}, Lcom/kingsoft/mail/lib/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Lcom/kingsoft/mail/lib/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2029
    :cond_0
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    :cond_1
    return-object p0

    .line 2033
    :cond_2
    invoke-static {p1, p2, v7}, Lcom/kingsoft/mail/lib/base/StringUtil;->string2List(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2034
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2035
    .local v2, "len":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2036
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2037
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2038
    .local v3, "pos":I
    if-lez v3, :cond_4

    .line 2039
    add-int v5, v3, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2040
    .local v4, "value":Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 2041
    invoke-static {v4}, Lcom/kingsoft/mail/lib/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2043
    :cond_3
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingsoft/mail/lib/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2045
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static stringToOrderedMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "delimEntry"    # Ljava/lang/String;
    .param p2, "delimKey"    # Ljava/lang/String;
    .param p3, "doStripEntry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2004
    if-nez p0, :cond_0

    .line 2005
    const/4 v0, 0x0

    .line 2008
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lcom/kingsoft/mail/lib/base/StringUtil;->stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/lib/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripAndCollapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingsoft/mail/lib/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1419
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1429
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1422
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->htmlTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, "stripped":Ljava/lang/String;
    sget-object v1, Lcom/kingsoft/mail/lib/base/StringUtil;->LT_GT_ESCAPE:Lcom/kingsoft/mail/lib/base/CharEscaper;

    invoke-virtual {v1, v0}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripNonDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    sget-object v0, Lcom/kingsoft/mail/lib/base/CharMatcher;->JAVA_DIGIT:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripPrefixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-static {p0, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stripSuffixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {p0, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 2725
    if-nez p0, :cond_0

    .line 2726
    const/4 v0, 0x0

    .line 2728
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toNullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toNullIfEmptyOrWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/StringUtil;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2594
    if-nez p0, :cond_0

    .line 2595
    const-string/jumbo v0, "NULL"

    .line 2597
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3
    .param p0, "iArray"    # [F

    .prologue
    .line 2511
    if-nez p0, :cond_0

    .line 2512
    const-string/jumbo v2, "NULL"

    .line 2524
    :goto_0
    return-object v2

    .line 2515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2516
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2518
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2519
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2520
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2523
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .param p0, "iArray"    # [I

    .prologue
    .line 2551
    if-nez p0, :cond_0

    .line 2552
    const-string/jumbo v2, "NULL"

    .line 2564
    :goto_0
    return-object v2

    .line 2555
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2556
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2558
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2559
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2560
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2563
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4
    .param p0, "iArray"    # [J

    .prologue
    .line 2531
    if-nez p0, :cond_0

    .line 2532
    const-string/jumbo v2, "NULL"

    .line 2544
    :goto_0
    return-object v2

    .line 2535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2536
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2538
    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2539
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2540
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2543
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 2660
    if-nez p0, :cond_0

    const-string/jumbo v2, "NULL"

    .line 2670
    :goto_0
    return-object v2

    .line 2661
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2662
    .local v1, "tmp":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2664
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2666
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2663
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2669
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2670
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "iArray"    # [Ljava/lang/String;

    .prologue
    .line 2571
    if-nez p0, :cond_0

    const-string/jumbo v2, "NULL"

    .line 2583
    :goto_0
    return-object v2

    .line 2573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2574
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2576
    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2578
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2581
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([[I)Ljava/lang/String;
    .locals 4
    .param p0, "iArray"    # [[I

    .prologue
    .line 2606
    if-nez p0, :cond_0

    .line 2607
    const-string/jumbo v3, "NULL"

    .line 2626
    :goto_0
    return-object v3

    .line 2610
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2611
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 2613
    const-string/jumbo v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2615
    aget-object v3, p0, v1

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2616
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2617
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2620
    :cond_2
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    .line 2622
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2625
    .end local v2    # "j":I
    :cond_4
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toString([[J)Ljava/lang/String;
    .locals 5
    .param p0, "iArray"    # [[J

    .prologue
    .line 2633
    if-nez p0, :cond_0

    const-string/jumbo v3, "NULL"

    .line 2651
    :goto_0
    return-object v3

    .line 2635
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2636
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 2638
    const-string/jumbo v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2640
    aget-object v3, p0, v1

    aget-wide v3, v3, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2641
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2642
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2645
    :cond_2
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    .line 2647
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2650
    .end local v2    # "j":I
    :cond_4
    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 2712
    if-nez p0, :cond_0

    .line 2713
    const/4 v0, 0x0

    .line 2715
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "extraChars"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "trimCount":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 324
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 330
    goto :goto_0

    .line 332
    .end local v0    # "ch":C
    :cond_1
    if-nez v1, :cond_2

    .line 335
    .end local p0    # "s":Ljava/lang/String;
    :goto_1
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static trimStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->trimStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "extraChars"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "trimCount":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 282
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 283
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 289
    goto :goto_0

    .line 291
    .end local v0    # "ch":C
    :cond_1
    if-nez v1, :cond_2

    .line 294
    .end local p0    # "s":Ljava/lang/String;
    :goto_1
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "maxLength"    # I
    .param p2, "addEllipsis"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2985
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 2991
    .end local p0    # "source":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 2988
    .restart local p0    # "source":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 2989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, -0x3

    invoke-static {p0, v2, v1}, Lcom/kingsoft/mail/lib/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2991
    :cond_1
    invoke-static {p0, v2, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static truncateIfNecessary(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "maxLength"    # I

    .prologue
    const/4 v6, 0x0

    .line 2936
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p1, :cond_1

    move-object v3, p0

    .line 2962
    :cond_0
    :goto_0
    return-object v3

    .line 2939
    :cond_1
    invoke-static {p0, v6, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 2942
    .local v1, "str":Ljava/lang/String;
    sget-object v4, Lcom/kingsoft/mail/lib/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    .line 2943
    .local v4, "whitespaceMatcher":Lcom/kingsoft/mail/lib/base/CharMatcher;
    invoke-virtual {v4, v1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2946
    .local v3, "truncated":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, p1, :cond_0

    .line 2951
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2956
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 2957
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2958
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2959
    .local v2, "substr":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/kingsoft/mail/lib/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2956
    .end local v2    # "substr":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxbytes"    # I

    .prologue
    .line 2899
    if-gez p1, :cond_0

    .line 2900
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2907
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2909
    .local v3, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2910
    .local v1, "codepoints":I
    const/4 v0, 0x0

    .line 2911
    .local v0, "bytesUsed":I
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2913
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/kingsoft/mail/lib/base/StringUtil;->bytesUtf8(I)I

    move-result v2

    .line 2914
    .local v2, "glyphBytes":I
    add-int v4, v0, v2

    if-le v4, p1, :cond_2

    .line 2919
    .end local v2    # "glyphBytes":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2917
    .restart local v2    # "glyphBytes":I
    :cond_2
    add-int/2addr v0, v2

    .line 2912
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0
.end method

.method public static unescapeCString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x5c

    .line 863
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 915
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 868
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 870
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 871
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 872
    .local v0, "c":C
    if-ne v0, v8, :cond_2

    if-ge v1, v3, :cond_2

    .line 873
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 874
    sparse-switch v0, :sswitch_data_0

    .line 888
    const/16 v6, 0x78

    if-ne v0, v6, :cond_3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/mail/lib/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 890
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/mail/lib/base/StringUtil;->hexValue(C)I

    move-result v5

    .line 891
    .local v5, "v":I
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/mail/lib/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 892
    mul-int/lit8 v6, v5, 0x10

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/kingsoft/mail/lib/base/StringUtil;->hexValue(C)I

    move-result v7

    add-int v5, v6, v7

    move v1, v2

    .line 894
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    int-to-char v0, v5

    .line 913
    .end local v5    # "v":I
    :cond_2
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 914
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 875
    :sswitch_0
    const/4 v0, 0x7

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 876
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    const/16 v0, 0x8

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 877
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    const/16 v0, 0xc

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 878
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_3
    const/16 v0, 0xa

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 879
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_4
    const/16 v0, 0xd

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 880
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_5
    const/16 v0, 0x9

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 881
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_6
    const/16 v0, 0xb

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 882
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_7
    const/16 v0, 0x5c

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 883
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_8
    const/16 v0, 0x3f

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 884
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_9
    const/16 v0, 0x27

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 885
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_a
    const/16 v0, 0x22

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 895
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    invoke-static {v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 897
    add-int/lit8 v5, v0, -0x30

    .line 898
    .restart local v5    # "v":I
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/mail/lib/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 899
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    move v2, v1

    .line 901
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_4
    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/kingsoft/mail/lib/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 902
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    .line 904
    :goto_3
    int-to-char v0, v5

    .line 905
    goto :goto_2

    .line 907
    .end local v1    # "i":I
    .end local v5    # "v":I
    .restart local v2    # "i":I
    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 915
    .end local v0    # "c":C
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .restart local v0    # "c":C
    .restart local v5    # "v":I
    :cond_7
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 874
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x3f -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public static final unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1281
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 23
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "emulateBrowsers"    # Z

    .prologue
    .line 1302
    const/16 v20, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1303
    .local v10, "index":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_0

    .line 1400
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1309
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1310
    .local v6, "chars":[C
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v7, v0, [C

    .line 1311
    .local v7, "escaped":[C
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v7, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1314
    move/from16 v16, v10

    .line 1316
    .local v16, "pos":I
    move v8, v10

    .local v8, "i":I
    :goto_1
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_11

    .line 1317
    aget-char v20, v6, v8

    const/16 v21, 0x26

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 1318
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "pos":I
    .local v17, "pos":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aget-char v20, v6, v8

    aput-char v20, v7, v16

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    move/from16 v16, v17

    .line 1319
    .end local v17    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_1

    .line 1323
    :cond_1
    add-int/lit8 v14, v8, 0x1

    .line 1324
    .local v14, "j":I
    const/4 v13, 0x0

    .line 1325
    .local v13, "isNumericEntity":Z
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    aget-char v20, v6, v14

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1326
    add-int/lit8 v14, v14, 0x1

    .line 1327
    const/4 v13, 0x1

    .line 1331
    :cond_2
    const/4 v12, 0x0

    .line 1332
    .local v12, "isHexEntity":Z
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    aget-char v20, v6, v14

    const/16 v21, 0x78

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    aget-char v20, v6, v14

    const/16 v21, 0x58

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1333
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 1334
    const/4 v12, 0x1

    .line 1338
    :cond_4
    :goto_2
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 1339
    aget-char v3, v6, v14

    .line 1340
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    .line 1341
    .local v11, "isDigit":Z
    if-eqz v13, :cond_d

    .line 1343
    if-nez v12, :cond_c

    if-nez v11, :cond_c

    .line 1357
    .end local v3    # "ch":C
    .end local v11    # "isDigit":Z
    :cond_5
    const/16 v19, 0x0

    .line 1358
    .local v19, "replaced":Z
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v14, v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    aget-char v20, v6, v14

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1361
    :cond_7
    add-int/lit8 v20, v8, 0x2

    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 1363
    const-wide/16 v4, 0x0

    .line 1364
    .local v4, "charcode":J
    add-int/lit8 v20, v8, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1365
    .restart local v3    # "ch":C
    if-eqz v12, :cond_f

    .line 1366
    new-instance v20, Ljava/lang/String;

    add-int/lit8 v21, v8, 0x3

    sub-int v22, v14, v8

    add-int/lit8 v22, v22, -0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Ljava/lang/String;-><init>([CII)V

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1372
    :cond_8
    :goto_3
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-lez v20, :cond_9

    const-wide/32 v20, 0x10000

    cmp-long v20, v4, v20

    if-gez v20, :cond_9

    .line 1373
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "pos":I
    .restart local v17    # "pos":I
    long-to-int v0, v4

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    :try_start_1
    aput-char v20, v7, v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1374
    const/16 v19, 0x1

    move/from16 v16, v17

    .line 1388
    .end local v3    # "ch":C
    .end local v4    # "charcode":J
    .end local v17    # "pos":I
    .restart local v16    # "pos":I
    :cond_9
    :goto_4
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    aget-char v20, v6, v14

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1389
    add-int/lit8 v14, v14, 0x1

    .line 1393
    :cond_a
    if-nez v19, :cond_b

    .line 1395
    sub-int v20, v14, v8

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v6, v8, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    sub-int v20, v14, v8

    add-int v16, v16, v20

    .line 1398
    :cond_b
    move v8, v14

    .line 1399
    goto/16 :goto_1

    .line 1347
    .end local v19    # "replaced":Z
    .restart local v3    # "ch":C
    .restart local v11    # "isDigit":Z
    :cond_c
    if-eqz v12, :cond_d

    if-nez v11, :cond_d

    sget-object v20, Lcom/kingsoft/mail/lib/base/StringUtil;->HEX_LETTERS:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1352
    :cond_d
    if-nez v11, :cond_e

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1338
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1368
    .end local v11    # "isDigit":Z
    .restart local v4    # "charcode":J
    .restart local v19    # "replaced":Z
    :cond_f
    :try_start_2
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1369
    new-instance v20, Ljava/lang/String;

    add-int/lit8 v21, v8, 0x2

    sub-int v22, v14, v8

    add-int/lit8 v22, v22, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    goto :goto_3

    .line 1380
    .end local v3    # "ch":C
    .end local v4    # "charcode":J
    :cond_10
    new-instance v15, Ljava/lang/String;

    sub-int v20, v14, v8

    move/from16 v0, v20

    invoke-direct {v15, v6, v8, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1381
    .local v15, "key":Ljava/lang/String;
    sget-object v20, Lcom/kingsoft/mail/lib/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Character;

    .line 1382
    .local v18, "repl":Ljava/lang/Character;
    if-eqz v18, :cond_9

    .line 1383
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "pos":I
    .restart local v17    # "pos":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Character;->charValue()C

    move-result v20

    aput-char v20, v7, v16

    .line 1384
    const/16 v19, 0x1

    move/from16 v16, v17

    .end local v17    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_4

    .line 1400
    .end local v12    # "isHexEntity":Z
    .end local v13    # "isNumericEntity":Z
    .end local v14    # "j":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "repl":Ljava/lang/Character;
    .end local v19    # "replaced":Z
    :cond_11
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 1376
    .restart local v4    # "charcode":J
    .restart local v12    # "isHexEntity":Z
    .restart local v13    # "isNumericEntity":Z
    .restart local v14    # "j":I
    .restart local v19    # "replaced":Z
    .restart local p0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v20

    goto/16 :goto_4

    .end local v16    # "pos":I
    .restart local v3    # "ch":C
    .restart local v17    # "pos":I
    :catch_1
    move-exception v20

    move/from16 v16, v17

    .end local v17    # "pos":I
    .restart local v16    # "pos":I
    goto/16 :goto_4
.end method

.method public static unescapeMySQLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5c

    const/16 v10, 0x27

    const/16 v9, 0x22

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 932
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 935
    .local v0, "chars":[C
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    aget-char v5, v0, v7

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-char v6, v0, v6

    if-ne v5, v6, :cond_0

    aget-char v5, v0, v7

    if-eq v5, v10, :cond_1

    aget-char v5, v0, v7

    if-eq v5, v9, :cond_1

    .line 937
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 942
    :cond_1
    const/4 v3, 0x1

    .line 943
    .local v3, "j":I
    const/4 v1, 0x0

    .line 944
    .local v1, "f":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_7

    .line 945
    if-nez v1, :cond_4

    .line 946
    aget-char v5, v0, v2

    if-ne v5, v11, :cond_2

    .line 947
    const/4 v1, 0x1

    .line 944
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 948
    :cond_2
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-ne v5, v6, :cond_3

    .line 949
    const/4 v1, 0x2

    goto :goto_1

    .line 951
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 953
    :cond_4
    if-ne v1, v8, :cond_5

    .line 954
    aget-char v5, v0, v2

    sparse-switch v5, :sswitch_data_0

    .line 966
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .line 969
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 955
    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v7, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 956
    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v10, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 957
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v9, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 958
    :sswitch_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0x8

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 959
    :sswitch_4
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0xa

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 960
    :sswitch_5
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0xd

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 961
    :sswitch_6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0x9

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 962
    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0x1a

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 963
    :sswitch_8
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-char v11, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_2

    .line 972
    :cond_5
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-eq v5, v6, :cond_6

    .line 973
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 975
    :cond_6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-char v5, v0, v7

    aput-char v5, v0, v3

    .line 976
    const/4 v1, 0x0

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_1

    .line 980
    :cond_7
    if-eqz v1, :cond_8

    .line 981
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 985
    :cond_8
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v5, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 954
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x30 -> :sswitch_0
        0x5c -> :sswitch_8
        0x62 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x7a -> :sswitch_7
    .end sparse-switch
.end method

.method public static unicodePreservingIndex(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 3012
    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3013
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3015
    add-int/lit8 p1, p1, -0x1

    .line 3018
    .end local p1    # "index":I
    :cond_0
    return p1
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "begin"    # I

    .prologue
    .line 3066
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/kingsoft/mail/lib/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 3053
    invoke-static {p0, p1}, Lcom/kingsoft/mail/lib/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, p2}, Lcom/kingsoft/mail/lib/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xmlCDataEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1769
    sget-object v3, Lcom/kingsoft/mail/lib/base/StringUtil;->CONTROL_MATCHER:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v3, p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1771
    const-string/jumbo v3, "]]>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1772
    .local v0, "found":I
    if-ne v0, v4, :cond_0

    .line 1786
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1778
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1779
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1781
    .local v1, "prev":I
    :cond_1
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    const-string/jumbo v3, "]]&gt;<![CDATA["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    add-int/lit8 v1, v0, 0x3

    .line 1784
    const-string/jumbo v3, "]]>"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1785
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static xmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3196
    invoke-static {}, Lcom/kingsoft/mail/lib/base/CharEscapers;->xmlEscaper()Lcom/kingsoft/mail/lib/base/CharEscaper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
