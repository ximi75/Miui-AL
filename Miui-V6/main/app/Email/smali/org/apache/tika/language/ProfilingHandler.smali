.class public Lorg/apache/tika/language/ProfilingHandler;
.super Lorg/apache/tika/sax/WriteOutContentHandler;
.source "ProfilingHandler.java"


# instance fields
.field private final writer:Lorg/apache/tika/language/ProfilingWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/apache/tika/language/ProfilingWriter;

    invoke-direct {v0}, Lorg/apache/tika/language/ProfilingWriter;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/tika/language/ProfilingHandler;-><init>(Lorg/apache/tika/language/ProfilingWriter;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/language/LanguageProfile;)V
    .locals 1
    .param p1, "profile"    # Lorg/apache/tika/language/LanguageProfile;

    .prologue
    .line 37
    new-instance v0, Lorg/apache/tika/language/ProfilingWriter;

    invoke-direct {v0, p1}, Lorg/apache/tika/language/ProfilingWriter;-><init>(Lorg/apache/tika/language/LanguageProfile;)V

    invoke-direct {p0, v0}, Lorg/apache/tika/language/ProfilingHandler;-><init>(Lorg/apache/tika/language/ProfilingWriter;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/language/ProfilingWriter;)V
    .locals 0
    .param p1, "writer"    # Lorg/apache/tika/language/ProfilingWriter;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/apache/tika/sax/WriteOutContentHandler;-><init>(Ljava/io/Writer;)V

    .line 33
    iput-object p1, p0, Lorg/apache/tika/language/ProfilingHandler;->writer:Lorg/apache/tika/language/ProfilingWriter;

    .line 34
    return-void
.end method


# virtual methods
.method public getLanguage()Lorg/apache/tika/language/LanguageIdentifier;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/tika/language/ProfilingHandler;->writer:Lorg/apache/tika/language/ProfilingWriter;

    invoke-virtual {v0}, Lorg/apache/tika/language/ProfilingWriter;->getLanguage()Lorg/apache/tika/language/LanguageIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lorg/apache/tika/language/LanguageProfile;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/tika/language/ProfilingHandler;->writer:Lorg/apache/tika/language/ProfilingWriter;

    invoke-virtual {v0}, Lorg/apache/tika/language/ProfilingWriter;->getProfile()Lorg/apache/tika/language/LanguageProfile;

    move-result-object v0

    return-object v0
.end method
