.class Lorg/apache/tika/sax/SafeContentHandler$1;
.super Ljava/lang/Object;
.source "SafeContentHandler.java"

# interfaces
.implements Lorg/apache/tika/sax/SafeContentHandler$Output;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/sax/SafeContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tika/sax/SafeContentHandler;


# direct methods
.method constructor <init>(Lorg/apache/tika/sax/SafeContentHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/tika/sax/SafeContentHandler$1;->this$0:Lorg/apache/tika/sax/SafeContentHandler;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write([CII)V
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
    .line 61
    iget-object v0, p0, Lorg/apache/tika/sax/SafeContentHandler$1;->this$0:Lorg/apache/tika/sax/SafeContentHandler;

    # invokes: Lorg/apache/tika/sax/ContentHandlerDecorator;->characters([CII)V
    invoke-static {v0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->access$0(Lorg/apache/tika/sax/SafeContentHandler;[CII)V

    .line 62
    return-void
.end method
