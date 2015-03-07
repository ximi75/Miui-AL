.class public Lorg/apache/tika/parser/ParsingReader;
.super Ljava/io/Reader;
.source "ParsingReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/parser/ParsingReader$ParsingTask;
    }
.end annotation


# instance fields
.field private final context:Lorg/apache/tika/parser/ParseContext;

.field private final metadata:Lorg/apache/tika/metadata/Metadata;

.field private final parser:Lorg/apache/tika/parser/Parser;

.field private final reader:Ljava/io/Reader;

.field private final stream:Ljava/io/InputStream;

.field private transient throwable:Ljava/lang/Throwable;

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/tika/parser/ParsingReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/apache/tika/parser/AutoDetectParser;

    invoke-direct {v0}, Lorg/apache/tika/parser/AutoDetectParser;-><init>()V

    new-instance v1, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v1}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/tika/parser/ParsingReader;-><init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lorg/apache/tika/parser/AutoDetectParser;

    invoke-direct {v0}, Lorg/apache/tika/parser/AutoDetectParser;-><init>()V

    invoke-static {p2}, Lorg/apache/tika/parser/ParsingReader;->getMetadata(Ljava/lang/String;)Lorg/apache/tika/metadata/Metadata;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/tika/parser/ParsingReader;-><init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)V
    .locals 2
    .param p1, "parser"    # Lorg/apache/tika/parser/Parser;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v0}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tika/parser/ParsingReader;-><init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V

    .line 204
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->context:Lorg/apache/tika/parser/ParseContext;

    const-class v1, Lorg/apache/tika/parser/Parser;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "parser"    # Lorg/apache/tika/parser/Parser;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v4, Lorg/apache/tika/parser/ParseContext;

    invoke-direct {v4}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/parser/ParsingReader;-><init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;Ljava/util/concurrent/Executor;)V

    .line 215
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->context:Lorg/apache/tika/parser/ParseContext;

    const-class v1, Lorg/apache/tika/parser/Parser;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    .locals 6
    .param p1, "parser"    # Lorg/apache/tika/parser/Parser;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p4, "context"    # Lorg/apache/tika/parser/ParseContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v5, Lorg/apache/tika/parser/ParsingReader$1;

    invoke-direct {v5, p3}, Lorg/apache/tika/parser/ParsingReader$1;-><init>(Lorg/apache/tika/metadata/Metadata;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/tika/parser/ParsingReader;-><init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "parser"    # Lorg/apache/tika/parser/Parser;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "metadata"    # Lorg/apache/tika/metadata/Metadata;
    .param p4, "context"    # Lorg/apache/tika/parser/ParseContext;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 177
    iput-object p1, p0, Lorg/apache/tika/parser/ParsingReader;->parser:Lorg/apache/tika/parser/Parser;

    .line 178
    new-instance v1, Ljava/io/PipedReader;

    invoke-direct {v1}, Ljava/io/PipedReader;-><init>()V

    .line 179
    .local v1, "pipedReader":Ljava/io/PipedReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/apache/tika/parser/ParsingReader;->reader:Ljava/io/Reader;

    .line 181
    :try_start_0
    new-instance v2, Ljava/io/PipedWriter;

    invoke-direct {v2, v1}, Ljava/io/PipedWriter;-><init>(Ljava/io/PipedReader;)V

    iput-object v2, p0, Lorg/apache/tika/parser/ParsingReader;->writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    iput-object p2, p0, Lorg/apache/tika/parser/ParsingReader;->stream:Ljava/io/InputStream;

    .line 186
    iput-object p3, p0, Lorg/apache/tika/parser/ParsingReader;->metadata:Lorg/apache/tika/metadata/Metadata;

    .line 187
    iput-object p4, p0, Lorg/apache/tika/parser/ParsingReader;->context:Lorg/apache/tika/parser/ParseContext;

    .line 189
    new-instance v2, Lorg/apache/tika/parser/ParsingReader$ParsingTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/tika/parser/ParsingReader$ParsingTask;-><init>(Lorg/apache/tika/parser/ParsingReader;Lorg/apache/tika/parser/ParsingReader$ParsingTask;)V

    invoke-interface {p5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 192
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader;->reader:Ljava/io/Reader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/Reader;->mark(I)V

    .line 193
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    .line 194
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->reset()V

    .line 195
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic access$0(Lorg/apache/tika/parser/ParsingReader;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/tika/parser/ParsingReader;)Lorg/apache/tika/parser/Parser;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->parser:Lorg/apache/tika/parser/Parser;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/tika/parser/ParsingReader;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/tika/parser/ParsingReader;)Lorg/apache/tika/metadata/Metadata;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->metadata:Lorg/apache/tika/metadata/Metadata;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/tika/parser/ParsingReader;)Lorg/apache/tika/parser/ParseContext;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->context:Lorg/apache/tika/parser/ParseContext;

    return-object v0
.end method

.method static synthetic access$5(Lorg/apache/tika/parser/ParsingReader;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic access$6(Lorg/apache/tika/parser/ParsingReader;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method private static getMetadata(Ljava/lang/String;)Lorg/apache/tika/metadata/Metadata;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lorg/apache/tika/metadata/Metadata;

    invoke-direct {v0}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 91
    .local v0, "metadata":Lorg/apache/tika/metadata/Metadata;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    const-string/jumbo v1, "resourceName"

    invoke-virtual {v0, v1, p0}, Lorg/apache/tika/metadata/Metadata;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/tika/parser/ParsingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 288
    return-void
.end method

.method public read([CII)I
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v1, p0, Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 271
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "exception":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 273
    throw v0

    .line 275
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lorg/apache/tika/parser/ParsingReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    return v1
.end method
