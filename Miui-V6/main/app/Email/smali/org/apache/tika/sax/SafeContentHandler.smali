.class public Lorg/apache/tika/sax/SafeContentHandler;
.super Lorg/apache/tika/sax/ContentHandlerDecorator;
.source "SafeContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/sax/SafeContentHandler$Output;
    }
.end annotation


# static fields
.field private static final REPLACEMENT:[C


# instance fields
.field private final charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

.field private final ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/ContentHandlerDecorator;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 58
    new-instance v0, Lorg/apache/tika/sax/SafeContentHandler$1;

    invoke-direct {v0, p0}, Lorg/apache/tika/sax/SafeContentHandler$1;-><init>(Lorg/apache/tika/sax/SafeContentHandler;)V

    iput-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    .line 70
    new-instance v0, Lorg/apache/tika/sax/SafeContentHandler$2;

    invoke-direct {v0, p0}, Lorg/apache/tika/sax/SafeContentHandler$2;-><init>(Lorg/apache/tika/sax/SafeContentHandler;)V

    iput-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->characters([CII)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/tika/sax/SafeContentHandler;[CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tika/sax/ContentHandlerDecorator;->ignorableWhitespace([CII)V

    return-void
.end method

.method private filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "output"    # Lorg/apache/tika/sax/SafeContentHandler$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    add-int v0, p2, p3

    .line 97
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 113
    sub-int v2, v0, p2

    invoke-interface {p4, p1, p2, v2}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    .line 114
    return-void

    .line 98
    :cond_0
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/tika/sax/SafeContentHandler;->isInvalid(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    if-le v1, p2, :cond_1

    .line 101
    sub-int v2, v1, p2

    invoke-interface {p4, p1, p2, v2}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    .line 105
    :cond_1
    invoke-virtual {p0, p4}, Lorg/apache/tika/sax/SafeContentHandler;->writeReplacement(Lorg/apache/tika/sax/SafeContentHandler$Output;)V

    .line 108
    add-int/lit8 p2, v1, 0x1

    .line 97
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
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
    .line 151
    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->charactersOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    .line 152
    return-void
.end method

.method public ignorableWhitespace([CII)V
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
    .line 157
    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler;->ignorableWhitespaceOutput:Lorg/apache/tika/sax/SafeContentHandler$Output;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tika/sax/SafeContentHandler;->filter([CIILorg/apache/tika/sax/SafeContentHandler$Output;)V

    .line 158
    return-void
.end method

.method protected isInvalid(C)Z
    .locals 3
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    const/16 v2, 0x20

    if-ge p1, v2, :cond_2

    .line 129
    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    const v2, 0xfffe

    if-ge p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected writeReplacement(Lorg/apache/tika/sax/SafeContentHandler$Output;)V
    .locals 3
    .param p1, "output"    # Lorg/apache/tika/sax/SafeContentHandler$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/tika/sax/SafeContentHandler;->REPLACEMENT:[C

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/tika/sax/SafeContentHandler$Output;->write([CII)V

    .line 144
    return-void
.end method
