.class Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;
.super Lorg/xml/sax/SAXException;
.source "WriteOutContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/sax/WriteOutContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteLimitReachedException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tika/sax/WriteOutContentHandler;


# direct methods
.method private constructor <init>(Lorg/apache/tika/sax/WriteOutContentHandler;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;->this$0:Lorg/apache/tika/sax/WriteOutContentHandler;

    invoke-direct {p0}, Lorg/xml/sax/SAXException;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/sax/WriteOutContentHandler;Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;-><init>(Lorg/apache/tika/sax/WriteOutContentHandler;)V

    return-void
.end method


# virtual methods
.method public getSource()Lorg/apache/tika/sax/WriteOutContentHandler;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/tika/sax/WriteOutContentHandler$WriteLimitReachedException;->this$0:Lorg/apache/tika/sax/WriteOutContentHandler;

    return-object v0
.end method
