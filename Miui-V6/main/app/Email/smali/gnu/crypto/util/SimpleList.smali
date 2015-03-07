.class public final Lgnu/crypto/util/SimpleList;
.super Ljava/util/AbstractList;
.source "SimpleList.java"


# static fields
.field static class$gnu$crypto$util$SimpleList:Ljava/lang/Class;


# instance fields
.field private final elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "e1"    # Ljava/lang/Object;
    .param p2, "e2"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 86
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "e1"    # Ljava/lang/Object;
    .param p2, "e2"    # Ljava/lang/Object;
    .param p3, "e3"    # Ljava/lang/Object;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 99
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 100
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "e1"    # Ljava/lang/Object;
    .param p2, "e2"    # Ljava/lang/Object;
    .param p3, "e3"    # Ljava/lang/Object;
    .param p4, "e4"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 114
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 115
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 116
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 139
    :cond_0
    return-void

    .line 137
    :cond_1
    iget-object v3, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method static class(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "list is empty"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/crypto/util/SimpleList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/crypto/util/SimpleList;->elements:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lgnu/crypto/util/SimpleList;->class$gnu$crypto$util$SimpleList:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "[Lgnu.crypto.util.SimpleList;"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgnu/crypto/util/SimpleList;->class(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgnu/crypto/util/SimpleList;->class$gnu$crypto$util$SimpleList:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/crypto/util/SimpleList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
