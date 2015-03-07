.class public Lorg/apache/tika/sax/XHTMLContentHandler;
.super Lorg/apache/tika/sax/SafeContentHandler;
.source "XHTMLContentHandler.java"


# static fields
.field private static final AUTO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

.field public static final ENDLINE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEAD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDENT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NL:[C

.field private static final TAB:[C

.field public static final XHTML:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# instance fields
.field private headEnded:Z

.field private headStarted:Z

.field private final metadata:Lorg/apache/tika/metadata/Metadata;

.field private useFrameset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-array v0, v4, [C

    const/16 v1, 0xa

    aput-char v1, v0, v3

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->NL:[C

    .line 49
    new-array v0, v4, [C

    const/16 v1, 0x9

    aput-char v1, v0, v3

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->TAB:[C

    .line 54
    new-array v0, v7, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "link"

    aput-object v1, v0, v4

    const-string/jumbo v1, "base"

    aput-object v1, v0, v5

    const-string/jumbo v1, "meta"

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->HEAD:Ljava/util/Set;

    .line 61
    new-array v0, v7, [Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "html"

    aput-object v1, v0, v3

    const-string/jumbo v1, "head"

    aput-object v1, v0, v4

    const-string/jumbo v1, "body"

    aput-object v1, v0, v5

    const-string/jumbo v1, "frameset"

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->AUTO:Ljava/util/Set;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "li"

    aput-object v1, v0, v3

    const-string/jumbo v1, "dd"

    aput-object v1, v0, v4

    const-string/jumbo v1, "dt"

    aput-object v1, v0, v5

    const-string/jumbo v1, "td"

    aput-object v1, v0, v6

    const-string/jumbo v1, "th"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "frame"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->INDENT:Ljava/util/Set;

    .line 73
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "p"

    aput-object v1, v0, v3

    const-string/jumbo v1, "h1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "h2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "h3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "h4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "h5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "h6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "div"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ul"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ol"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "dl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 75
    const-string/jumbo v2, "pre"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "blockquote"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "fieldset"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "table"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "form"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 76
    const-string/jumbo v2, "noscript"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "dt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "dd"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "noframes"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "br"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "select"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "option"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->ENDLINE:Ljava/util/Set;

    .line 78
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    sput-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "metadata"    # Lorg/apache/tika/metadata/Metadata;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/SafeContentHandler;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 94
    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headStarted:Z

    .line 95
    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headEnded:Z

    .line 96
    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    .line 100
    iput-object p2, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    .line 101
    return-void
.end method

.method private lazyEndHead(Z)V
    .locals 22
    .param p1, "isFrameset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyStartHead()V

    .line 148
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->headEnded:Z

    if-nez v3, :cond_1

    .line 149
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->headEnded:Z

    .line 150
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    invoke-virtual {v3}, Lorg/apache/tika/metadata/Metadata;->names()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 172
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "title"

    sget-object v6, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5, v6}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, "title":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 175
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 176
    .local v15, "titleChars":[C
    const/4 v3, 0x0

    array-length v4, v15

    move-object/from16 v0, p0

    invoke-super {v0, v15, v3, v4}, Lorg/apache/tika/sax/SafeContentHandler;->characters([CII)V

    .line 179
    .end local v15    # "titleChars":[C
    :cond_0
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "title"

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v4, "head"

    const-string/jumbo v5, "head"

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    if-eqz v3, :cond_6

    .line 184
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v4, "frameset"

    const-string/jumbo v5, "frameset"

    sget-object v6, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5, v6}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 189
    .end local v14    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 154
    :cond_2
    aget-object v7, v18, v17

    .line 155
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    :cond_3
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_0

    .line 159
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/tika/sax/XHTMLContentHandler;->metadata:Lorg/apache/tika/metadata/Metadata;

    invoke-virtual {v3, v7}, Lorg/apache/tika/metadata/Metadata;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v13, v20, v16

    .line 162
    .local v13, "value":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 163
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 164
    .local v2, "attributes":Lorg/xml/sax/helpers/AttributesImpl;
    const-string/jumbo v3, ""

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "name"

    const-string/jumbo v6, "CDATA"

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v9, ""

    const-string/jumbo v10, "content"

    const-string/jumbo v11, "content"

    const-string/jumbo v12, "CDATA"

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v4, "meta"

    const-string/jumbo v5, "meta"

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5, v2}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 167
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v4, "meta"

    const-string/jumbo v5, "meta"

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v2    # "attributes":Lorg/xml/sax/helpers/AttributesImpl;
    :cond_5
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_2

    .line 186
    .end local v7    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .restart local v14    # "title":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v4, "body"

    const-string/jumbo v5, "body"

    sget-object v6, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    move-object/from16 v0, p0

    invoke-super {v0, v3, v4, v5, v6}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1
.end method

.method private lazyStartHead()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headStarted:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->headStarted:Z

    .line 130
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v1, "html"

    const-string/jumbo v2, "html"

    sget-object v3, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-super {p0, v0, v1, v2, v3}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 131
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v1, "head"

    const-string/jumbo v2, "head"

    sget-object v3, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-super {p0, v0, v1, v2, v3}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 133
    :cond_0
    return-void
.end method

.method private static varargs unmodifiableSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p0, "elements"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 3
    .param p1, "characters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tika/sax/XHTMLContentHandler;->characters([CII)V

    .line 288
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 260
    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    .line 261
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->characters([CII)V

    .line 262
    return-void
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 303
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, p2}, Lorg/apache/tika/sax/XHTMLContentHandler;->characters(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, p1}, Lorg/apache/tika/sax/XHTMLContentHandler;->endElement(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    .line 203
    iget-boolean v0, p0, Lorg/apache/tika/sax/XHTMLContentHandler;->useFrameset:Z

    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v1, "frameset"

    const-string/jumbo v2, "frameset"

    invoke-super {p0, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v1, "html"

    const-string/jumbo v2, "html"

    invoke-super {p0, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 212
    invoke-super {p0}, Lorg/apache/tika/sax/SafeContentHandler;->endDocument()V

    .line 213
    return-void

    .line 206
    :cond_0
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    const-string/jumbo v1, "body"

    const-string/jumbo v2, "body"

    invoke-super {p0, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 283
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v0, p1, p1}, Lorg/apache/tika/sax/XHTMLContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->AUTO:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->ENDLINE:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->newline()V

    .line 253
    :cond_0
    return-void
.end method

.method public newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->NL:[C

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/sax/XHTMLContentHandler;->NL:[C

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/tika/sax/XHTMLContentHandler;->ignorableWhitespace([CII)V

    .line 292
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0}, Lorg/apache/tika/sax/SafeContentHandler;->startDocument()V

    .line 111
    const-string/jumbo v0, ""

    const-string/jumbo v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v0, v1}, Lorg/apache/tika/sax/XHTMLContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 267
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    sget-object v1, Lorg/apache/tika/sax/XHTMLContentHandler;->EMPTY_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-virtual {p0, v0, p1, p1, v1}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 268
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 273
    .local v0, "attributes":Lorg/xml/sax/helpers/AttributesImpl;
    const-string/jumbo v1, ""

    const-string/jumbo v4, "CDATA"

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v1, p1, p1, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 275
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 224
    const-string/jumbo v0, "frameset"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->AUTO:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->HEAD:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-direct {p0}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyStartHead()V

    .line 233
    :goto_1
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->INDENT:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lorg/apache/tika/sax/XHTMLContentHandler;->TAB:[C

    sget-object v1, Lorg/apache/tika/sax/XHTMLContentHandler;->TAB:[C

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/tika/sax/XHTMLContentHandler;->ignorableWhitespace([CII)V

    .line 237
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/tika/sax/SafeContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/tika/sax/XHTMLContentHandler;->lazyEndHead(Z)V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/helpers/AttributesImpl;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xml/sax/helpers/AttributesImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 279
    const-string/jumbo v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v0, p1, p1, p2}, Lorg/apache/tika/sax/XHTMLContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 280
    return-void
.end method
