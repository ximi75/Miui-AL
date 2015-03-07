.class Lorg/apache/tika/fork/ForkClient;
.super Ljava/lang/Object;
.source "ForkClient.java"


# instance fields
.field private final directory:Ljava/io/File;

.field private final error:Ljava/io/InputStream;

.field private final input:Ljava/io/DataInputStream;

.field private final loader:Ljava/lang/ClassLoader;

.field private final output:Ljava/io/DataOutputStream;

.field private final process:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/tika/fork/ForkClient;->loader:Ljava/lang/ClassLoader;

    .line 50
    const-string/jumbo v2, "apache-tika-"

    const-string/jumbo v3, "-oop"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    .line 51
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 52
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "ok":Z
    :try_start_0
    const-class v2, Lorg/apache/tika/fork/ForkServer;

    invoke-direct {p0, v2}, Lorg/apache/tika/fork/ForkClient;->copyClassToDirectory(Ljava/lang/Class;)V

    .line 57
    const-class v2, Lorg/apache/tika/fork/ForkSerializer;

    invoke-direct {p0, v2}, Lorg/apache/tika/fork/ForkClient;->copyClassToDirectory(Ljava/lang/Class;)V

    .line 59
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 60
    .local v0, "builder":Ljava/lang/ProcessBuilder;
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 61
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "java"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lorg/apache/tika/fork/ForkServer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tika/fork/ForkClient;->process:Ljava/lang/Process;

    .line 63
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lorg/apache/tika/fork/ForkClient;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    .line 64
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/apache/tika/fork/ForkClient;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/tika/fork/ForkClient;->input:Ljava/io/DataInputStream;

    .line 65
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tika/fork/ForkClient;->error:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v1, 0x1

    .line 69
    if-nez v1, :cond_0

    .line 70
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/apache/tika/fork/ForkClient;->delete(Ljava/io/File;)V

    .line 73
    :cond_0
    return-void

    .line 68
    .end local v0    # "builder":Ljava/lang/ProcessBuilder;
    :catchall_0
    move-exception v2

    .line 69
    if-nez v1, :cond_1

    .line 70
    iget-object v3, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    invoke-direct {p0, v3}, Lorg/apache/tika/fork/ForkClient;->delete(Ljava/io/File;)V

    .line 72
    :cond_1
    throw v2
.end method

.method private consumeErrors()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->error:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    .local v1, "n":I
    if-gtz v1, :cond_1

    .line 179
    return-void

    .line 173
    :cond_1
    new-array v0, v1, [B

    .line 174
    .local v0, "b":[B
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->error:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 175
    if-lez v1, :cond_0

    .line 176
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/PrintStream;->write([BII)V

    goto :goto_0
.end method

.method private copyClassToDirectory(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/tika/fork/ForkClient;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 82
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    .local v2, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v1, v2}, Lorg/apache/tika/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 91
    return-void

    .line 85
    :catchall_0
    move-exception v4

    .line 86
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 87
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    .line 89
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 90
    throw v4
.end method

.method private delete(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 183
    .local v1, "children":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 184
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 189
    return-void

    .line 184
    :cond_1
    aget-object v0, v1, v2

    .line 185
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lorg/apache/tika/fork/ForkClient;->delete(Ljava/io/File;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private findResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 137
    .local v0, "stream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 139
    invoke-direct {p0, v0}, Lorg/apache/tika/fork/ForkClient;->writeAndCloseStream(Ljava/io/InputStream;)V

    .line 143
    :goto_0
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0
.end method

.method private findResources(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 148
    .local v0, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 153
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 154
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 150
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tika/fork/ForkClient;->writeAndCloseStream(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private readResponseType()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    :goto_0
    invoke-direct {p0}, Lorg/apache/tika/fork/ForkClient;->consumeErrors()V

    .line 122
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 123
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 124
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unexpected end of stream encountered"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 126
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tika/fork/ForkClient;->findResource(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 128
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/tika/fork/ForkClient;->findResources(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    int-to-byte v1, v0

    return v1
.end method

.method private writeAndCloseStream(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const v2, 0xffff

    :try_start_0
    new-array v0, v2, [B

    .line 160
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 168
    return-void

    .line 161
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 162
    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    .line 166
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 167
    throw v2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 111
    iget-object v0, p0, Lorg/apache/tika/fork/ForkClient;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 112
    iget-object v0, p0, Lorg/apache/tika/fork/ForkClient;->error:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tika/fork/ForkClient;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 116
    iget-object v0, p0, Lorg/apache/tika/fork/ForkClient;->directory:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tika/fork/ForkClient;->delete(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized echo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/tika/fork/ForkClient;->consumeErrors()V

    .line 95
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 96
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    invoke-static {v1, p1}, Lorg/apache/tika/fork/ForkSerializer;->serialize(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 99
    invoke-direct {p0}, Lorg/apache/tika/fork/ForkClient;->readResponseType()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    iget-object v1, p0, Lorg/apache/tika/fork/ForkClient;->input:Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/apache/tika/fork/ForkClient;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lorg/apache/tika/fork/ForkSerializer;->deserialize(Ljava/io/DataInputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    new-instance v1, Lorg/apache/tika/io/IOExceptionWithCause;

    const-string/jumbo v2, "Unable to read echo response"

    invoke-direct {v1, v2, v0}, Lorg/apache/tika/io/IOExceptionWithCause;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
