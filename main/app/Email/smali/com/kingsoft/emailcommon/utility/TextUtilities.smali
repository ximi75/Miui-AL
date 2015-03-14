.class public Lcom/kingsoft/emailcommon/utility/TextUtilities;
.super Ljava/lang/Object;
.source "TextUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;,
        Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;
    }
.end annotation


# static fields
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

.field static final FILTER_ITEMS:[Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;

.field public static final HIGHLIGHT_COLOR_INT:I = -0x100

.field static final HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

.field private static final MAX_SNIPPET_LENGTH:I = 0xc8

.field static final MAX_STRIP_TAG_LENGTH:I = 0x6

.field static final NON_BREAKING_SPACE_CHARACTER:C = '\u00a0'

.field static final STRIP_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v4, 0xfc

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xffff00

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string/jumbo v1, "script"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "head"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 61
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nbsp"

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iexcl"

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cent"

    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&pound"

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&curren"

    const/16 v2, 0xa4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&yen"

    const/16 v2, 0xa5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&brvbar"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sect"

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uml"

    const/16 v2, 0xa8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&copy"

    const/16 v2, 0xa9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ordf"

    const/16 v2, 0xaa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&laquo"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&not"

    const/16 v2, 0xac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&shy"

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&reg"

    const/16 v2, 0xae

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&macr"

    const/16 v2, 0xaf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&deg"

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&plusmn"

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup2"

    const/16 v2, 0xb2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup3"

    const/16 v2, 0xb3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&acute"

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&micro"

    const/16 v2, 0xb5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&para"

    const/16 v2, 0xb6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&middot"

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cedil"

    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup1"

    const/16 v2, 0xb9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ordm"

    const/16 v2, 0xba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&raquo"

    const/16 v2, 0xbb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frac14"

    const/16 v2, 0xbc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frac12"

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frac34"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iquest"

    const/16 v2, 0xbf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Agrave"

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Aacute"

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Acirc"

    const/16 v2, 0xc2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Atilde"

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Auml"

    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Aring"

    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&AElig"

    const/16 v2, 0xc6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ccedil"

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Egrave"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Eacute"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ecirc"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Euml"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Igrave"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Iacute"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Icirc"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Iuml"

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ETH"

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ntilde"

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ograve"

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Oacute"

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ocirc"

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Otilde"

    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ouml"

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&times"

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Oslash"

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ugrave"

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Uacute"

    const/16 v2, 0xda

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Ucirc"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Uuml"

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Yacute"

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&THORN"

    const/16 v2, 0xde

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&szlig"

    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&agrave"

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&aacute"

    const/16 v2, 0xe1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&acirc"

    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&atilde"

    const/16 v2, 0xe3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&auml"

    const/16 v2, 0xe4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&aring"

    const/16 v2, 0xe5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&aelig"

    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ccedil"

    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&egrave"

    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&eacute"

    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ecirc"

    const/16 v2, 0xea

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&euml"

    const/16 v2, 0xeb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&igrave"

    const/16 v2, 0xec

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iacute"

    const/16 v2, 0xed

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&icirc"

    const/16 v2, 0xee

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iuml"

    const/16 v2, 0xef

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&eth"

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ntilde"

    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ograve"

    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oacute"

    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ocirc"

    const/16 v2, 0xf4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&otilde"

    const/16 v2, 0xf5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ouml"

    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&divide"

    const/16 v2, 0xf7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oslash"

    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ugrave"

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uacute"

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ucirc"

    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uuml"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&yacute"

    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&thorn"

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&yuml"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&fnof"

    const/16 v2, 0x192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Alpha"

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Beta"

    const/16 v2, 0x392

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Gamma"

    const/16 v2, 0x393

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Delta"

    const/16 v2, 0x394

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Epsilon"

    const/16 v2, 0x395

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Zeta"

    const/16 v2, 0x396

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Eta"

    const/16 v2, 0x397

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Theta"

    const/16 v2, 0x398

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Iota"

    const/16 v2, 0x399

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Kappa"

    const/16 v2, 0x39a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Lambda"

    const/16 v2, 0x39b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Mu"

    const/16 v2, 0x39c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Nu"

    const/16 v2, 0x39d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Xi"

    const/16 v2, 0x39e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Omicron"

    const/16 v2, 0x39f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Pi"

    const/16 v2, 0x3a0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Rho"

    const/16 v2, 0x3a1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Sigma"

    const/16 v2, 0x3a3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Tau"

    const/16 v2, 0x3a4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Upsilon"

    const/16 v2, 0x3a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Phi"

    const/16 v2, 0x3a6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Chi"

    const/16 v2, 0x3a7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Psi"

    const/16 v2, 0x3a8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Omega"

    const/16 v2, 0x3a9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&alpha"

    const/16 v2, 0x3b1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&beta"

    const/16 v2, 0x3b2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&gamma"

    const/16 v2, 0x3b3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&delta"

    const/16 v2, 0x3b4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&epsilon"

    const/16 v2, 0x3b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&zeta"

    const/16 v2, 0x3b6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&eta"

    const/16 v2, 0x3b7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&theta"

    const/16 v2, 0x3b8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&iota"

    const/16 v2, 0x3b9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&kappa"

    const/16 v2, 0x3ba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lambda"

    const/16 v2, 0x3bb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&mu"

    const/16 v2, 0x3bc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nu"

    const/16 v2, 0x3bd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&xi"

    const/16 v2, 0x3be

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&omicron"

    const/16 v2, 0x3bf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&pi"

    const/16 v2, 0x3c0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rho"

    const/16 v2, 0x3c1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sigmaf"

    const/16 v2, 0x3c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sigma"

    const/16 v2, 0x3c3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&tau"

    const/16 v2, 0x3c4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&upsilon"

    const/16 v2, 0x3c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&phi"

    const/16 v2, 0x3c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&chi"

    const/16 v2, 0x3c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&psi"

    const/16 v2, 0x3c8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&omega"

    const/16 v2, 0x3c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&thetasym"

    const/16 v2, 0x3d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&upsih"

    const/16 v2, 0x3d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&piv"

    const/16 v2, 0x3d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&bull"

    const/16 v2, 0x2022

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&hellip"

    const/16 v2, 0x2026

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&prime"

    const/16 v2, 0x2032

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Prime"

    const/16 v2, 0x2033

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oline"

    const/16 v2, 0x203e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&frasl"

    const/16 v2, 0x2044

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&weierp"

    const/16 v2, 0x2118

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&image"

    const/16 v2, 0x2111

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&real"

    const/16 v2, 0x211c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&trade"

    const/16 v2, 0x2122

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&alefsym"

    const/16 v2, 0x2135

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&larr"

    const/16 v2, 0x2190

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uarr"

    const/16 v2, 0x2191

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rarr"

    const/16 v2, 0x2192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&darr"

    const/16 v2, 0x2193

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&harr"

    const/16 v2, 0x2194

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&crarr"

    const/16 v2, 0x21b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lArr"

    const/16 v2, 0x21d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&uArr"

    const/16 v2, 0x21d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rArr"

    const/16 v2, 0x21d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&dArr"

    const/16 v2, 0x21d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&hArr"

    const/16 v2, 0x21d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&forall"

    const/16 v2, 0x2200

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&part"

    const/16 v2, 0x2202

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&exist"

    const/16 v2, 0x2203

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&empty"

    const/16 v2, 0x2205

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nabla"

    const/16 v2, 0x2207

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&isin"

    const/16 v2, 0x2208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&notin"

    const/16 v2, 0x2209

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ni"

    const/16 v2, 0x220b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&prod"

    const/16 v2, 0x220f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sum"

    const/16 v2, 0x2211

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&minus"

    const/16 v2, 0x2212

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lowast"

    const/16 v2, 0x2217

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&radic"

    const/16 v2, 0x221a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&prop"

    const/16 v2, 0x221d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&infin"

    const/16 v2, 0x221e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ang"

    const/16 v2, 0x2220

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&and"

    const/16 v2, 0x2227

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&or"

    const/16 v2, 0x2228

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cap"

    const/16 v2, 0x2229

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cup"

    const/16 v2, 0x222a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&int"

    const/16 v2, 0x222b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&there4"

    const/16 v2, 0x2234

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sim"

    const/16 v2, 0x223c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&cong"

    const/16 v2, 0x2245

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&asymp"

    const/16 v2, 0x2248

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ne"

    const/16 v2, 0x2260

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&equiv"

    const/16 v2, 0x2261

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&le"

    const/16 v2, 0x2264

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ge"

    const/16 v2, 0x2265

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sub"

    const/16 v2, 0x2282

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sup"

    const/16 v2, 0x2283

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&nsub"

    const/16 v2, 0x2284

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sube"

    const/16 v2, 0x2286

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&supe"

    const/16 v2, 0x2287

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oplus"

    const/16 v2, 0x2295

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&otimes"

    const/16 v2, 0x2297

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&perp"

    const/16 v2, 0x22a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sdot"

    const/16 v2, 0x22c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lceil"

    const/16 v2, 0x2308

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rceil"

    const/16 v2, 0x2309

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lfloor"

    const/16 v2, 0x230a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rfloor"

    const/16 v2, 0x230b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lang"

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rang"

    const/16 v2, 0x232a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&loz"

    const/16 v2, 0x25ca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&spades"

    const/16 v2, 0x2660

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&clubs"

    const/16 v2, 0x2663

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&hearts"

    const/16 v2, 0x2665

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&diams"

    const/16 v2, 0x2666

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&quot"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&amp"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lt"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&gt"

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&OElig"

    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&oelig"

    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Scaron"

    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&scaron"

    const/16 v2, 0x161

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Yuml"

    const/16 v2, 0x178

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&circ"

    const/16 v2, 0x2c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&tilde"

    const/16 v2, 0x2dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ensp"

    const/16 v2, 0x2002

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&emsp"

    const/16 v2, 0x2003

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&thinsp"

    const/16 v2, 0x2009

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&zwnj"

    const/16 v2, 0x200c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&zwj"

    const/16 v2, 0x200d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lrm"

    const/16 v2, 0x200e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rlm"

    const/16 v2, 0x200f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ndash"

    const/16 v2, 0x2013

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&mdash"

    const/16 v2, 0x2014

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lsquo"

    const/16 v2, 0x2018

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rsquo"

    const/16 v2, 0x2019

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&sbquo"

    const/16 v2, 0x201a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&ldquo"

    const/16 v2, 0x201c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rdquo"

    const/16 v2, 0x201d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&bdquo"

    const/16 v2, 0x201e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&dagger"

    const/16 v2, 0x2020

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&Dagger"

    const/16 v2, 0x2021

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&permil"

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&lsaquo"

    const/16 v2, 0x2039

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&rsaquo"

    const/16 v2, 0x203a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    const-string/jumbo v1, "&euro"

    const/16 v2, 0x20ac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-array v0, v3, [Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;

    new-instance v1, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;

    const-string/jumbo v2, "div"

    const-string/jumbo v3, "<div[^>]*class=\"([^\"]*)\""

    const-string/jumbo v4, "class"

    const-string/jumbo v5, "netease-attdown"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingsoft/emailcommon/utility/TextUtilities;->FILTER_ITEMS:[Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    return-void
.end method

.method static findMatchedTag(Ljava/lang/StringBuffer;Ljava/lang/String;I)I
    .locals 8
    .param p0, "htmlText"    # Ljava/lang/StringBuffer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    const/4 v5, -0x1

    .line 373
    const-string/jumbo v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 377
    :cond_0
    const/4 v3, 0x0

    .line 378
    .local v3, "prevChar":C
    const/4 v4, 0x1

    .line 379
    .local v4, "stackDepth":I
    move v2, p2

    .line 381
    .local v2, "pos":I
    :cond_1
    invoke-virtual {p0, p1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 382
    if-le v2, p2, :cond_2

    .line 383
    const/4 v1, 0x1

    .line 384
    .local v1, "i":I
    const/4 v3, 0x0

    .line 385
    :goto_0
    sub-int v6, v2, v1

    if-lt v6, p2, :cond_2

    .line 386
    sub-int v6, v2, v1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 387
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 388
    move v3, v0

    .line 396
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const/16 v6, 0x2f

    if-ne v3, v6, :cond_4

    .line 398
    add-int/lit8 v4, v4, -0x1

    .line 399
    if-nez v4, :cond_5

    move v5, v2

    .line 412
    :goto_1
    return v5

    .line 391
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 392
    goto :goto_0

    .line 402
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_4
    const/16 v6, 0x3c

    if-ne v3, v6, :cond_5

    .line 404
    add-int/lit8 v4, v4, 0x1

    .line 409
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 410
    if-ne v2, v5, :cond_1

    goto :goto_1
.end method

.method static findTagEnd(Ljava/lang/StringBuffer;Ljava/lang/String;I)I
    .locals 6
    .param p0, "htmlText"    # Ljava/lang/StringBuffer;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 346
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 349
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 350
    .local v2, "length":I
    const/4 v3, 0x0

    .line 351
    .local v3, "prevChar":C
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 352
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 353
    .local v0, "c":C
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_1

    .line 354
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    .line 355
    add-int/lit8 v4, v1, -0x1

    .line 362
    .end local v0    # "c":C
    :goto_1
    return v4

    .line 359
    .restart local v0    # "c":C
    :cond_1
    move v3, v0

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "c":C
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1
.end method

.method public static highlightTerms(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 34
    .param p0, "text"    # Ljava/lang/StringBuffer;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "html"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_0

    const-string/jumbo v22, ""

    .line 836
    :goto_0
    return-object v22

    .line 692
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    .line 695
    .local v17, "length":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v29, "terms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;>;"
    if-eqz p1, :cond_1

    .line 697
    new-instance v23, Ljava/util/StringTokenizer;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 698
    .local v23, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 699
    new-instance v30, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;

    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 705
    .end local v23    # "st":Ljava/util/StringTokenizer;
    :cond_1
    if-eqz p2, :cond_5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v22, "sb":Ljava/lang/Appendable;
    :goto_2
    const/4 v13, 0x0

    .line 709
    .local v13, "inTag":Z
    const/4 v14, -0x1

    .line 713
    .local v14, "lastOut":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 714
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    .line 715
    .local v6, "chr":C
    if-eqz p2, :cond_b

    .line 716
    if-nez v13, :cond_a

    const/16 v30, 0x3c

    move/from16 v0, v30

    if-ne v6, v0, :cond_a

    .line 718
    add-int/lit8 v30, v17, -0x1

    move/from16 v0, v30

    if-ge v10, v0, :cond_8

    .line 719
    add-int/lit8 v30, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v21

    .line 720
    .local v21, "peek":C
    const/16 v30, 0x21

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    const/16 v30, 0x2d

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    const/16 v30, 0x2f

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetter(C)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 721
    :cond_2
    const/4 v13, 0x1

    .line 723
    add-int/lit8 v30, v17, -0x8

    move/from16 v0, v30

    if-ge v10, v0, :cond_8

    .line 724
    add-int/lit8 v30, v10, 0x1

    add-int/lit8 v31, v10, 0x6

    add-int/lit8 v31, v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 725
    .local v27, "tag":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    .line 726
    .local v28, "tagLowerCase":Ljava/lang/String;
    const/16 v24, 0x0

    .line 727
    .local v24, "stripContent":Z
    sget-object v5, Lcom/kingsoft/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_3

    aget-object v25, v5, v11

    .line 728
    .local v25, "stripTag":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 729
    const/16 v24, 0x1

    .line 730
    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 734
    .end local v25    # "stripTag":Ljava/lang/String;
    :cond_3
    if-eqz v24, :cond_8

    .line 736
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->findTagEnd(Ljava/lang/StringBuffer;Ljava/lang/String;I)I

    move-result v8

    .line 737
    .local v8, "endTagPosition":I
    if-gez v8, :cond_7

    .line 738
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 836
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "chr":C
    .end local v8    # "endTagPosition":I
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "peek":C
    .end local v24    # "stripContent":Z
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "tagLowerCase":Ljava/lang/String;
    :cond_4
    check-cast v22, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 705
    .end local v10    # "i":I
    .end local v13    # "inTag":Z
    .end local v14    # "lastOut":I
    .end local v22    # "sb":Ljava/lang/Appendable;
    :cond_5
    new-instance v22, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto/16 :goto_2

    .line 727
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "chr":C
    .restart local v10    # "i":I
    .restart local v11    # "i$":I
    .restart local v13    # "inTag":Z
    .restart local v14    # "lastOut":I
    .restart local v16    # "len$":I
    .restart local v21    # "peek":C
    .restart local v22    # "sb":Ljava/lang/Appendable;
    .restart local v24    # "stripContent":Z
    .restart local v25    # "stripTag":Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v28    # "tagLowerCase":Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 741
    .end local v25    # "stripTag":Ljava/lang/String;
    .restart local v8    # "endTagPosition":I
    :cond_7
    add-int/lit8 v30, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 742
    add-int/lit8 v10, v8, -0x1

    .line 743
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    .line 753
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "endTagPosition":I
    .end local v11    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "peek":C
    .end local v24    # "stripContent":Z
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "tagLowerCase":Ljava/lang/String;
    :cond_8
    :goto_5
    if-eqz v13, :cond_b

    .line 754
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 713
    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 749
    :cond_a
    if-eqz v13, :cond_8

    const/16 v30, 0x3e

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    .line 750
    const/4 v13, 0x0

    goto :goto_5

    .line 760
    :cond_b
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    .line 763
    .local v7, "chrLowerCase":C
    const/4 v4, 0x1

    .line 765
    .local v4, "appendNow":Z
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;

    .line 766
    .local v26, "t":Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mTermLowerCase:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v0, v30

    if-ne v7, v0, :cond_11

    .line 767
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v30, v0

    add-int/lit8 v31, v30, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    if-nez v30, :cond_c

    .line 769
    move-object/from16 v0, v26

    iput v10, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 771
    :cond_c
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 772
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v31, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 774
    .local v19, "matchText":Ljava/lang/String;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-gt v0, v14, :cond_d

    .line 775
    add-int/lit8 v30, v14, 0x1

    add-int/lit8 v31, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 778
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_f

    .line 790
    :goto_8
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int/lit8 v14, v30, -0x1

    .line 791
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 792
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 794
    .end local v19    # "matchText":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 779
    .restart local v19    # "matchText":Ljava/lang/String;
    :cond_f
    if-eqz p2, :cond_10

    .line 780
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "<span style=\"background-color: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/kingsoft/emailcommon/utility/TextUtilities;->HIGHLIGHT_COLOR_STRING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 782
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 783
    const-string/jumbo v30, "</span>"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_8

    .line 785
    :cond_10
    new-instance v9, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 786
    .local v9, "highlightSpan":Landroid/text/SpannableString;
    new-instance v30, Landroid/text/style/BackgroundColorSpan;

    const/16 v31, -0x100

    invoke-direct/range {v30 .. v31}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v31, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v32

    const/16 v33, 0x21

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 788
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_8

    .line 796
    .end local v9    # "highlightSpan":Landroid/text/SpannableString;
    .end local v19    # "matchText":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    if-ltz v30, :cond_16

    .line 798
    const/4 v15, -0x1

    .line 799
    .local v15, "leastOtherStart":I
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;

    .line 801
    .local v20, "ot":Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_12

    move-object/from16 v0, v20

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    if-ltz v30, :cond_12

    if-ltz v15, :cond_13

    move-object/from16 v0, v20

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-gt v0, v15, :cond_12

    .line 803
    :cond_13
    move-object/from16 v0, v20

    iget v15, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    goto :goto_9

    .line 806
    .end local v20    # "ot":Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;
    :cond_14
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    move/from16 v31, v0

    add-int v18, v30, v31

    .line 807
    .local v18, "matchEnd":I
    if-ltz v15, :cond_15

    move/from16 v0, v18

    if-le v15, v0, :cond_17

    .line 809
    :cond_15
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v0, v14, :cond_16

    .line 810
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 811
    move/from16 v14, v18

    .line 825
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "leastOtherStart":I
    .end local v18    # "matchEnd":I
    :cond_16
    :goto_a
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 826
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    goto/16 :goto_7

    .line 813
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v15    # "leastOtherStart":I
    .restart local v18    # "matchEnd":I
    :cond_17
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-eq v15, v0, :cond_16

    .line 815
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_18

    .line 817
    const/4 v4, 0x0

    goto :goto_a

    .line 818
    :cond_18
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v0, v14, :cond_16

    .line 820
    move-object/from16 v0, v26

    iget v0, v0, Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 821
    move v14, v15

    goto :goto_a

    .line 830
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "leastOtherStart":I
    .end local v18    # "matchEnd":I
    .end local v26    # "t":Lcom/kingsoft/emailcommon/utility/TextUtilities$SearchTerm;
    :cond_19
    if-eqz v4, :cond_9

    .line 831
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 832
    move v14, v10

    goto/16 :goto_6
.end method

.method public static highlightTermsInHtml(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/StringBuffer;
    .param p1, "query"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 638
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->highlightTerms(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 641
    :goto_0
    return-object v1

    .line 639
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static highlightTermsInText(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/StringBuffer;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 655
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->highlightTerms(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 658
    .end local p0    # "text":Ljava/lang/StringBuffer;
    :goto_0
    return-object p0

    .line 656
    .restart local p0    # "text":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static makeSnippetFromHtmlText(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/StringBuffer;

    .prologue
    .line 331
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->makeSnippetFromText(Ljava/lang/StringBuffer;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSnippetFromPlainText(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/StringBuffer;

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->makeSnippetFromText(Ljava/lang/StringBuffer;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSnippetFromText(Ljava/lang/StringBuffer;Z)Ljava/lang/String;
    .locals 39
    .param p0, "text"    # Ljava/lang/StringBuffer;
    .param p1, "stripHtml"    # Z

    .prologue
    .line 436
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_0

    const-string/jumbo v37, ""

    .line 577
    :goto_0
    return-object v37

    .line 438
    :cond_0
    const-string/jumbo v33, "<w:WordDocument>"

    .line 439
    .local v33, "wordBegin":Ljava/lang/String;
    const-string/jumbo v35, "</w:WordDocument>"

    .line 440
    .local v35, "wordEnd":Ljava/lang/String;
    const/16 v34, 0x0

    .line 441
    .local v34, "wordBeginPos":I
    const/16 v36, 0x0

    .line 442
    .local v36, "wordEndPos":I
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v10

    .line 446
    .local v10, "endLength":I
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v34

    const/16 v37, -0x1

    move/from16 v0, v34

    move/from16 v1, v37

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v36

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1

    move/from16 v0, v36

    move/from16 v1, v34

    if-le v0, v1, :cond_1

    .line 447
    add-int v37, v36, v10

    const-string/jumbo v38, ""

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    goto :goto_1

    .line 450
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    .line 452
    .local v18, "length":I
    const/16 v37, 0xc8

    move/from16 v0, v37

    new-array v5, v0, [C

    .line 457
    .local v5, "buffer":[C
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 458
    .local v28, "skipCount":[I
    const/4 v6, 0x0

    .line 460
    .local v6, "bufferCount":I
    const/16 v16, 0x20

    .line 462
    .local v16, "last":C
    const/4 v14, 0x0

    .line 465
    .local v14, "inTag":Z
    const/4 v12, 0x0

    .local v12, "i":I
    move v7, v6

    .end local v6    # "bufferCount":I
    .local v7, "bufferCount":I
    :goto_2
    move/from16 v0, v18

    if-ge v12, v0, :cond_4

    const/16 v37, 0xc8

    move/from16 v0, v37

    if-ge v7, v0, :cond_4

    .line 466
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    .line 467
    .local v8, "c":C
    if-eqz p1, :cond_c

    if-nez v14, :cond_c

    const/16 v37, 0x3c

    move/from16 v0, v37

    if-ne v8, v0, :cond_c

    .line 469
    add-int/lit8 v37, v18, -0x1

    move/from16 v0, v37

    if-ge v12, v0, :cond_d

    .line 470
    add-int/lit8 v37, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v21

    .line 471
    .local v21, "peek":C
    const/16 v37, 0x21

    move/from16 v0, v21

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    const/16 v37, 0x2d

    move/from16 v0, v21

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    const/16 v37, 0x2f

    move/from16 v0, v21

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetter(C)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 472
    :cond_2
    const/4 v14, 0x1

    .line 474
    add-int/lit8 v37, v18, -0x8

    move/from16 v0, v37

    if-ge v12, v0, :cond_d

    .line 475
    add-int/lit8 v37, v12, 0x1

    add-int/lit8 v38, v12, 0x6

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 476
    .local v31, "tag":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    .line 477
    .local v32, "tagLowerCase":Ljava/lang/String;
    const/16 v29, 0x0

    .line 480
    .local v29, "stripContent":Z
    sget-object v4, Lcom/kingsoft/emailcommon/utility/TextUtilities;->STRIP_TAGS:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    aget-object v30, v4, v13

    .line 481
    .local v30, "stripTag":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_5

    .line 482
    const/16 v29, 0x1

    .line 483
    const/16 v37, 0x0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v38

    move-object/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 487
    .end local v30    # "stripTag":Ljava/lang/String;
    :cond_3
    if-eqz v29, :cond_7

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1, v12}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->findTagEnd(Ljava/lang/StringBuffer;Ljava/lang/String;I)I

    move-result v11

    .line 490
    .local v11, "endTagPosition":I
    if-gez v11, :cond_6

    .line 574
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "c":C
    .end local v11    # "endTagPosition":I
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "peek":C
    .end local v29    # "stripContent":Z
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "tagLowerCase":Ljava/lang/String;
    :cond_4
    if-lez v7, :cond_15

    const/16 v37, 0x20

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    .line 575
    add-int/lit8 v6, v7, -0x1

    .line 577
    .end local v7    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    :goto_4
    new-instance v37, Ljava/lang/String;

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v0, v5, v1, v6}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 480
    .end local v6    # "bufferCount":I
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "bufferCount":I
    .restart local v8    # "c":C
    .restart local v13    # "i$":I
    .restart local v17    # "len$":I
    .restart local v21    # "peek":C
    .restart local v29    # "stripContent":Z
    .restart local v30    # "stripTag":Ljava/lang/String;
    .restart local v31    # "tag":Ljava/lang/String;
    .restart local v32    # "tagLowerCase":Ljava/lang/String;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 493
    .end local v30    # "stripTag":Ljava/lang/String;
    .restart local v11    # "endTagPosition":I
    :cond_6
    move v12, v11

    .line 498
    .end local v11    # "endTagPosition":I
    :cond_7
    sget-object v4, Lcom/kingsoft/emailcommon/utility/TextUtilities;->FILTER_ITEMS:[Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;

    .local v4, "arr$":[Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;
    array-length v0, v4

    move/from16 v17, v0

    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    aget-object v15, v4, v13

    .line 499
    .local v15, "item":Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;
    iget-object v0, v15, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mTag:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 500
    add-int/lit8 v37, v12, 0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v38

    add-int v23, v37, v38

    .line 501
    .local v23, "peekIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v22

    .line 502
    .local v22, "peekCh":C
    new-instance v27, Ljava/lang/StringBuilder;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "<"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v27, "sb":Ljava/lang/StringBuilder;
    move/from16 v24, v23

    .line 503
    .end local v23    # "peekIndex":I
    .local v24, "peekIndex":I
    :goto_6
    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    const/16 v37, 0x3e

    move/from16 v0, v22

    move/from16 v1, v37

    if-eq v0, v1, :cond_8

    .line 504
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "peekIndex":I
    .restart local v23    # "peekIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v22

    .line 505
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v24, v23

    .end local v23    # "peekIndex":I
    .restart local v24    # "peekIndex":I
    goto :goto_6

    .line 508
    :cond_8
    iget-object v0, v15, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mReg:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 509
    .local v26, "reg":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 510
    .local v20, "p":Ljava/util/regex/Pattern;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 511
    .local v19, "m":Ljava/util/regex/Matcher;
    const/16 v25, -0x1

    .line 512
    .local v25, "pos":I
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v37

    if-eqz v37, :cond_a

    .line 513
    const/16 v37, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 514
    .local v9, "clz":Ljava/lang/String;
    iget-object v0, v15, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mAttrValue:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_9

    .line 515
    const/16 v29, 0x1

    .line 516
    iget-object v0, v15, Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;->mTag:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 517
    add-int/lit8 v37, v12, 0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v38

    add-int v37, v37, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->findMatchedTag(Ljava/lang/StringBuffer;Ljava/lang/String;I)I

    move-result v25

    .line 519
    if-gez v25, :cond_b

    .line 521
    move/from16 v12, v18

    .line 498
    .end local v9    # "clz":Ljava/lang/String;
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "p":Ljava/util/regex/Pattern;
    .end local v22    # "peekCh":C
    .end local v24    # "peekIndex":I
    .end local v25    # "pos":I
    .end local v26    # "reg":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 524
    .restart local v9    # "clz":Ljava/lang/String;
    .restart local v19    # "m":Ljava/util/regex/Matcher;
    .restart local v20    # "p":Ljava/util/regex/Pattern;
    .restart local v22    # "peekCh":C
    .restart local v24    # "peekIndex":I
    .restart local v25    # "pos":I
    .restart local v26    # "reg":Ljava/lang/String;
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    move/from16 v12, v25

    .line 527
    goto :goto_7

    .line 536
    .end local v4    # "arr$":[Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;
    .end local v9    # "clz":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "item":Lcom/kingsoft/emailcommon/utility/TextUtilities$FilterItem;
    .end local v17    # "len$":I
    .end local v19    # "m":Ljava/util/regex/Matcher;
    .end local v20    # "p":Ljava/util/regex/Pattern;
    .end local v21    # "peek":C
    .end local v22    # "peekCh":C
    .end local v24    # "peekIndex":I
    .end local v25    # "pos":I
    .end local v26    # "reg":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v29    # "stripContent":Z
    .end local v31    # "tag":Ljava/lang/String;
    .end local v32    # "tagLowerCase":Ljava/lang/String;
    :cond_c
    if-eqz p1, :cond_d

    if-eqz v14, :cond_d

    const/16 v37, 0x3e

    move/from16 v0, v37

    if-ne v8, v0, :cond_d

    .line 538
    const/4 v14, 0x0

    move v6, v7

    .line 465
    .end local v7    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move v7, v6

    .end local v6    # "bufferCount":I
    .restart local v7    # "bufferCount":I
    goto/16 :goto_2

    .line 542
    :cond_d
    if-eqz v14, :cond_e

    move v6, v7

    .line 544
    .end local v7    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    goto :goto_8

    .line 545
    .end local v6    # "bufferCount":I
    .restart local v7    # "bufferCount":I
    :cond_e
    if-eqz p1, :cond_f

    const/16 v37, 0x26

    move/from16 v0, v37

    if-ne v8, v0, :cond_f

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v12, v1}, Lcom/kingsoft/emailcommon/utility/TextUtilities;->stripHtmlEntity(Ljava/lang/StringBuffer;I[I)C

    move-result v8

    .line 550
    const/16 v37, 0x0

    aget v37, v28, v37

    add-int v12, v12, v37

    .line 553
    :cond_f
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v37

    if-nez v37, :cond_10

    const/16 v37, 0xa0

    move/from16 v0, v37

    if-ne v8, v0, :cond_13

    .line 556
    :cond_10
    const/16 v37, 0x20

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_11

    move v6, v7

    .line 557
    .end local v7    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    goto :goto_8

    .line 560
    .end local v6    # "bufferCount":I
    .restart local v7    # "bufferCount":I
    :cond_11
    const/16 v8, 0x20

    .line 569
    :cond_12
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    aput-char v8, v5, v7

    .line 570
    move/from16 v16, v8

    goto :goto_8

    .line 562
    .end local v6    # "bufferCount":I
    .restart local v7    # "bufferCount":I
    :cond_13
    const/16 v37, 0x2d

    move/from16 v0, v37

    if-eq v8, v0, :cond_14

    const/16 v37, 0x3d

    move/from16 v0, v37

    if-ne v8, v0, :cond_12

    :cond_14
    move/from16 v0, v16

    if-ne v0, v8, :cond_12

    move v6, v7

    .line 565
    .end local v7    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    goto :goto_8

    .end local v6    # "bufferCount":I
    .end local v8    # "c":C
    .restart local v7    # "bufferCount":I
    :cond_15
    move v6, v7

    .end local v7    # "bufferCount":I
    .restart local v6    # "bufferCount":I
    goto/16 :goto_4
.end method

.method public static stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 844
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    .line 845
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static stripHtmlEntity(Ljava/lang/StringBuffer;I[I)C
    .locals 12
    .param p0, "text"    # Ljava/lang/StringBuffer;
    .param p1, "pos"    # I
    .param p2, "skipCount"    # [I

    .prologue
    const/16 v0, 0x26

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 581
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 584
    .local v5, "length":I
    aput v9, p2, v9

    .line 586
    add-int/lit8 v1, p1, 0xa

    .line 587
    .local v1, "end":I
    const/4 v2, 0x0

    .line 589
    .local v2, "entity":Ljava/lang/String;
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    if-ge v4, v1, :cond_0

    .line 590
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_2

    .line 591
    invoke-virtual {p0, p1, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 595
    :cond_0
    if-nez v2, :cond_3

    .line 624
    :cond_1
    :goto_1
    return v0

    .line 589
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 600
    :cond_3
    sget-object v7, Lcom/kingsoft/emailcommon/utility/TextUtilities;->ESCAPE_STRINGS:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    .line 601
    .local v6, "mapping":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 602
    .local v3, "entityLength":I
    if-eqz v6, :cond_4

    .line 603
    aput v3, p2, v9

    .line 604
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_1

    .line 605
    :cond_4
    if-le v3, v10, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_1

    .line 607
    const/16 v0, 0x3f

    .line 610
    .local v0, "c":C
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_5

    if-le v3, v11, :cond_5

    .line 611
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 615
    :goto_2
    int-to-char v0, v4

    .line 619
    :goto_3
    aput v3, p2, v9

    goto :goto_1

    .line 613
    :cond_5
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_2

    .line 616
    :catch_0
    move-exception v7

    goto :goto_3
.end method
