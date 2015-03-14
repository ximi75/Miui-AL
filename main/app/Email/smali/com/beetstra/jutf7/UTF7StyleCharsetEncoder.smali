.class Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UTF7StyleCharsetEncoder.java"


# static fields
.field private static final AVG_BYTES_PER_CHAR:F = 1.5f

.field private static final MAX_BYTES_PER_CHAR:F = 5.0f

.field static useUglyHackToForceCallToFlushInJava5:Z


# instance fields
.field private final base64:Lcom/beetstra/jutf7/Base64Util;

.field private base64mode:Z

.field private bitsToOutput:I

.field private final cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

.field private sextet:I

.field private final shift:B

.field private final strict:Z

.field private final unshift:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-string/jumbo v2, "java.specification.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "version":Ljava/lang/String;
    const-string/jumbo v2, "java.vm.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "vendor":Ljava/lang/String;
    const-string/jumbo v2, "1.4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "1.5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    .line 65
    sget-boolean v2, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    const-string/jumbo v3, "Sun Microsystems Inc."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    sput-boolean v2, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    .line 66
    return-void

    .line 64
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
    .locals 2
    .param p1, "cs"    # Lcom/beetstra/jutf7/UTF7StyleCharset;
    .param p2, "base64"    # Lcom/beetstra/jutf7/Base64Util;
    .param p3, "strict"    # Z

    .prologue
    .line 69
    const/high16 v0, 0x3fc00000

    const/high16 v1, 0x40a00000

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 70
    iput-object p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

    .line 71
    iput-object p2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 72
    iput-boolean p3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->strict:Z

    .line 73
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->shift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    .line 74
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->unshift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    .line 75
    return-void
.end method

.method private encodeBase64(CLjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "ch"    # C
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-nez v0, :cond_0

    .line 208
    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 210
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 211
    :goto_0
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 212
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 213
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    shr-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 214
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 215
    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->getChar(I)B

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    goto :goto_0

    .line 218
    :cond_1
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    rsub-int/lit8 v0, v0, 0x6

    shl-int v0, p1, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 219
    return-void
.end method

.method private unshift(Ljava/nio/ByteBuffer;C)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;
    .param p2, "ch"    # C

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_0
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->getChar(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    invoke-virtual {v0, p2}, Lcom/beetstra/jutf7/Base64Util;->contains(C)Z

    move-result v0

    if-nez v0, :cond_2

    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->strict:Z

    if-eqz v0, :cond_3

    .line 189
    :cond_2
    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 190
    :cond_3
    iput-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 191
    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 192
    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    goto :goto_0
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4
    .param p1, "in"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 148
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 150
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 171
    :goto_1
    return-object v1

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    .line 152
    .local v0, "ch":C
    iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

    invoke-virtual {v1, v0}, Lcom/beetstra/jutf7/UTF7StyleCharset;->canEncodeDirectly(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-direct {p0, p2, v0}, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift(Ljava/nio/ByteBuffer;C)V

    .line 154
    int-to-byte v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 155
    :cond_1
    iget-boolean v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-nez v1, :cond_2

    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    if-ne v0, v1, :cond_2

    .line 156
    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->encodeBase64(CLjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 167
    .end local v0    # "ch":C
    :cond_3
    iget-boolean v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 169
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    .line 171
    :cond_4
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 110
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 115
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->getChar(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 113
    :cond_1
    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method

.method protected implReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 84
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 85
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 86
    return-void
.end method
