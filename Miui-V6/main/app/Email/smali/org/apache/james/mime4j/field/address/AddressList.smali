.class public Lorg/apache/james/mime4j/field/address/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"


# instance fields
.field private addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "dontCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_1

    .line 43
    if-eqz p2, :cond_0

    .end local p1    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    .line 46
    :goto_1
    return-void

    .line 43
    .restart local p1    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "exit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "quit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-static {v1}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v2

    .line 127
    .local v2, "list":Lorg/apache/james/mime4j/field/address/AddressList;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/AddressList;->print()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "list":Lorg/apache/james/mime4j/field/address/AddressList;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 3
    .param p0, "rawAddressList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v0, "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 7

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "groupDetected":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v4, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 79
    :cond_0
    if-nez v1, :cond_2

    .line 80
    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    :goto_1
    return-object v4

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 84
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 85
    .local v0, "addr":Lorg/apache/james/mime4j/field/address/Address;
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 90
    .end local v0    # "addr":Lorg/apache/james/mime4j/field/address/Address;
    :cond_3
    new-instance v4, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method public get(I)Lorg/apache/james/mime4j/field/address/Address;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 59
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    return-object v0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method