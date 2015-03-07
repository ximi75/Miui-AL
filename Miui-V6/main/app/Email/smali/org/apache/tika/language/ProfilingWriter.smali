.class public Lorg/apache/tika/language/ProfilingWriter;
.super Ljava/io/Writer;
.source "ProfilingWriter.java"


# instance fields
.field private buffer:[C

.field private n:I

.field private final profile:Lorg/apache/tika/language/LanguageProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/apache/tika/language/LanguageProfile;

    invoke-direct {v0}, Lorg/apache/tika/language/LanguageProfile;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/tika/language/ProfilingWriter;-><init>(Lorg/apache/tika/language/LanguageProfile;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/language/LanguageProfile;)V
    .locals 3
    .param p1, "profile"    # Lorg/apache/tika/language/LanguageProfile;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [C

    const/4 v1, 0x2

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    iput-object v0, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tika/language/ProfilingWriter;->n:I

    .line 36
    iput-object p1, p0, Lorg/apache/tika/language/ProfilingWriter;->profile:Lorg/apache/tika/language/LanguageProfile;

    .line 37
    return-void
.end method

.method private addLetter(C)V
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    iget-object v1, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 80
    iget v0, p0, Lorg/apache/tika/language/ProfilingWriter;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tika/language/ProfilingWriter;->n:I

    .line 81
    iget v0, p0, Lorg/apache/tika/language/ProfilingWriter;->n:I

    iget-object v1, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lorg/apache/tika/language/ProfilingWriter;->profile:Lorg/apache/tika/language/LanguageProfile;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tika/language/ProfilingWriter;->buffer:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lorg/apache/tika/language/LanguageProfile;->add(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method private addSeparator()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lorg/apache/tika/language/ProfilingWriter;->addLetter(C)V

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/tika/language/ProfilingWriter;->n:I

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/apache/tika/language/ProfilingWriter;->addSeparator()V

    .line 94
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public getLanguage()Lorg/apache/tika/language/LanguageIdentifier;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/apache/tika/language/LanguageIdentifier;

    iget-object v1, p0, Lorg/apache/tika/language/ProfilingWriter;->profile:Lorg/apache/tika/language/LanguageProfile;

    invoke-direct {v0, v1}, Lorg/apache/tika/language/LanguageIdentifier;-><init>(Lorg/apache/tika/language/LanguageProfile;)V

    return-object v0
.end method

.method public getProfile()Lorg/apache/tika/language/LanguageProfile;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/tika/language/ProfilingWriter;->profile:Lorg/apache/tika/language/LanguageProfile;

    return-object v0
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 75
    return-void

    .line 68
    :cond_0
    add-int v2, p2, v1

    aget-char v2, p1, v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 69
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-direct {p0, v0}, Lorg/apache/tika/language/ProfilingWriter;->addLetter(C)V

    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0}, Lorg/apache/tika/language/ProfilingWriter;->addSeparator()V

    goto :goto_1
.end method
