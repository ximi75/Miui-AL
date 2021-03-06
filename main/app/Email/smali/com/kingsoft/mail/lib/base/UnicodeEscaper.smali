.class public abstract Lcom/kingsoft/mail/lib/base/UnicodeEscaper;
.super Lcom/kingsoft/mail/lib/base/Escaper;
.source "UnicodeEscaper.java"


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/kingsoft/mail/lib/base/Escaper;-><init>()V

    return-void
.end method

.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .prologue
    .line 390
    if-ge p1, p2, :cond_5

    .line 391
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 392
    .local v0, "c1":C
    const v3, 0xd800

    if-lt v0, v3, :cond_0

    const v3, 0xdfff

    if-le v0, v3, :cond_1

    .line 404
    .end local v0    # "c1":C
    :cond_0
    :goto_0
    return v0

    .line 396
    .restart local v0    # "c1":C
    :cond_1
    const v3, 0xdbff

    if-gt v0, v3, :cond_4

    .line 398
    if-ne v2, p2, :cond_2

    .line 399
    neg-int v0, v0

    goto :goto_0

    .line 402
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 403
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_0

    .line 406
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected low surrogate but got char \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    .end local v1    # "c2":C
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected low surrogate character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 415
    .end local v0    # "c1":C
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_5
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "Index exceeds specified range"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 424
    new-array v0, p2, [C

    .line 425
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 426
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 263
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v0, Lcom/kingsoft/mail/lib/base/UnicodeEscaper$1;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper$1;-><init>(Lcom/kingsoft/mail/lib/base/UnicodeEscaper;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 147
    .local v0, "end":I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 148
    .local v1, "index":I
    if-ne v1, v0, :cond_0

    .end local p1    # "string":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 172
    .local v5, "end":I
    invoke-static {}, Lcom/kingsoft/mail/lib/base/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 173
    .local v2, "dest":[C
    const/4 v3, 0x0

    .line 174
    .local v3, "destIndex":I
    const/4 v10, 0x0

    .line 176
    .local v10, "unescapedChunkStart":I
    :goto_0
    if-ge p2, v5, :cond_6

    .line 177
    invoke-static {p1, p2, v5}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 178
    .local v1, "cp":I
    if-gez v1, :cond_0

    .line 179
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Trailing high surrogate at end of input"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 185
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->escape(I)[C

    move-result-object v7

    .line 186
    .local v7, "escaped":[C
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x2

    :goto_1
    add-int v8, p2, v11

    .line 187
    .local v8, "nextIndex":I
    if-eqz v7, :cond_4

    .line 188
    sub-int v0, p2, v10

    .line 192
    .local v0, "charsSkipped":I
    add-int v11, v3, v0

    array-length v12, v7

    add-int v9, v11, v12

    .line 193
    .local v9, "sizeNeeded":I
    array-length v11, v2

    if-ge v11, v9, :cond_1

    .line 194
    sub-int v11, v5, p2

    add-int/2addr v11, v9

    add-int/lit8 v4, v11, 0x20

    .line 195
    .local v4, "destLength":I
    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 198
    .end local v4    # "destLength":I
    :cond_1
    if-lez v0, :cond_2

    .line 199
    invoke-virtual {p1, v10, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    add-int/2addr v3, v0

    .line 202
    :cond_2
    array-length v11, v7

    if-lez v11, :cond_3

    .line 203
    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {v7, v11, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    array-length v11, v7

    add-int/2addr v3, v11

    .line 207
    :cond_3
    move v10, v8

    .line 209
    .end local v0    # "charsSkipped":I
    .end local v9    # "sizeNeeded":I
    :cond_4
    invoke-virtual {p0, p1, v8, v5}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 210
    goto :goto_0

    .line 186
    .end local v8    # "nextIndex":I
    :cond_5
    const/4 v11, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "cp":I
    .end local v7    # "escaped":[C
    :cond_6
    sub-int v0, v5, v10

    .line 215
    .restart local v0    # "charsSkipped":I
    if-lez v0, :cond_8

    .line 216
    add-int v6, v3, v0

    .line 217
    .local v6, "endIndex":I
    array-length v11, v2

    if-ge v11, v6, :cond_7

    .line 218
    invoke-static {v2, v3, v6}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 220
    :cond_7
    invoke-virtual {p1, v10, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 221
    move v3, v6

    .line 223
    .end local v6    # "endIndex":I
    :cond_8
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v11
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 109
    move v1, p2

    .line 110
    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 111
    invoke-static {p1, v1, p3}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 112
    .local v0, "cp":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-eqz v2, :cond_1

    .line 117
    .end local v0    # "cp":I
    :cond_0
    return v1

    .line 115
    .restart local v0    # "cp":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    add-int/2addr v1, v2

    .line 116
    goto :goto_0

    .line 115
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
