.class public Lorg/apache/tika/io/CloseShieldInputStream;
.super Lorg/apache/tika/io/ProxyInputStream;
.source "CloseShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/tika/io/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/tika/io/ClosedInputStream;

    invoke-direct {v0}, Lorg/apache/tika/io/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    .line 50
    return-void
.end method
