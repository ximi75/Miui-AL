.class public Lcom/kingsoft/email/widget/text/Style;
.super Ljava/lang/Object;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingsoft/email/widget/text/Style$1;,
        Lcom/kingsoft/email/widget/text/Style$StyleBuilder;
    }
.end annotation


# static fields
.field public static final KEY_IS_DEFAULT:Ljava/lang/String; = "is_default"

.field public static final UNKNOWN:Lcom/kingsoft/email/widget/text/Style;


# instance fields
.field private mArguments:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/kingsoft/email/widget/text/Style;

    invoke-direct {v0}, Lcom/kingsoft/email/widget/text/Style;-><init>()V

    sput-object v0, Lcom/kingsoft/email/widget/text/Style;->UNKNOWN:Lcom/kingsoft/email/widget/text/Style;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V
    .locals 1
    .param p1, "styleType"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->UNKNOWN:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    .line 49
    iput-object p1, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;Lcom/kingsoft/email/widget/text/Style$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .param p2, "x1"    # Lcom/kingsoft/email/widget/text/Style$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/kingsoft/email/widget/text/Style;-><init>(Lcom/kingsoft/email/widget/text/IStyleable$StyleType;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v3

    .line 105
    :cond_1
    instance-of v5, p1, Lcom/kingsoft/email/widget/text/Style;

    if-nez v5, :cond_2

    move v3, v4

    .line 106
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 109
    check-cast v2, Lcom/kingsoft/email/widget/text/Style;

    .line 110
    .local v2, "theStyle":Lcom/kingsoft/email/widget/text/Style;
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v2}, Lcom/kingsoft/email/widget/text/Style;->getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 111
    goto :goto_0

    .line 114
    :cond_3
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    iget-object v6, v2, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 115
    goto :goto_0

    .line 118
    :cond_4
    iget-object v5, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v5, v2, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 122
    goto :goto_0
.end method

.method public getArgument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMainArgument()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->getMainArgumentName()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getType()Lcom/kingsoft/email/widget/text/IStyleable$StyleType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v0}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setArgument(Ljava/lang/Object;Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)",
            "Lcom/kingsoft/email/widget/text/Style;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_0
    return-object p0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMainArgument(Ljava/lang/Object;)Lcom/kingsoft/email/widget/text/Style;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/kingsoft/email/widget/text/Style;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style;->mType:Lcom/kingsoft/email/widget/text/IStyleable$StyleType;

    invoke-virtual {v1}, Lcom/kingsoft/email/widget/text/IStyleable$StyleType;->getMainArgumentName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "key":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_0
    return-object p0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/kingsoft/email/widget/text/Style;->mArguments:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
