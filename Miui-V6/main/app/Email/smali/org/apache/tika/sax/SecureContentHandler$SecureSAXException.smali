.class Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;
.super Lorg/xml/sax/SAXException;
.source "SecureContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/sax/SecureContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureSAXException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tika/sax/SecureContentHandler;


# direct methods
.method public constructor <init>(Lorg/apache/tika/sax/SecureContentHandler;)V
    .locals 3

    .prologue
    .line 170
    iput-object p1, p0, Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;->this$0:Lorg/apache/tika/sax/SecureContentHandler;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Suspected zip bomb: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    # getter for: Lorg/apache/tika/sax/SecureContentHandler;->stream:Lorg/apache/tika/io/CountingInputStream;
    invoke-static {p1}, Lorg/apache/tika/sax/SecureContentHandler;->access$0(Lorg/apache/tika/sax/SecureContentHandler;)Lorg/apache/tika/io/CountingInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tika/io/CountingInputStream;->getByteCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " input bytes produced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    # getter for: Lorg/apache/tika/sax/SecureContentHandler;->characterCount:J
    invoke-static {p1}, Lorg/apache/tika/sax/SecureContentHandler;->access$1(Lorg/apache/tika/sax/SecureContentHandler;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " output characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 174
    return-void
.end method


# virtual methods
.method public isCausedBy(Lorg/apache/tika/sax/SecureContentHandler;)Z
    .locals 1
    .param p1, "handler"    # Lorg/apache/tika/sax/SecureContentHandler;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/tika/sax/SecureContentHandler$SecureSAXException;->this$0:Lorg/apache/tika/sax/SecureContentHandler;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
