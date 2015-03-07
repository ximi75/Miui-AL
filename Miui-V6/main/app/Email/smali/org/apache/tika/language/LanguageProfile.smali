.class public Lorg/apache/tika/language/LanguageProfile;
.super Ljava/lang/Object;
.source "LanguageProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/language/LanguageProfile$Counter;
    }
.end annotation


# static fields
.field public static final DEFAULT_NGRAM_LENGTH:I = 0x3


# instance fields
.field private count:J

.field private final length:I

.field private final ngrams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/language/LanguageProfile$Counter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/tika/language/LanguageProfile;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tika/language/LanguageProfile;->ngrams:Ljava/util/Map;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tika/language/LanguageProfile;->count:J

    .line 55
    iput p1, p0, Lorg/apache/tika/language/LanguageProfile;->length:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/tika/language/LanguageProfile;-><init>(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lorg/apache/tika/language/LanguageProfile;-><init>(I)V

    .line 65
    new-instance v1, Lorg/apache/tika/language/ProfilingWriter;

    invoke-direct {v1, p0}, Lorg/apache/tika/language/ProfilingWriter;-><init>(Lorg/apache/tika/language/LanguageProfile;)V

    .line 66
    .local v1, "writer":Lorg/apache/tika/language/ProfilingWriter;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 67
    .local v0, "ch":[C
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/tika/language/ProfilingWriter;->write([CII)V

    .line 68
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "ngram"    # Ljava/lang/String;

    .prologue
    .line 93
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tika/language/LanguageProfile;->add(Ljava/lang/String;J)V

    .line 94
    return-void
.end method

.method public add(Ljava/lang/String;J)V
    .locals 4
    .param p1, "ngram"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 103
    iget v1, p0, Lorg/apache/tika/language/LanguageProfile;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to add an ngram of incorrect length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/tika/language/LanguageProfile;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/apache/tika/language/LanguageProfile;->ngrams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/language/LanguageProfile$Counter;

    .line 110
    .local v0, "counter":Lorg/apache/tika/language/LanguageProfile$Counter;
    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lorg/apache/tika/language/LanguageProfile$Counter;

    .end local v0    # "counter":Lorg/apache/tika/language/LanguageProfile$Counter;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tika/language/LanguageProfile$Counter;-><init>(Lorg/apache/tika/language/LanguageProfile;Lorg/apache/tika/language/LanguageProfile$Counter;)V

    .line 112
    .restart local v0    # "counter":Lorg/apache/tika/language/LanguageProfile$Counter;
    iget-object v1, p0, Lorg/apache/tika/language/LanguageProfile;->ngrams:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_1
    # getter for: Lorg/apache/tika/language/LanguageProfile$Counter;->count:J
    invoke-static {v0}, Lorg/apache/tika/language/LanguageProfile$Counter;->access$0(Lorg/apache/tika/language/LanguageProfile$Counter;)J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v0, v1, v2}, Lorg/apache/tika/language/LanguageProfile$Counter;->access$2(Lorg/apache/tika/language/LanguageProfile$Counter;J)V

    .line 115
    iget-wide v1, p0, Lorg/apache/tika/language/LanguageProfile;->count:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lorg/apache/tika/language/LanguageProfile;->count:J

    .line 116
    return-void
.end method

.method public distance(Lorg/apache/tika/language/LanguageProfile;)D
    .locals 20
    .param p1, "that"    # Lorg/apache/tika/language/LanguageProfile;

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/tika/language/LanguageProfile;->length:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/tika/language/LanguageProfile;->length:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 127
    new-instance v16, Ljava/lang/IllegalArgumentException;

    .line 128
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Unable to calculage distance of language profiles with different ngram lengths: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/tika/language/LanguageProfile;->length:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " != "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/tika/language/LanguageProfile;->length:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 128
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 127
    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 133
    :cond_0
    const-wide/16 v6, 0x0

    .line 134
    .local v6, "sumOfSquares":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/tika/language/LanguageProfile;->count:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 135
    .local v12, "thisCount":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/apache/tika/language/LanguageProfile;->count:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 137
    .local v8, "thatCount":D
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v5, "ngrams":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/tika/language/LanguageProfile;->ngrams:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 139
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/tika/language/LanguageProfile;->ngrams:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 147
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    return-wide v16

    .line 140
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 141
    .local v4, "ngram":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/tika/language/LanguageProfile;->getCount(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v14, v17, v12

    .line 142
    .local v14, "thisFrequency":D
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/apache/tika/language/LanguageProfile;->getCount(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v10, v17, v8

    .line 143
    .local v10, "thatFrequency":D
    sub-double v2, v14, v10

    .line 144
    .local v2, "difference":D
    mul-double v17, v2, v2

    add-double v6, v6, v17

    goto :goto_0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/apache/tika/language/LanguageProfile;->count:J

    return-wide v0
.end method

.method public getCount(Ljava/lang/String;)J
    .locals 3
    .param p1, "ngram"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v1, p0, Lorg/apache/tika/language/LanguageProfile;->ngrams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tika/language/LanguageProfile$Counter;

    .line 80
    .local v0, "counter":Lorg/apache/tika/language/LanguageProfile$Counter;
    if-eqz v0, :cond_0

    .line 81
    # getter for: Lorg/apache/tika/language/LanguageProfile$Counter;->count:J
    invoke-static {v0}, Lorg/apache/tika/language/LanguageProfile$Counter;->access$0(Lorg/apache/tika/language/LanguageProfile$Counter;)J

    move-result-wide v1

    .line 83
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/tika/language/LanguageProfile;->ngrams:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
