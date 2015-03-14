.class public Lorg/apache/tika/io/TaggedIOException;
.super Lorg/apache/tika/io/IOExceptionWithCause;
.source "TaggedIOException.java"


# instance fields
.field private final tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 1
    .param p1, "original"    # Ljava/io/IOException;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tika/io/IOExceptionWithCause;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput-object p2, p0, Lorg/apache/tika/io/TaggedIOException;->tag:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public getCause()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lorg/apache/tika/io/IOExceptionWithCause;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/tika/io/TaggedIOException;->getCause()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/tika/io/TaggedIOException;->tag:Ljava/lang/Object;

    return-object v0
.end method
