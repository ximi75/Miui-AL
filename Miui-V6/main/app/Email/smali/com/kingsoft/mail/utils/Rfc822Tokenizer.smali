.class public Lcom/kingsoft/mail/utils/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# static fields
.field public static final REGULAR_EXP_EMAIL:Ljava/lang/String; = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x20

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 208
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 211
    .local v0, "c":C
    if-nez v0, :cond_2

    .line 212
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 220
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "c":C
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 229
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 227
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :cond_5
    return-void
.end method

.method public static hasMultiAddress(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "tags"    # I

    .prologue
    .line 42
    const/16 v0, 0x98

    if-ne p1, v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasSepcialCharacter(Ljava/lang/CharSequence;C)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "special"    # C

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 67
    .local v0, "result":Z
    goto :goto_0
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;I)V
    .locals 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p2, "tags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v6, "name":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "address":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v2, "comment":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 77
    .local v4, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 79
    .local v3, "cursor":I
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_13

    .line 80
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 82
    .local v1, "c":C
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_1

    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    .line 83
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 85
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-static {v6}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 92
    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 103
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 96
    new-instance v7, Landroid/text/util/Rfc822Token;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    :cond_5
    const/16 v7, 0x22

    if-ne v1, v7, :cond_9

    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 107
    :goto_3
    if-ge v4, v3, :cond_0

    .line 108
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 110
    const/16 v7, 0x22

    if-ne v1, v7, :cond_6

    invoke-static {p0, p2}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->hasMultiAddress(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->hasSepcialCharacter(Ljava/lang/CharSequence;C)Z

    move-result v7

    if-nez v7, :cond_6

    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto/16 :goto_0

    .line 114
    :cond_6
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_8

    .line 115
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_7

    .line 116
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 120
    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 124
    :cond_9
    const/16 v7, 0x28

    if-ne v1, v7, :cond_f

    .line 125
    const/4 v5, 0x1

    .line 126
    .local v5, "level":I
    add-int/lit8 v4, v4, 0x1

    .line 128
    :goto_4
    if-ge v4, v3, :cond_0

    if-lez v5, :cond_0

    .line 129
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 131
    const/16 v7, 0x29

    if-ne v1, v7, :cond_b

    .line 132
    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 138
    :cond_b
    const/16 v7, 0x28

    if-ne v1, v7, :cond_c

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 142
    :cond_c
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_e

    .line 143
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_d

    .line 144
    add-int/lit8 v7, v4, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_d
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 148
    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 152
    .end local v5    # "level":I
    :cond_f
    const/16 v7, 0x3c

    if-ne v1, v7, :cond_11

    .line 153
    add-int/lit8 v4, v4, 0x1

    .line 155
    :goto_5
    if-ge v4, v3, :cond_0

    .line 156
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 158
    const/16 v7, 0x3e

    if-ne v1, v7, :cond_10

    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    goto/16 :goto_0

    .line 162
    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 166
    :cond_11
    const/16 v7, 0x20

    if-ne v1, v7, :cond_12

    .line 167
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 170
    :cond_12
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 175
    .end local v1    # "c":C
    :cond_13
    invoke-static {v6}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_15

    .line 177
    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_14
    :goto_6
    return-void

    .line 180
    :cond_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 181
    new-instance v7, Landroid/text/util/Rfc822Token;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public static tokenize(Ljava/lang/CharSequence;I)[Landroid/text/util/Rfc822Token;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "tags"    # I

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0, p1}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;I)V

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 270
    .local v2, "len":I
    move v1, p2

    .line 272
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 273
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 275
    .local v0, "c":C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 329
    .end local v0    # "c":C
    :cond_1
    return v1

    .line 277
    .restart local v0    # "c":C
    :cond_2
    if-ne v0, v5, :cond_5

    .line 278
    add-int/lit8 v1, v1, 0x1

    .line 280
    :goto_1
    if-ge v1, v2, :cond_0

    .line 281
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 283
    if-ne v0, v5, :cond_3

    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    goto :goto_0

    .line 286
    :cond_3
    if-ne v0, v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_4

    .line 287
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 289
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    :cond_5
    if-ne v0, v6, :cond_9

    .line 293
    const/4 v3, 0x1

    .line 294
    .local v3, "level":I
    add-int/lit8 v1, v1, 0x1

    .line 296
    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    .line 297
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 299
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 300
    add-int/lit8 v3, v3, -0x1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 302
    :cond_6
    if-ne v0, v6, :cond_7

    .line 303
    add-int/lit8 v3, v3, 0x1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_7
    if-ne v0, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_8

    .line 306
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 308
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 311
    .end local v3    # "level":I
    :cond_9
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_b

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 314
    :goto_3
    if-ge v1, v2, :cond_0

    .line 315
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 317
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_a

    .line 318
    add-int/lit8 v1, v1, 0x1

    .line 319
    goto :goto_0

    .line 321
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 325
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "best":I
    const/4 v1, 0x0

    .line 246
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 247
    invoke-virtual {p0, p1, v1}, Lcom/kingsoft/mail/utils/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 249
    if-ge v1, p2, :cond_0

    .line 250
    add-int/lit8 v1, v1, 0x1

    .line 252
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_1
    if-ge v1, p2, :cond_0

    .line 257
    move v0, v1

    goto :goto_0

    .line 262
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
