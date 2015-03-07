.class public abstract Lcom/kingsoft/mail/lib/base/CharEscaper;
.super Lcom/kingsoft/mail/lib/base/Escaper;
.source "CharEscaper.java"


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingsoft/mail/lib/base/Escaper;-><init>()V

    return-void
.end method

.method private static growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 200
    new-array v0, p2, [C

    .line 201
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 202
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;

    .prologue
    .line 81
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/kingsoft/mail/lib/base/CharEscaper$1;

    invoke-direct {v0, p0, p1}, Lcom/kingsoft/mail/lib/base/CharEscaper$1;-><init>(Lcom/kingsoft/mail/lib/base/CharEscaper;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 53
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 58
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 53
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract escape(C)[C
.end method

.method protected escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v11, 0x0

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 123
    .local v9, "slen":I
    invoke-static {}, Lcom/kingsoft/mail/lib/base/Platform;->charBufferFromThreadLocal()[C

    move-result-object v2

    .line 124
    .local v2, "dest":[C
    array-length v4, v2

    .line 125
    .local v4, "destSize":I
    const/4 v3, 0x0

    .line 126
    .local v3, "destIndex":I
    const/4 v5, 0x0

    .line 130
    .local v5, "lastEscape":I
    :goto_0
    if-ge p2, v9, :cond_4

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v10}, Lcom/kingsoft/mail/lib/base/CharEscaper;->escape(C)[C

    move-result-object v6

    .line 136
    .local v6, "r":[C
    if-nez v6, :cond_0

    .line 130
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    array-length v7, v6

    .line 139
    .local v7, "rlen":I
    sub-int v1, p2, v5

    .line 143
    .local v1, "charsSkipped":I
    add-int v10, v3, v1

    add-int v8, v10, v7

    .line 144
    .local v8, "sizeNeeded":I
    if-ge v4, v8, :cond_1

    .line 145
    sub-int v10, v9, p2

    add-int/2addr v10, v8

    add-int/lit8 v4, v10, 0x20

    .line 146
    invoke-static {v2, v3, v4}, Lcom/kingsoft/mail/lib/base/CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 150
    :cond_1
    if-lez v1, :cond_2

    .line 151
    invoke-virtual {p1, v5, p2, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 152
    add-int/2addr v3, v1

    .line 156
    :cond_2
    if-lez v7, :cond_3

    .line 157
    invoke-static {v6, v11, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    add-int/2addr v3, v7

    .line 160
    :cond_3
    add-int/lit8 v5, p2, 0x1

    goto :goto_1

    .line 164
    .end local v1    # "charsSkipped":I
    .end local v6    # "r":[C
    .end local v7    # "rlen":I
    .end local v8    # "sizeNeeded":I
    :cond_4
    sub-int v0, v9, v5

    .line 165
    .local v0, "charsLeft":I
    if-lez v0, :cond_6

    .line 166
    add-int v8, v3, v0

    .line 167
    .restart local v8    # "sizeNeeded":I
    if-ge v4, v8, :cond_5

    .line 170
    invoke-static {v2, v3, v8}, Lcom/kingsoft/mail/lib/base/CharEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 172
    :cond_5
    invoke-virtual {p1, v5, v9, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 173
    move v3, v8

    .line 175
    .end local v8    # "sizeNeeded":I
    :cond_6
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v11, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v10
.end method