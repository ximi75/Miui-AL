.class public Lcom/kingsoft/mail/lib/base/PercentEscaper;
.super Lcom/kingsoft/mail/lib/base/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field public static final SAFECHARS_URLENCODER:Ljava/lang/String; = "-_.*"

.field public static final SAFEPATHCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;="

.field public static final SAFEQUERYSTRINGCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 91
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "safeChars"    # Ljava/lang/String;
    .param p2, "plusForSpace"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/kingsoft/mail/lib/base/UnicodeEscaper;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    const-string/jumbo v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_2
    iput-boolean p2, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->plusForSpace:Z

    .line 137
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->safeOctets:[Z

    .line 138
    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 9
    .param p0, "safeChars"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 146
    const/16 v4, 0x7a

    .line 147
    .local v4, "maxChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 148
    .local v6, "safeCharArray":[C
    move-object v0, v6

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 149
    .local v1, "c":C
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v7, v4, 0x1

    new-array v5, v7, [Z

    .line 152
    .local v5, "octets":[Z
    const/16 v1, 0x30

    .local v1, "c":I
    :goto_1
    const/16 v7, 0x39

    if-gt v1, v7, :cond_1

    .line 153
    aput-boolean v8, v5, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v7, 0x5a

    if-gt v1, v7, :cond_2

    .line 156
    aput-boolean v8, v5, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 158
    :cond_2
    const/16 v1, 0x61

    :goto_3
    const/16 v7, 0x7a

    if-gt v1, v7, :cond_3

    .line 159
    aput-boolean v8, v5, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 161
    :cond_3
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    .end local v1    # "c":I
    :goto_4
    if-ge v2, v3, :cond_4

    aget-char v1, v0, v2

    .line 162
    .local v1, "c":C
    aput-boolean v8, v5, v1

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 164
    .end local v1    # "c":C
    :cond_4
    return-object v5
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 192
    .local v2, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 194
    .local v0, "c":C
    iget-object v3, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->safeOctets:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    .line 195
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/kingsoft/mail/lib/base/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 198
    .end local v0    # "c":C
    .end local p1    # "s":Ljava/lang/String;
    :cond_1
    return-object p1

    .line 192
    .restart local v0    # "c":C
    .restart local p1    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected escape(I)[C
    .locals 7
    .param p1, "cp"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x25

    .line 208
    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->plusForSpace:Z

    if-eqz v1, :cond_1

    .line 211
    sget-object v0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    goto :goto_0

    .line 212
    :cond_1
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_2

    .line 215
    new-array v0, v6, [C

    .line 216
    .local v0, "dest":[C
    aput-char v2, v0, v3

    .line 217
    sget-object v1, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 218
    sget-object v1, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    .line 220
    .end local v0    # "dest":[C
    :cond_2
    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_3

    .line 223
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 224
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 225
    aput-char v2, v0, v6

    .line 226
    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 227
    ushr-int/lit8 p1, p1, 0x4

    .line 228
    const/4 v1, 0x4

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 229
    ushr-int/lit8 p1, p1, 0x2

    .line 230
    sget-object v1, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 231
    ushr-int/lit8 p1, p1, 0x4

    .line 232
    sget-object v1, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    or-int/lit8 v2, p1, 0xc

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    .line 234
    .end local v0    # "dest":[C
    :cond_3
    const v1, 0xffff

    if-gt p1, v1, :cond_4

    .line 237
    const/16 v1, 0x9

    new-array v0, v1, [C

    .line 238
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 239
    const/16 v1, 0x45

    aput-char v1, v0, v4

    .line 240
    aput-char v2, v0, v6

    .line 241
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 242
    const/16 v1, 0x8

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 243
    ushr-int/lit8 p1, p1, 0x4

    .line 244
    const/4 v1, 0x7

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 245
    ushr-int/lit8 p1, p1, 0x2

    .line 246
    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 247
    ushr-int/lit8 p1, p1, 0x4

    .line 248
    const/4 v1, 0x4

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 249
    ushr-int/lit8 p1, p1, 0x2

    .line 250
    sget-object v1, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    aget-char v1, v1, p1

    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 252
    .end local v0    # "dest":[C
    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    .line 253
    const/16 v1, 0xc

    new-array v0, v1, [C

    .line 256
    .restart local v0    # "dest":[C
    aput-char v2, v0, v3

    .line 257
    const/16 v1, 0x46

    aput-char v1, v0, v4

    .line 258
    aput-char v2, v0, v6

    .line 259
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 260
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 261
    const/16 v1, 0xb

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 262
    ushr-int/lit8 p1, p1, 0x4

    .line 263
    const/16 v1, 0xa

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 264
    ushr-int/lit8 p1, p1, 0x2

    .line 265
    const/16 v1, 0x8

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 266
    ushr-int/lit8 p1, p1, 0x4

    .line 267
    const/4 v1, 0x7

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 268
    ushr-int/lit8 p1, p1, 0x2

    .line 269
    const/4 v1, 0x5

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 270
    ushr-int/lit8 p1, p1, 0x4

    .line 271
    const/4 v1, 0x4

    sget-object v2, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 272
    ushr-int/lit8 p1, p1, 0x2

    .line 273
    sget-object v1, Lcom/kingsoft/mail/lib/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto/16 :goto_0

    .line 277
    .end local v0    # "dest":[C
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid unicode character value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .prologue
    .line 174
    :goto_0
    if-ge p2, p3, :cond_0

    .line 175
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 176
    .local v0, "c":C
    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 180
    .end local v0    # "c":C
    :cond_0
    return p2

    .line 174
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
