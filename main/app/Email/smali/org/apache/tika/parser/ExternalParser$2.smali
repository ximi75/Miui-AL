.class Lorg/apache/tika/parser/ExternalParser$2;
.super Ljava/lang/Thread;
.source "ExternalParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tika/parser/ExternalParser;->ignoreError(Ljava/lang/Process;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tika/parser/ExternalParser;

.field private final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Lorg/apache/tika/parser/ExternalParser;Ljava/lang/Process;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/tika/parser/ExternalParser$2;->this$0:Lorg/apache/tika/parser/ExternalParser;

    iput-object p2, p0, Lorg/apache/tika/parser/ExternalParser$2;->val$process:Ljava/lang/Process;

    .line 168
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lorg/apache/tika/parser/ExternalParser$2;->val$process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 172
    .local v0, "error":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/apache/tika/io/NullOutputStream;

    invoke-direct {v1}, Lorg/apache/tika/io/NullOutputStream;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 175
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v1

    .line 175
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 176
    throw v1
.end method
