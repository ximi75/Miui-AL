.class Lorg/apache/tika/fork/ForkSerializer;
.super Ljava/io/ObjectInputStream;
.source "ForkSerializer.java"


# instance fields
.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    iput-object p2, p0, Lorg/apache/tika/fork/ForkSerializer;->loader:Ljava/lang/ClassLoader;

    .line 37
    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 4
    .param p0, "input"    # Ljava/io/DataInputStream;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 61
    .local v2, "n":I
    new-array v0, v2, [B

    .line 62
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 65
    new-instance v1, Lorg/apache/tika/fork/ForkSerializer;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3, p1}, Lorg/apache/tika/fork/ForkSerializer;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 66
    .local v1, "deserializer":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method static serialize(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 4
    .param p0, "output"    # Ljava/io/DataOutputStream;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    .local v2, "serializer":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 54
    .local v1, "data":[B
    array-length v3, v1

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 55
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 56
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/tika/fork/ForkSerializer;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
