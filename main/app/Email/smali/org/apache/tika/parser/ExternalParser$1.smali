.class Lorg/apache/tika/parser/ExternalParser$1;
.super Ljava/lang/Thread;
.source "ExternalParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tika/parser/ExternalParser;->sendInput(Ljava/lang/Process;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tika/parser/ExternalParser;

.field private final synthetic val$process:Ljava/lang/Process;

.field private final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/apache/tika/parser/ExternalParser;Ljava/lang/Process;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/tika/parser/ExternalParser$1;->this$0:Lorg/apache/tika/parser/ExternalParser;

    iput-object p2, p0, Lorg/apache/tika/parser/ExternalParser$1;->val$process:Ljava/lang/Process;

    iput-object p3, p0, Lorg/apache/tika/parser/ExternalParser$1;->val$stream:Ljava/io/InputStream;

    .line 147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/tika/parser/ExternalParser$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 151
    .local v0, "stdin":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/parser/ExternalParser$1;->val$stream:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 156
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 154
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v1

    .line 154
    invoke-static {v0}, Lorg/apache/tika/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 155
    throw v1
.end method
