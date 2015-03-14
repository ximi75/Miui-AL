.class public Lgnu/crypto/cipher/CipherFactory;
.super Ljava/lang/Object;
.source "CipherFactory.java"

# interfaces
.implements Lgnu/crypto/Registry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Lgnu/crypto/cipher/IBlockCipher;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p0, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 122
    :cond_0
    return-object v0

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "result":Lgnu/crypto/cipher/IBlockCipher;
    const-string/jumbo v1, "anubis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    new-instance v0, Lgnu/crypto/cipher/Anubis;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Anubis;-><init>()V

    .line 118
    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgnu/crypto/cipher/IBlockCipher;->selfTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/InternalError;

    invoke-interface {v0}, Lgnu/crypto/cipher/IBlockCipher;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_3
    const-string/jumbo v1, "blowfish"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    new-instance v0, Lgnu/crypto/cipher/Blowfish;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Blowfish;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto :goto_0

    .line 94
    :cond_4
    const-string/jumbo v1, "des"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    new-instance v0, Lgnu/crypto/cipher/DES;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/DES;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto :goto_0

    .line 96
    :cond_5
    const-string/jumbo v1, "khazad"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    new-instance v0, Lgnu/crypto/cipher/Khazad;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Khazad;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto :goto_0

    .line 98
    :cond_6
    const-string/jumbo v1, "rijndael"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "aes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 100
    :cond_7
    new-instance v0, Lgnu/crypto/cipher/Rijndael;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Rijndael;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto :goto_0

    .line 101
    :cond_8
    const-string/jumbo v1, "serpent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    new-instance v0, Lgnu/crypto/cipher/Serpent;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Serpent;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto :goto_0

    .line 103
    :cond_9
    const-string/jumbo v1, "square"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 104
    new-instance v0, Lgnu/crypto/cipher/Square;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Square;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto :goto_0

    .line 105
    :cond_a
    const-string/jumbo v1, "tripledes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "desede"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 107
    :cond_b
    new-instance v0, Lgnu/crypto/cipher/TripleDES;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/TripleDES;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto/16 :goto_0

    .line 108
    :cond_c
    const-string/jumbo v1, "twofish"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 109
    new-instance v0, Lgnu/crypto/cipher/Twofish;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Twofish;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto/16 :goto_0

    .line 110
    :cond_d
    const-string/jumbo v1, "cast5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "cast128"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "cast-128"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 113
    :cond_e
    new-instance v0, Lgnu/crypto/cipher/Cast5;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/Cast5;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto/16 :goto_0

    .line 114
    :cond_f
    const-string/jumbo v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v0, Lgnu/crypto/cipher/NullCipher;

    .end local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    invoke-direct {v0}, Lgnu/crypto/cipher/NullCipher;-><init>()V

    .restart local v0    # "result":Lgnu/crypto/cipher/IBlockCipher;
    goto/16 :goto_0
.end method

.method public static final getNames()Ljava/util/Set;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v0, "hs":Ljava/util/HashSet;
    const-string/jumbo v1, "anubis"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    const-string/jumbo v1, "blowfish"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    const-string/jumbo v1, "des"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    const-string/jumbo v1, "khazad"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    const-string/jumbo v1, "rijndael"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v1, "serpent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    const-string/jumbo v1, "square"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    const-string/jumbo v1, "tripledes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    const-string/jumbo v1, "twofish"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    const-string/jumbo v1, "cast5"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
