.class Lorg/apache/tika/parser/ParsingReader$ParsingTask;
.super Ljava/lang/Object;
.source "ParsingReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tika/parser/ParsingReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tika/parser/ParsingReader;


# direct methods
.method private constructor <init>(Lorg/apache/tika/parser/ParsingReader;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tika/parser/ParsingReader;Lorg/apache/tika/parser/ParsingReader$ParsingTask;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lorg/apache/tika/parser/ParsingReader$ParsingTask;-><init>(Lorg/apache/tika/parser/ParsingReader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 231
    :try_start_0
    new-instance v0, Lorg/apache/tika/sax/BodyContentHandler;

    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->writer:Ljava/io/Writer;
    invoke-static {v2}, Lorg/apache/tika/parser/ParsingReader;->access$0(Lorg/apache/tika/parser/ParsingReader;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/tika/sax/BodyContentHandler;-><init>(Ljava/io/Writer;)V

    .line 232
    .local v0, "handler":Lorg/xml/sax/ContentHandler;
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->parser:Lorg/apache/tika/parser/Parser;
    invoke-static {v2}, Lorg/apache/tika/parser/ParsingReader;->access$1(Lorg/apache/tika/parser/ParsingReader;)Lorg/apache/tika/parser/Parser;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->stream:Ljava/io/InputStream;
    invoke-static {v3}, Lorg/apache/tika/parser/ParsingReader;->access$2(Lorg/apache/tika/parser/ParsingReader;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->metadata:Lorg/apache/tika/metadata/Metadata;
    invoke-static {v4}, Lorg/apache/tika/parser/ParsingReader;->access$3(Lorg/apache/tika/parser/ParsingReader;)Lorg/apache/tika/metadata/Metadata;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->context:Lorg/apache/tika/parser/ParseContext;
    invoke-static {v5}, Lorg/apache/tika/parser/ParsingReader;->access$4(Lorg/apache/tika/parser/ParsingReader;)Lorg/apache/tika/parser/ParseContext;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Lorg/apache/tika/parser/Parser;->parse(Ljava/io/InputStream;Lorg/xml/sax/ContentHandler;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "handler":Lorg/xml/sax/ContentHandler;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->stream:Ljava/io/InputStream;
    invoke-static {v2}, Lorg/apache/tika/parser/ParsingReader;->access$2(Lorg/apache/tika/parser/ParsingReader;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->writer:Ljava/io/Writer;
    invoke-static {v2}, Lorg/apache/tika/parser/ParsingReader;->access$0(Lorg/apache/tika/parser/ParsingReader;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    :cond_1
    :goto_2
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    invoke-static {v2, v1}, Lorg/apache/tika/parser/ParsingReader;->access$5(Lorg/apache/tika/parser/ParsingReader;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 239
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 240
    .restart local v1    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/tika/parser/ParsingReader;->access$6(Lorg/apache/tika/parser/ParsingReader;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    invoke-static {v2, v1}, Lorg/apache/tika/parser/ParsingReader;->access$5(Lorg/apache/tika/parser/ParsingReader;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 247
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 248
    .restart local v1    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    # getter for: Lorg/apache/tika/parser/ParsingReader;->throwable:Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/tika/parser/ParsingReader;->access$6(Lorg/apache/tika/parser/ParsingReader;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 249
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$ParsingTask;->this$0:Lorg/apache/tika/parser/ParsingReader;

    invoke-static {v2, v1}, Lorg/apache/tika/parser/ParsingReader;->access$5(Lorg/apache/tika/parser/ParsingReader;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
