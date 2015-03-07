.class public final Lcom/kingsoft/mail/lib/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/mail/lib/base/Splitter$6;,
        Lcom/kingsoft/mail/lib/base/Splitter$AbstractIterator;,
        Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;,
        Lcom/kingsoft/mail/lib/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/kingsoft/mail/lib/base/Splitter$Strategy;

.field private final trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;


# direct methods
.method private constructor <init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;)V
    .locals 2
    .param p1, "strategy"    # Lcom/kingsoft/mail/lib/base/Splitter$Strategy;

    .prologue
    .line 99
    const/4 v0, 0x0

    sget-object v1, Lcom/kingsoft/mail/lib/base/CharMatcher;->NONE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-direct {p0, p1, v0, v1}, Lcom/kingsoft/mail/lib/base/Splitter;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;ZLcom/kingsoft/mail/lib/base/CharMatcher;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;ZLcom/kingsoft/mail/lib/base/CharMatcher;)V
    .locals 0
    .param p1, "strategy"    # Lcom/kingsoft/mail/lib/base/Splitter$Strategy;
    .param p2, "omitEmptyStrings"    # Z
    .param p3, "trimmer"    # Lcom/kingsoft/mail/lib/base/CharMatcher;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/Splitter;->strategy:Lcom/kingsoft/mail/lib/base/Splitter$Strategy;

    .line 105
    iput-boolean p2, p0, Lcom/kingsoft/mail/lib/base/Splitter;->omitEmptyStrings:Z

    .line 106
    iput-object p3, p0, Lcom/kingsoft/mail/lib/base/Splitter;->trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/kingsoft/mail/lib/base/Splitter;)Lcom/kingsoft/mail/lib/base/Splitter$Strategy;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/lib/base/Splitter;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/Splitter;->strategy:Lcom/kingsoft/mail/lib/base/Splitter$Strategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kingsoft/mail/lib/base/Splitter;)Lcom/kingsoft/mail/lib/base/CharMatcher;
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/lib/base/Splitter;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/Splitter;->trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kingsoft/mail/lib/base/Splitter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kingsoft/mail/lib/base/Splitter;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/kingsoft/mail/lib/base/Splitter;->omitEmptyStrings:Z

    return v0
.end method

.method public static fixedLength(I)Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 2
    .param p0, "length"    # I

    .prologue
    .line 257
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "The length may not be less than 1"

    invoke-static {v0, v1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 259
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter;

    new-instance v1, Lcom/kingsoft/mail/lib/base/Splitter$4;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/lib/base/Splitter$4;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/lib/base/Splitter;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;)V

    return-object v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static on(C)Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 1
    .param p0, "separator"    # C

    .prologue
    .line 118
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;->is(C)Lcom/kingsoft/mail/lib/base/CharMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/lib/base/Splitter;->on(Lcom/kingsoft/mail/lib/base/CharMatcher;)Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public static on(Lcom/kingsoft/mail/lib/base/CharMatcher;)Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 2
    .param p0, "separatorMatcher"    # Lcom/kingsoft/mail/lib/base/CharMatcher;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter;

    new-instance v1, Lcom/kingsoft/mail/lib/base/Splitter$1;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/lib/base/Splitter$1;-><init>(Lcom/kingsoft/mail/lib/base/CharMatcher;)V

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/lib/base/Splitter;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 2
    .param p0, "separator"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "The separator may not be the empty string."

    invoke-static {v0, v1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter;

    new-instance v1, Lcom/kingsoft/mail/lib/base/Splitter$2;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/lib/base/Splitter$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/lib/base/Splitter;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;)V

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static on(Ljava/util/regex/Pattern;)Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 4
    .param p0, "separatorPattern"    # Ljava/util/regex/Pattern;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-static {p0}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "The pattern may not match the empty string: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 209
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter;

    new-instance v1, Lcom/kingsoft/mail/lib/base/Splitter$3;

    invoke-direct {v1, p0}, Lcom/kingsoft/mail/lib/base/Splitter$3;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {v0, v1}, Lcom/kingsoft/mail/lib/base/Splitter;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0
.end method

.method public static onPattern(Ljava/lang/String;)Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 1
    .param p0, "separatorPattern"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Lcom/kingsoft/mail/lib/base/Splitter;->on(Ljava/util/regex/Pattern;)Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public omitEmptyStrings()Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 4

    .prologue
    .line 296
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter;

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/Splitter;->strategy:Lcom/kingsoft/mail/lib/base/Splitter$Strategy;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingsoft/mail/lib/base/Splitter;->trimmer:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingsoft/mail/lib/base/Splitter;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;ZLcom/kingsoft/mail/lib/base/CharMatcher;)V

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter$5;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/lib/base/Splitter$5;-><init>(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public trimResults()Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/kingsoft/mail/lib/base/CharMatcher;->WHITESPACE:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/lib/base/Splitter;->trimResults(Lcom/kingsoft/mail/lib/base/CharMatcher;)Lcom/kingsoft/mail/lib/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public trimResults(Lcom/kingsoft/mail/lib/base/CharMatcher;)Lcom/kingsoft/mail/lib/base/Splitter;
    .locals 3
    .param p1, "trimmer"    # Lcom/kingsoft/mail/lib/base/CharMatcher;

    .prologue
    .line 325
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v0, Lcom/kingsoft/mail/lib/base/Splitter;

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/Splitter;->strategy:Lcom/kingsoft/mail/lib/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/kingsoft/mail/lib/base/Splitter;->omitEmptyStrings:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/kingsoft/mail/lib/base/Splitter;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$Strategy;ZLcom/kingsoft/mail/lib/base/CharMatcher;)V

    return-object v0
.end method
