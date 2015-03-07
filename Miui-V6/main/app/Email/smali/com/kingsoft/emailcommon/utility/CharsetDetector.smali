.class public Lcom/kingsoft/emailcommon/utility/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# instance fields
.field private final charset:Ljava/lang/StringBuffer;

.field private detector:Lorg/mozilla/intl/chardet/nsDetector;

.field private isAscii:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/mozilla/intl/chardet/nsDetector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    iput-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->detector:Lorg/mozilla/intl/chardet/nsDetector;

    .line 25
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->detector:Lorg/mozilla/intl/chardet/nsDetector;

    new-instance v1, Lcom/kingsoft/emailcommon/utility/CharsetDetector$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/emailcommon/utility/CharsetDetector$1;-><init>(Lcom/kingsoft/emailcommon/utility/CharsetDetector;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->charset:Ljava/lang/StringBuffer;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->isAscii:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/emailcommon/utility/CharsetDetector;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/emailcommon/utility/CharsetDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->charset:Ljava/lang/StringBuffer;

    return-object v0
.end method


# virtual methods
.method public consume([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->isAscii:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->detector:Lorg/mozilla/intl/chardet/nsDetector;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->isAscii:Z

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->isAscii:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->charset:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->detector:Lorg/mozilla/intl/chardet/nsDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    .line 48
    :cond_1
    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-boolean v2, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->isAscii:Z

    if-eqz v2, :cond_1

    .line 52
    const-string/jumbo v0, "ASCII"

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->detector:Lorg/mozilla/intl/chardet/nsDetector;

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    .line 55
    iget-object v2, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->charset:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 63
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->detector:Lorg/mozilla/intl/chardet/nsDetector;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsDetector;->Reset()V

    .line 37
    iget-object v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->charset:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingsoft/emailcommon/utility/CharsetDetector;->isAscii:Z

    .line 39
    return-void
.end method
