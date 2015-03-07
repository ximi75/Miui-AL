.class public Lcom/google/android/mail/common/html/parser/HtmlParser;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/html/parser/HtmlParser$1;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;,
        Lcom/google/android/mail/common/html/parser/HtmlParser$State;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final DEFAULT_WHITELIST:Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_HTTP_EQUIV_VALUE_REFRESH:Ljava/lang/String; = "refresh"

.field private static final ELIDED_TEXT_ELEMENT_ATTRIBUTE_NAME_HTTP_EQUIV:Ljava/lang/String; = "http-equiv"

.field private static final END_COMMENT:Ljava/lang/String; = "-->"

.field static NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern; = null

.field private static final START_COMMENT:Ljava/lang/String; = "<!--"

.field private static final TRUNCATED_ENTITY:Ljava/util/regex/Pattern;


# instance fields
.field private clipLength:I

.field private clipped:Z

.field private html:Ljava/lang/String;

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field

.field private final preserveAll:Z

.field private final preserveValidHtml:Z

.field private state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

.field private final unknownAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mail/common/html/parser/HTML$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownElements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private whitelists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlWhitelist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    .line 68
    invoke-static {}, Lcom/google/android/mail/common/html/parser/HTML4;->getWhitelist()Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    .line 188
    const-string/jumbo v0, "[\"\'&<>=\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

    .line 327
    const-string/jumbo v0, "\\& \\#? [0-9a-zA-Z]{0,8} $"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->TRUNCATED_ENTITY:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->NORMALIZE:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>(Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;)V
    .locals 4
    .param p1, "parseStyle"    # Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    .line 71
    new-array v0, v1, [Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    sget-object v3, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEFAULT_WHITELIST:Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    .line 610
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    .line 616
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    .line 124
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->PRESERVE_ALL:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    .line 125
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->PRESERVE_VALID:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    .line 126
    return-void

    :cond_2
    move v0, v2

    .line 124
    goto :goto_0
.end method

.method private addAttribute(Ljava/util/ArrayList;Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;II)V
    .locals 10
    .param p2, "scanner"    # Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    if-ge p3, p4, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 985
    invoke-virtual {p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->getName()Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 987
    invoke-virtual {p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v0

    .line 990
    .local v0, "htmlAttribute":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    invoke-virtual {p2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 997
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "http-equiv"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "refresh"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 999
    const-string/jumbo v6, ""

    .line 1002
    :cond_0
    if-nez v0, :cond_5

    .line 1004
    sget-boolean v7, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1005
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown attribute: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->debug(Ljava/lang/String;)V

    .line 1007
    :cond_1
    iget-boolean v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v7, :cond_2

    .line 1008
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, "original":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupUnknownAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v7

    invoke-static {v7, v6, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    .end local v3    # "original":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 983
    .end local v0    # "htmlAttribute":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 986
    .restart local v1    # "name":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 1013
    .restart local v0    # "htmlAttribute":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    const/4 v5, 0x0

    .line 1014
    .local v5, "unescapedValue":Ljava/lang/String;
    :goto_3
    iget-boolean v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v7, :cond_7

    .line 1015
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1013
    .end local v5    # "unescapedValue":Ljava/lang/String;
    :cond_6
    invoke-static {v6}, Lcom/google/android/mail/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1017
    .restart local v5    # "unescapedValue":Ljava/lang/String;
    :cond_7
    iget-boolean v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v7, :cond_10

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .local v3, "original":Ljava/lang/StringBuilder;
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    if-gt p3, v7, :cond_9

    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1025
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    invoke-virtual {v7, p3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\S+"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1027
    .local v4, "originalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    .line 1028
    const-string/jumbo v4, " "

    .line 1030
    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    if-nez v6, :cond_b

    .line 1035
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    if-ge v7, p4, :cond_a

    const/4 v7, 0x1

    :goto_5
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1036
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startNamePos:I

    invoke-virtual {v7, v8, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "nameEtc":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .end local v2    # "nameEtc":Ljava/lang/String;
    :goto_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1024
    .end local v4    # "originalPrefix":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 1035
    .restart local v4    # "originalPrefix":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 1041
    :cond_b
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    if-ge v7, v8, :cond_c

    const/4 v7, 0x1

    :goto_7
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1047
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endNamePos:I

    iget v9, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->startValuePos:I

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    iget-boolean v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->attrValueIsQuoted:Z

    if-eqz v7, :cond_d

    .line 1053
    const-string/jumbo v7, "<"

    const-string/jumbo v8, "&lt;"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    :goto_8
    iget v7, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    if-gt v7, p4, :cond_f

    const/4 v7, 0x1

    :goto_9
    invoke-static {v7}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1068
    iget-object v7, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    iget v8, p2, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->endValuePos:I

    invoke-virtual {v7, v8, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1046
    :cond_c
    const/4 v7, 0x0

    goto :goto_7

    .line 1057
    :cond_d
    sget-object v7, Lcom/google/android/mail/common/html/parser/HtmlParser;->NEEDS_QUOTING_ATTRIBUTE_VALUE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1058
    const/16 v7, 0x22

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    const-string/jumbo v7, "\""

    const-string/jumbo v8, "&quot;"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const/16 v7, 0x22

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1062
    :cond_e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1067
    :cond_f
    const/4 v7, 0x0

    goto :goto_9

    .line 1074
    .end local v3    # "original":Ljava/lang/StringBuilder;
    .end local v4    # "originalPrefix":Ljava/lang/String;
    :cond_10
    invoke-static {v0, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTagAttribute(Lcom/google/android/mail/common/html/parser/HTML$Attribute;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private addEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V
    .locals 9
    .param p1, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;
    .param p2, "startPos"    # I
    .param p3, "startAttributesPos"    # I
    .param p4, "endPos"    # I

    .prologue
    const/16 v8, 0x3e

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 930
    if-eqz p1, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 931
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 932
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2f

    if-ne v4, v7, :cond_2

    move v4, v5

    :goto_2
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 934
    iget-boolean v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v4, :cond_4

    .line 936
    if-ge p2, p4, :cond_3

    :goto_3
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 937
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v4, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "content":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v0    # "content":Ljava/lang/String;
    :goto_4
    return-void

    :cond_0
    move v4, v6

    .line 930
    goto :goto_0

    :cond_1
    move v4, v6

    .line 931
    goto :goto_1

    :cond_2
    move v4, v6

    .line 932
    goto :goto_2

    :cond_3
    move v5, v6

    .line 936
    goto :goto_3

    .line 939
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v4, :cond_8

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    .local v3, "validContent":Ljava/lang/StringBuilder;
    if-ge p2, p3, :cond_6

    move v4, v5

    :goto_5
    invoke-static {v4}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 949
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "tagName":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    if-gt p3, p4, :cond_7

    :goto_6
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 955
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v4, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "endOfTag":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_5

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    :cond_5
    const-string/jumbo v4, "\\S+.*>"

    const-string/jumbo v5, ">"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v1    # "endOfTag":Ljava/lang/String;
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_6
    move v4, v6

    .line 948
    goto :goto_5

    .restart local v2    # "tagName":Ljava/lang/String;
    :cond_7
    move v5, v6

    .line 954
    goto :goto_6

    .line 966
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "validContent":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v4, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;)Lcom/google/android/mail/common/html/parser/HtmlDocument$EndTag;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private addStartTag(Lcom/google/android/mail/common/html/parser/HTML$Element;IIIIZLjava/util/ArrayList;)V
    .locals 7
    .param p1, "element"    # Lcom/google/android/mail/common/html/parser/HTML$Element;
    .param p2, "startPos"    # I
    .param p3, "startAttributesPos"    # I
    .param p4, "endAttributesPos"    # I
    .param p5, "endPos"    # I
    .param p6, "isSingleTag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            "IIIIZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p7, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    if-ge p2, p3, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 867
    if-gt p3, p4, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 868
    if-gt p4, p5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 870
    iget-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v5, :cond_4

    .line 871
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "beforeAttrs":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "afterAttrs":Ljava/lang/String;
    if-eqz p6, :cond_3

    invoke-static {p1, p7, v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    .line 878
    .local v3, "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_3
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    .end local v0    # "afterAttrs":Ljava/lang/String;
    .end local v1    # "beforeAttrs":Ljava/lang/String;
    :goto_4
    return-void

    .line 866
    .end local v3    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 867
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 868
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 873
    .restart local v0    # "afterAttrs":Ljava/lang/String;
    .restart local v1    # "beforeAttrs":Ljava/lang/String;
    :cond_3
    invoke-static {p1, p7, v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    goto :goto_3

    .line 879
    .end local v0    # "afterAttrs":Ljava/lang/String;
    .end local v1    # "beforeAttrs":Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v5, :cond_c

    .line 884
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    .local v1, "beforeAttrs":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 887
    .local v4, "tagName":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/mail/common/base/CharEscapers;->asciiHtmlEscaper()Lcom/google/android/mail/common/base/CharEscaper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/mail/common/base/CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    add-int/lit8 v2, p5, -0x1

    .line 891
    .local v2, "endContentPos":I
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 892
    if-eqz p6, :cond_5

    .line 893
    add-int/lit8 v2, v2, -0x1

    .line 894
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    :goto_7
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 896
    :cond_5
    if-gt p4, v2, :cond_9

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 900
    if-ge p4, p5, :cond_a

    const/4 v5, 0x1

    :goto_9
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 901
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v5, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 904
    .restart local v0    # "afterAttrs":Ljava/lang/String;
    if-eqz p6, :cond_b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p7, v5, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    .line 909
    .restart local v3    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_a
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 884
    .end local v0    # "afterAttrs":Ljava/lang/String;
    .end local v1    # "beforeAttrs":Ljava/lang/StringBuilder;
    .end local v2    # "endContentPos":I
    .end local v3    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 891
    .restart local v1    # "beforeAttrs":Ljava/lang/StringBuilder;
    .restart local v2    # "endContentPos":I
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    .line 894
    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    .line 896
    :cond_9
    const/4 v5, 0x0

    goto :goto_8

    .line 900
    :cond_a
    const/4 v5, 0x0

    goto :goto_9

    .line 904
    .restart local v0    # "afterAttrs":Ljava/lang/String;
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p7, v5, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    goto :goto_a

    .line 912
    .end local v0    # "afterAttrs":Ljava/lang/String;
    .end local v1    # "beforeAttrs":Ljava/lang/StringBuilder;
    .end local v2    # "endContentPos":I
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_c
    if-eqz p6, :cond_d

    invoke-static {p1, p7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createSelfTerminatingTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    .line 915
    .restart local v3    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :goto_b
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 912
    .end local v3    # "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    :cond_d
    invoke-static {p1, p7}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v3

    goto :goto_b
.end method

.method static coalesceTextNodes(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 271
    .local v3, "textNodes":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;

    .line 272
    .local v1, "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    instance-of v4, v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    if-eqz v4, :cond_0

    .line 273
    check-cast v1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .end local v1    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    .restart local v1    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-static {v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->mergeTextNodes(Ljava/util/LinkedList;Ljava/util/List;)V

    .line 276
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v1    # "node":Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;
    :cond_1
    invoke-static {v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->mergeTextNodes(Ljava/util/LinkedList;Ljava/util/List;)V

    .line 280
    return-object v2
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1156
    return-void
.end method

.method private lookupUnknownAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 645
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 646
    .local v0, "result":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    if-nez v0, :cond_0

    .line 647
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .end local v0    # "result":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;I)V

    .line 648
    .restart local v0    # "result":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownAttributes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_0
    return-object v0
.end method

.method private lookupUnknownElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 625
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 626
    .local v0, "result":Lcom/google/android/mail/common/html/parser/HTML$Element;
    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    .end local v0    # "result":Lcom/google/android/mail/common/html/parser/HTML$Element;
    const/4 v4, 0x1

    sget-object v6, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->NONE:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HTML$Element;-><init>(Ljava/lang/String;IZZZLcom/google/android/mail/common/html/parser/HTML$Element$Flow;)V

    .line 633
    .restart local v0    # "result":Lcom/google/android/mail/common/html/parser/HTML$Element;
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->unknownElements:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    .line 1148
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1150
    .local v1, "html":Ljava/lang/String;
    new-instance v2, Lcom/google/android/mail/common/html/parser/HtmlParser;

    invoke-direct {v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>()V

    .line 1151
    .local v2, "parser":Lcom/google/android/mail/common/html/parser/HtmlParser;
    invoke-virtual {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->parse(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument;

    move-result-object v0

    .line 1152
    .local v0, "doc":Lcom/google/android/mail/common/html/parser/HtmlDocument;
    return-void
.end method

.method private static mergeTextNodes(Ljava/util/LinkedList;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "textNodes":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;>;"
    .local p1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/mail/common/html/parser/HtmlDocument$Node;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 295
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const/4 v3, 0x0

    .line 298
    .local v3, "combinedTextLen":I
    const/4 v1, 0x0

    .line 299
    .local v1, "combinedInputLen":I
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 300
    .local v6, "text":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 301
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 302
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_1

    .line 305
    .end local v6    # "text":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 306
    .local v2, "combinedText":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 307
    .local v0, "combinedInput":Ljava/lang/StringBuilder;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 308
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    .line 309
    .restart local v6    # "text":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 311
    invoke-virtual {v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;->getOriginalHTML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 314
    .end local v6    # "text":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_5
    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "originalInput":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    .end local v5    # "originalInput":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private scanComment(II)I
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, -0x1

    .line 1088
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    const-string/jumbo v2, "<!--"

    const/4 v3, 0x0

    const-string/jumbo v4, "<!--"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1091
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    const-string/jumbo v2, "-->"

    const-string/jumbo v3, "<!--"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1092
    .local v0, "pos":I
    if-eq v0, v5, :cond_1

    .line 1093
    const-string/jumbo v1, "-->"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1104
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v1, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createHtmlComment(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Comment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_0
    return v0

    .line 1096
    :cond_1
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    const/16 v2, 0x3e

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1097
    if-eq v0, v5, :cond_2

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1100
    :cond_2
    move v0, p2

    goto :goto_0
.end method


# virtual methods
.method public addWhitelist(Lcom/google/android/mail/common/html/parser/HtmlWhitelist;)V
    .locals 1
    .param p1, "whitelist"    # Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public isClipped()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipped:Z

    return v0
.end method

.method lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 841
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 842
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/android/mail/common/html/parser/HtmlWhitelist;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    invoke-interface {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;->lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v0

    .line 844
    .local v0, "attr":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    if-eqz v0, :cond_0

    .line 848
    .end local v0    # "attr":Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 822
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 823
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/android/mail/common/html/parser/HtmlWhitelist;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    invoke-interface {v2, p1}, Lcom/google/android/mail/common/html/parser/HtmlWhitelist;->lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 825
    .local v0, "elem":Lcom/google/android/mail/common/html/parser/HTML$Element;
    if-eqz v0, :cond_0

    .line 829
    .end local v0    # "elem":Lcom/google/android/mail/common/html/parser/HTML$Element;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument;
    .locals 9
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 201
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    .line 205
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 207
    iput-boolean v6, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipped:Z

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 209
    .local v2, "end":I
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    .local v0, "clipEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    iget-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipped:Z

    if-nez v5, :cond_7

    .line 215
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlParser$1;->$SwitchMap$com$google$android$mail$common$html$parser$HtmlParser$State:[I

    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    invoke-virtual {v8}, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 239
    new-instance v5, Ljava/lang/Error;

    const-string/jumbo v6, "Unknown state!"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    :pswitch_0
    invoke-virtual {p0, v3, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanText(II)I

    move-result v4

    .line 219
    .local v4, "pos":I
    if-gt v4, v3, :cond_0

    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    if-eq v5, v8, :cond_1

    :cond_0
    move v5, v7

    :goto_1
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 242
    :goto_2
    move v3, v4

    .line 245
    iget v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    if-lt v4, v5, :cond_6

    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipped:Z

    goto :goto_0

    :cond_1
    move v5, v6

    .line 219
    goto :goto_1

    .line 223
    .end local v4    # "pos":I
    :pswitch_1
    invoke-virtual {p0, v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanTag(II)I

    move-result v4

    .line 224
    .restart local v4    # "pos":I
    if-le v4, v3, :cond_2

    move v5, v7

    :goto_4
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_4

    .line 228
    .end local v4    # "pos":I
    :pswitch_2
    invoke-direct {p0, v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanComment(II)I

    move-result v4

    .line 229
    .restart local v4    # "pos":I
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 230
    if-le v4, v3, :cond_3

    move v5, v7

    :goto_5
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_5

    .line 234
    .end local v4    # "pos":I
    :pswitch_3
    invoke-virtual {p0, v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->scanCDATA(II)I

    move-result v4

    .line 235
    .restart local v4    # "pos":I
    if-gt v4, v3, :cond_4

    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_CDATA:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    if-eq v5, v8, :cond_5

    :cond_4
    move v5, v7

    :goto_6
    invoke-static {v5}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_6

    :cond_6
    move v5, v6

    .line 245
    goto :goto_3

    .line 248
    .end local v4    # "pos":I
    :cond_7
    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/mail/common/html/parser/HtmlParser;->coalesceTextNodes(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    .line 250
    new-instance v1, Lcom/google/android/mail/common/html/parser/HtmlDocument;

    iget-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-direct {v1, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;-><init>(Ljava/util/List;)V

    .line 251
    .local v1, "doc":Lcom/google/android/mail/common/html/parser/HtmlDocument;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    .line 252
    const/4 p1, 0x0

    .line 253
    return-object v1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method scanCDATA(II)I
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1117
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 1118
    .local v9, "tag":Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;
    invoke-virtual {v9}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->getElement()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v7

    .line 1119
    .local v7, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->SCRIPT_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 1122
    move v8, p1

    .local v8, "pos":I
    :goto_1
    if-ge v8, p2, :cond_1

    .line 1123
    add-int/lit8 v0, v8, 0x2

    if-ge v0, p2, :cond_4

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1133
    :cond_1
    if-le v8, p1, :cond_2

    .line 1134
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v0, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createCDATA(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;

    move-result-object v6

    .line 1136
    .local v6, "cdata":Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    .end local v6    # "cdata":Lcom/google/android/mail/common/html/parser/HtmlDocument$CDATA;
    :cond_2
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TAG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 1140
    return v8

    .end local v8    # "pos":I
    :cond_3
    move v0, v4

    .line 1119
    goto :goto_0

    .line 1122
    .restart local v8    # "pos":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method scanTag(II)I
    .locals 21
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3c

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 665
    add-int/lit8 v13, p1, 0x1

    .line 669
    .local v13, "nameStart":I
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 672
    const/4 v12, 0x0

    .line 673
    .local v12, "isEndTag":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_0

    .line 674
    const/4 v12, 0x1

    .line 675
    add-int/lit8 v13, v13, 0x1

    .line 679
    :cond_0
    new-instance v17, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;-><init>(Ljava/lang/String;)V

    .line 680
    .local v17, "tagNameScanner":Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->scanName(II)I

    move-result v7

    .line 681
    .local v7, "pos":I
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;->getTagName()Ljava/lang/String;

    move-result-object v16

    .line 682
    .local v16, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 683
    .local v3, "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    if-nez v16, :cond_7

    .line 687
    if-nez v12, :cond_3

    .line 689
    const-string/jumbo v4, "<"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "<"

    :goto_1
    invoke-static {v4, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v18

    .line 690
    .local v18, "text":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 810
    .end local v13    # "nameStart":I
    .end local v18    # "text":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :goto_2
    return v13

    .line 661
    .end local v3    # "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .end local v7    # "pos":I
    .end local v12    # "isEndTag":Z
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "tagNameScanner":Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 689
    .restart local v3    # "element":Lcom/google/android/mail/common/html/parser/HTML$Element;
    .restart local v7    # "pos":I
    .restart local v12    # "isEndTag":Z
    .restart local v13    # "nameStart":I
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "tagNameScanner":Lcom/google/android/mail/common/html/parser/HtmlParser$TagNameScanner;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 695
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v2, :cond_4

    .line 696
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupUnknownElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    .line 712
    :cond_4
    :goto_3
    const/4 v8, 0x0

    .line 713
    .local v8, "isSingleTag":Z
    const/4 v9, 0x0

    .line 714
    .local v9, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    move v5, v7

    .line 715
    .local v5, "allAttributesStartPos":I
    move v6, v7

    .line 716
    .local v6, "nextAttributeStartPos":I
    new-instance v10, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-direct {v10, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;-><init>(Ljava/lang/String;)V

    .line 717
    .local v10, "attributeScanner":Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
    :goto_4
    move/from16 v0, p2

    if-ge v7, v0, :cond_5

    .line 718
    move v15, v7

    .line 719
    .local v15, "startPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 722
    .local v11, "ch":C
    add-int/lit8 v2, v7, 0x1

    move/from16 v0, p2

    if-ge v2, v0, :cond_9

    const/16 v2, 0x2f

    if-ne v11, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3e

    if-ne v2, v4, :cond_9

    .line 723
    const/4 v8, 0x1

    .line 724
    add-int/lit8 v7, v7, 0x1

    .line 772
    .end local v11    # "ch":C
    .end local v15    # "startPos":I
    :cond_5
    move/from16 v0, p2

    if-ne v7, v0, :cond_14

    .line 773
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_12

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 775
    .local v19, "textNodeContent":Ljava/lang/String;
    const/4 v14, 0x0

    .line 776
    .local v14, "originalContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v2, :cond_13

    .line 777
    move-object/from16 v14, v19

    .line 784
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEscapedText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v13, p2

    .line 785
    goto :goto_2

    .line 699
    .end local v5    # "allAttributesStartPos":I
    .end local v6    # "nextAttributeStartPos":I
    .end local v8    # "isSingleTag":Z
    .end local v9    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .end local v10    # "attributeScanner":Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
    .end local v14    # "originalContent":Ljava/lang/String;
    .end local v19    # "textNodeContent":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    .line 700
    if-nez v3, :cond_4

    .line 701
    sget-boolean v2, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->debug(Ljava/lang/String;)V

    .line 705
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v2, :cond_4

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->lookupUnknownElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v3

    goto/16 :goto_3

    .line 727
    .restart local v5    # "allAttributesStartPos":I
    .restart local v6    # "nextAttributeStartPos":I
    .restart local v8    # "isSingleTag":Z
    .restart local v9    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    .restart local v10    # "attributeScanner":Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;
    .restart local v11    # "ch":C
    .restart local v15    # "startPos":I
    :cond_9
    const/16 v2, 0x3e

    if-eq v11, v2, :cond_5

    .line 732
    if-eqz v12, :cond_b

    const/16 v2, 0x3c

    if-ne v2, v11, :cond_b

    .line 736
    if-eqz v3, :cond_a

    .line 737
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V

    .line 739
    :cond_a
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TEXT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move v13, v7

    .line 740
    goto/16 :goto_2

    .line 743
    :cond_b
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 745
    add-int/lit8 v7, v7, 0x1

    .line 768
    :cond_c
    :goto_7
    if-le v7, v15, :cond_11

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    goto/16 :goto_4

    .line 748
    :cond_d
    invoke-virtual {v10}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->reset()V

    .line 749
    move/from16 v0, p2

    invoke-virtual {v10, v7, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->scanName(II)I

    move-result v7

    .line 750
    if-le v7, v15, :cond_10

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 753
    invoke-virtual {v10}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 754
    move/from16 v0, p2

    invoke-virtual {v10, v7, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;->scanValue(II)I

    move-result v7

    .line 757
    if-eqz v3, :cond_f

    .line 758
    if-nez v9, :cond_e

    .line 759
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .restart local v9    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mail/common/html/parser/HtmlDocument$TagAttribute;>;"
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v6, v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addAttribute(Ljava/util/ArrayList;Lcom/google/android/mail/common/html/parser/HtmlParser$AttributeScanner;II)V

    .line 763
    :cond_f
    move v6, v7

    goto :goto_7

    .line 750
    :cond_10
    const/4 v2, 0x0

    goto :goto_9

    .line 768
    :cond_11
    const/4 v2, 0x0

    goto :goto_8

    .line 773
    .end local v11    # "ch":C
    .end local v15    # "startPos":I
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 778
    .restart local v14    # "originalContent":Ljava/lang/String;
    .restart local v19    # "textNodeContent":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v2, :cond_6

    .line 781
    const/16 v2, 0x3c

    invoke-static {v2}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "&lt;"

    move-object/from16 v0, v20

    invoke-virtual {v2, v4, v0}, Lcom/google/android/mail/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_6

    .line 789
    .end local v14    # "originalContent":Ljava/lang/String;
    .end local v19    # "textNodeContent":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3e

    if-ne v2, v4, :cond_16

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Lcom/google/android/mail/common/base/X;->assertTrue(Z)V

    .line 790
    add-int/lit8 v7, v7, 0x1

    .line 794
    if-eqz v3, :cond_15

    .line 795
    if-eqz v12, :cond_17

    .line 796
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1, v5, v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addEndTag(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V

    :cond_15
    :goto_b
    move v13, v7

    .line 810
    goto/16 :goto_2

    .line 789
    :cond_16
    const/4 v2, 0x0

    goto :goto_a

    .line 800
    :cond_17
    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->SCRIPT_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v2, v3}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/google/android/mail/common/html/parser/HTML4;->STYLE_ELEMENT:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v2, v3}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 801
    :cond_18
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_CDATA:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    :cond_19
    move-object/from16 v2, p0

    move/from16 v4, p1

    .line 804
    invoke-direct/range {v2 .. v9}, Lcom/google/android/mail/common/html/parser/HtmlParser;->addStartTag(Lcom/google/android/mail/common/html/parser/HTML$Element;IIIIZLjava/util/ArrayList;)V

    goto :goto_b
.end method

.method scanText(II)I
    .locals 13
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 339
    move v6, p1

    .local v6, "pos":I
    :goto_0
    if-ge v6, p2, :cond_1

    .line 340
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 341
    .local v0, "ch":C
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    if-ge v8, p2, :cond_6

    .line 343
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    const/16 v8, 0x2f

    if-eq v0, v8, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x21

    if-eq v0, v8, :cond_0

    const/16 v8, 0x3f

    if-ne v0, v8, :cond_6

    .line 347
    :cond_0
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    const-string/jumbo v10, "!--"

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 348
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_COMMENT:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    iput-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 357
    .end local v0    # "ch":C
    :cond_1
    :goto_1
    if-le v6, p1, :cond_4

    .line 358
    move v1, v6

    .line 359
    .local v1, "finalPos":I
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v8, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "htmlTail":Ljava/lang/String;
    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    if-ne v6, v8, :cond_2

    iget v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    iget-object v9, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->html:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 368
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser;->TRUNCATED_ENTITY:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 369
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 370
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 373
    .local v3, "matchStart":I
    add-int v1, p1, v3

    .line 374
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 378
    .end local v3    # "matchStart":I
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    if-le v1, p1, :cond_4

    .line 379
    const/4 v5, 0x0

    .line 380
    .local v5, "originalHtml":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveAll:Z

    if-eqz v8, :cond_7

    .line 381
    move-object v5, v2

    .line 392
    :cond_3
    :goto_2
    invoke-static {v2, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->createEscapedText(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;

    move-result-object v7

    .line 393
    .local v7, "textnode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    iget-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->nodes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v1    # "finalPos":I
    .end local v2    # "htmlTail":Ljava/lang/String;
    .end local v5    # "originalHtml":Ljava/lang/String;
    .end local v7    # "textnode":Lcom/google/android/mail/common/html/parser/HtmlDocument$Text;
    :cond_4
    return v6

    .line 350
    .restart local v0    # "ch":C
    :cond_5
    sget-object v8, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->IN_TAG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    iput-object v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->state:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    goto :goto_1

    .line 339
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 382
    .end local v0    # "ch":C
    .restart local v1    # "finalPos":I
    .restart local v2    # "htmlTail":Ljava/lang/String;
    .restart local v5    # "originalHtml":Ljava/lang/String;
    :cond_7
    iget-boolean v8, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->preserveValidHtml:Z

    if-eqz v8, :cond_3

    .line 389
    const/16 v8, 0x3c

    invoke-static {v8}, Lcom/google/android/mail/common/base/CharMatcher;->is(C)Lcom/google/android/mail/common/base/CharMatcher;

    move-result-object v8

    const-string/jumbo v9, "&lt;"

    invoke-virtual {v8, v2, v9}, Lcom/google/android/mail/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public setClipLength(I)V
    .locals 3
    .param p1, "clipLength"    # I

    .prologue
    .line 135
    if-gtz p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clipLength \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' <= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iput p1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->clipLength:I

    .line 140
    return-void
.end method

.method public setWhitelist(Lcom/google/android/mail/common/html/parser/HtmlWhitelist;)V
    .locals 2
    .param p1, "whitelist"    # Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    .prologue
    .line 156
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/mail/common/html/parser/HtmlWhitelist;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->whitelists:Ljava/util/List;

    .line 158
    return-void
.end method
