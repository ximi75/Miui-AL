.class Lorg/apache/tika/fork/ForkServer;
.super Ljava/lang/ClassLoader;
.source "ForkServer.java"


# static fields
.field public static final ECHO:B = 0x1t

.field public static final ERROR:B = -0x1t

.field public static final FIND_RESOURCE:B = 0x2t

.field public static final FIND_RESOURCES:B = 0x3t

.field public static final REPLY:B


# instance fields
.field private count:I

.field private final input:Ljava/io/DataInputStream;

.field private final output:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/tika/fork/ForkServer;->count:I

    .line 67
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    .line 68
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    .line 69
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/apache/tika/fork/ForkServer;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, v2}, Lorg/apache/tika/fork/ForkServer;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 49
    .local v0, "server":Lorg/apache/tika/fork/ForkServer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 53
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 54
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 56
    invoke-virtual {v0}, Lorg/apache/tika/fork/ForkServer;->run()V

    .line 57
    return-void
.end method

.method private readStreamToFile()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "resource-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/apache/tika/fork/ForkServer;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/tika/fork/ForkServer;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v3, "stream":Ljava/io/OutputStream;
    const v4, 0xffff

    :try_start_0
    new-array v0, v4, [B

    .line 164
    .local v0, "buffer":[B
    :goto_0
    iget-object v4, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .local v2, "n":I
    if-gtz v2, :cond_0

    .line 169
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 172
    return-object v1

    .line 165
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 166
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "buffer":[B
    .end local v2    # "n":I
    :catchall_0
    move-exception v4

    .line 169
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 170
    throw v4
.end method

.method private readStreamToMemory()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 147
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    const v3, 0xffff

    new-array v0, v3, [B

    .line 150
    .local v0, "buffer":[B
    :goto_0
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .local v1, "n":I
    if-gtz v1, :cond_0

    .line 154
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 151
    :cond_0
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 152
    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 130
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 134
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/apache/tika/fork/ForkServer;->readStreamToMemory()[B

    move-result-object v0

    .line 136
    .local v0, "data":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/apache/tika/fork/ForkServer;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 138
    .end local v0    # "data":[B
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable load class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 94
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 98
    iget-object v2, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/apache/tika/fork/ForkServer;->readStreamToFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 104
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 113
    iget-object v1, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "resources":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 119
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tika/fork/ForkServer;->readStreamToFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "resources":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 73
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .local v0, "b":I
    if-ne v0, v6, :cond_1

    .line 87
    return-void

    .line 74
    :cond_1
    if-ne v0, v7, :cond_0

    .line 77
    :try_start_0
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->input:Ljava/io/DataInputStream;

    invoke-static {v3, p0}, Lorg/apache/tika/fork/ForkSerializer;->deserialize(Ljava/io/DataInputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "message":Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 79
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "echo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/tika/fork/ForkSerializer;->serialize(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2    # "message":Ljava/lang/Object;
    :goto_1
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 82
    iget-object v3, p0, Lorg/apache/tika/fork/ForkServer;->output:Ljava/io/DataOutputStream;

    invoke-static {v3, v1}, Lorg/apache/tika/fork/ForkSerializer;->serialize(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    goto :goto_1
.end method
