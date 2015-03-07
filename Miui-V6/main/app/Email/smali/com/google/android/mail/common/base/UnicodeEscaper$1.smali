.class Lcom/google/android/mail/common/base/UnicodeEscaper$1;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/mail/common/base/UnicodeEscaper;->escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pendingHighSurrogate:C

.field final synthetic this$0:Lcom/google/android/mail/common/base/UnicodeEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->this$0:Lcom/google/android/mail/common/base/UnicodeEscaper;

    iput-object p2, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    return-void
.end method

.method private completeSurrogatePair(C)V
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected low surrogate character but got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->this$0:Lcom/google/android/mail/common/base/UnicodeEscaper;

    iget-char v2, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    invoke-static {v2, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 337
    .local v0, "escaped":[C
    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0, v0}, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->outputChars([C)V

    .line 343
    :goto_0
    const/4 v1, 0x0

    iput-char v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    .line 344
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget-char v2, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 341
    iget-object v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method private outputChars([C)V
    .locals 3
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-char v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    if-eqz v1, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->completeSurrogatePair(C)V

    .line 321
    :goto_0
    return-object p0

    .line 305
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iput-char p1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected low surrogate character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->this$0:Lcom/google/android/mail/common/base/UnicodeEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/mail/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 315
    .local v0, "escaped":[C
    if-eqz v0, :cond_3

    .line 316
    invoke-direct {p0, v0}, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->outputChars([C)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {p2, p3, v2}, Lcom/google/android/mail/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 281
    iget-char v2, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    if-eqz v2, :cond_0

    if-ge p2, p3, :cond_0

    .line 282
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "start":I
    .local v1, "start":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->completeSurrogatePair(C)V

    move p2, v1

    .line 285
    .end local v1    # "start":I
    .restart local p2    # "start":I
    :cond_0
    if-ge p2, p3, :cond_2

    .line 288
    add-int/lit8 v2, p3, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 289
    .local v0, "last":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    iput-char v0, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->pendingHighSurrogate:C

    .line 291
    add-int/lit8 p3, p3, -0x1

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget-object v3, p0, Lcom/google/android/mail/common/base/UnicodeEscaper$1;->this$0:Lcom/google/android/mail/common/base/UnicodeEscaper;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mail/common/base/UnicodeEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 298
    .end local v0    # "last":C
    :cond_2
    return-object p0
.end method
