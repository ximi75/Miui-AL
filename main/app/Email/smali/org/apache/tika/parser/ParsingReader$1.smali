.class Lorg/apache/tika/parser/ParsingReader$1;
.super Ljava/lang/Object;
.source "ParsingReader.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tika/parser/ParsingReader;-><init>(Lorg/apache/tika/parser/Parser;Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$metadata:Lorg/apache/tika/metadata/Metadata;


# direct methods
.method constructor <init>(Lorg/apache/tika/metadata/Metadata;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/tika/parser/ParsingReader$1;->val$metadata:Lorg/apache/tika/metadata/Metadata;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 145
    iget-object v2, p0, Lorg/apache/tika/parser/ParsingReader$1;->val$metadata:Lorg/apache/tika/metadata/Metadata;

    const-string/jumbo v3, "resourceName"

    invoke-virtual {v2, v3}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Apache Tika: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 152
    .local v1, "thread":Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 153
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    return-void

    .line 149
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_0
    const-string/jumbo v0, "Apache Tika"

    goto :goto_0
.end method
