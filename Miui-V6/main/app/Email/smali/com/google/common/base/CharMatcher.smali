.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$BitSetMatcher;,
        Lcom/google/common/base/CharMatcher$NegatedFastMatcher;,
        Lcom/google/common/base/CharMatcher$FastMatcher;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$And;,
        Lcom/google/common/base/CharMatcher$NegatedMatcher;,
        Lcom/google/common/base/CharMatcher$RangesMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/common/base/CharMatcher;

.field private static final DISTINCT_CHARS:I = 0x10000

.field public static final INVISIBLE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

.field private static final NINES:Ljava/lang/String;

.field public static final NONE:Lcom/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/common/base/CharMatcher;

.field private static final WHITESPACE_TABLE:Ljava/lang/String; = "\u0001\u0000\u00a0\u0000\u0000\u0000\u0000\u0000\u0000\t\n\u000b\u000c\r\u0000\u0000\u2028\u2029\u0000\u0000\u0000\u0000\u0000\u202f\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000 \u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u3000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0085\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u0000\u0000\u0000\u0000\u0000\u205f\u1680\u0000\u0000\u180e\u0000\u0000\u0000"

.field private static final ZEROES:Ljava/lang/String; = "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x7f

    const/4 v6, 0x0

    .line 66
    new-instance v2, Lcom/google/common/base/CharMatcher$1;

    invoke-direct {v2}, Lcom/google/common/base/CharMatcher$1;-><init>()V

    sput-object v2, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 99
    const-string/jumbo v2, "CharMatcher.ASCII"

    invoke-static {v6, v7, v2}, Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string/jumbo v2, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 139
    const-string/jumbo v2, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, 0x9

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    .line 148
    new-instance v2, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string/jumbo v3, "CharMatcher.DIGIT"

    const-string/jumbo v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lcom/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 155
    new-instance v2, Lcom/google/common/base/CharMatcher$2;

    const-string/jumbo v3, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$2;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 166
    new-instance v2, Lcom/google/common/base/CharMatcher$3;

    const-string/jumbo v3, "CharMatcher.JAVA_LETTER"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$3;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 176
    new-instance v2, Lcom/google/common/base/CharMatcher$4;

    const-string/jumbo v3, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$4;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 187
    new-instance v2, Lcom/google/common/base/CharMatcher$5;

    const-string/jumbo v3, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$5;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 198
    new-instance v2, Lcom/google/common/base/CharMatcher$6;

    const-string/jumbo v3, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$6;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 209
    const/16 v2, 0x1f

    invoke-static {v6, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const/16 v3, 0x9f

    invoke-static {v7, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const-string/jumbo v3, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 219
    new-instance v2, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string/jumbo v3, "CharMatcher.INVISIBLE"

    const-string/jumbo v4, "\u0000\u007f\u00ad\u0600\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string/jumbo v5, " \u00a0\u00ad\u0604\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 244
    new-instance v2, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string/jumbo v3, "CharMatcher.SINGLE_WIDTH"

    const-string/jumbo v4, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string/jumbo v5, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 249
    new-instance v2, Lcom/google/common/base/CharMatcher$7;

    const-string/jumbo v3, "CharMatcher.ANY"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$7;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 325
    new-instance v2, Lcom/google/common/base/CharMatcher$8;

    const-string/jumbo v3, "CharMatcher.NONE"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$8;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    .line 1389
    new-instance v2, Lcom/google/common/base/CharMatcher$15;

    const-string/jumbo v3, "CharMatcher.WHITESPACE"

    invoke-direct {v2, v3}, Lcom/google/common/base/CharMatcher$15;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 607
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 599
    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .locals 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    .line 480
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 491
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 492
    .local v2, "chars":[C
    invoke-static {v2}, Ljava/util/Arrays;->sort([C)V

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CharMatcher.anyOf(\""

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .local v3, "description":Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v1, v0, v4

    .line 495
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "chars":[C
    .end local v3    # "description":Ljava/lang/StringBuilder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :pswitch_0
    sget-object v6, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    .line 498
    :goto_1
    return-object v6

    .line 484
    :pswitch_1
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    goto :goto_1

    .line 486
    :pswitch_2
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/4 v7, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v6, v7}, Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v6

    goto :goto_1

    .line 497
    .restart local v0    # "arr$":[C
    .restart local v2    # "chars":[C
    .restart local v3    # "description":Ljava/lang/StringBuilder;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_0
    const-string/jumbo v6, "\")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    new-instance v6, Lcom/google/common/base/CharMatcher$11;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/google/common/base/CharMatcher$11;-><init>(Ljava/lang/String;[C)V

    goto :goto_1

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "replacement"    # C
    .param p5, "builder"    # Ljava/lang/StringBuilder;
    .param p6, "inMatchingGroup"    # Z

    .prologue
    .line 1314
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 1315
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1316
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1317
    if-nez p6, :cond_0

    .line 1318
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1319
    const/4 p6, 0x1

    .line 1314
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1322
    :cond_1
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    const/4 p6, 0x0

    goto :goto_1

    .line 1326
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/CharMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/CharMatcher;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    instance-of v1, p0, Lcom/google/common/base/CharMatcher;

    if-eqz v1, :cond_0

    .line 575
    check-cast p0, Lcom/google/common/base/CharMatcher;

    .line 578
    .end local p0    # "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    .local v0, "description":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 577
    .end local v0    # "description":Ljava/lang/String;
    .restart local p0    # "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/lang/Character;>;"
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CharMatcher.forPredicate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .restart local v0    # "description":Ljava/lang/String;
    new-instance v1, Lcom/google/common/base/CharMatcher$14;

    invoke-direct {v1, v0, p0}, Lcom/google/common/base/CharMatcher$14;-><init>(Ljava/lang/String;Lcom/google/common/base/Predicate;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .locals 3
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C

    .prologue
    .line 547
    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CharMatcher.inRange(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "description":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    return-object v1

    .line 547
    .end local v0    # "description":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 556
    new-instance v0, Lcom/google/common/base/CharMatcher$13;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/base/CharMatcher$13;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .locals 3
    .param p0, "match"    # C

    .prologue
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CharMatcher.is(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Lcom/google/common/base/CharMatcher$9;

    invoke-direct {v1, v0, p0}, Lcom/google/common/base/CharMatcher$9;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method private static isEither(CC)Lcom/google/common/base/CharMatcher;
    .locals 3
    .param p0, "match1"    # C
    .param p1, "match2"    # C

    .prologue
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CharMatcher.anyOf(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Lcom/google/common/base/CharMatcher$12;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/common/base/CharMatcher$12;-><init>(Ljava/lang/String;CC)V

    return-object v1
.end method

.method public static isNot(C)Lcom/google/common/base/CharMatcher;
    .locals 3
    .param p0, "match"    # C

    .prologue
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CharMatcher.isNot(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Lcom/google/common/base/CharMatcher$10;

    invoke-direct {v1, v0, p0}, Lcom/google/common/base/CharMatcher$10;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method private static isSmall(II)Z
    .locals 1
    .param p0, "totalCharacters"    # I
    .param p1, "tableLength"    # I

    .prologue
    .line 875
    const/16 v0, 0x3ff

    if-gt p0, v0, :cond_0

    mul-int/lit8 v0, p0, 0x4

    mul-int/lit8 v0, v0, 0x10

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 536
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method private static precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 4
    .param p0, "totalCharacters"    # I
    .param p1, "table"    # Ljava/util/BitSet;
    .param p2, "description"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 858
    packed-switch p0, :pswitch_data_0

    .line 868
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v2

    invoke-static {p0, v2}, Lcom/google/common/base/CharMatcher;->isSmall(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2}, Lcom/google/common/base/SmallCharMatcher;->from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    :goto_0
    return-object v2

    .line 860
    :pswitch_0
    sget-object v2, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    goto :goto_0

    .line 862
    :pswitch_1
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    goto :goto_0

    .line 864
    :pswitch_2
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    int-to-char v0, v2

    .line 865
    .local v0, "c1":C
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    int-to-char v1, v2

    .line 866
    .local v1, "c2":C
    invoke-static {v0, v1}, Lcom/google/common/base/CharMatcher;->isEither(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    goto :goto_0

    .line 868
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_0
    new-instance v2, Lcom/google/common/base/CharMatcher$BitSetMatcher;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/common/base/CharMatcher$BitSetMatcher;-><init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/common/base/CharMatcher$1;)V

    goto :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # C

    .prologue
    .line 226
    const-string/jumbo v0, "0123456789ABCDEF"

    .line 227
    .local v0, "hex":Ljava/lang/String;
    const/4 v3, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_0

    .line 228
    .local v2, "tmp":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 229
    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 230
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 227
    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 2
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 674
    new-instance v1, Lcom/google/common/base/CharMatcher$And;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/CharMatcher$And;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v1
.end method

.method public apply(Ljava/lang/Character;)Z
    .locals 1
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 1336
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 9
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1268
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1269
    .local v3, "len":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 1270
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 1271
    .local v7, "c":C
    invoke-virtual {p0, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1272
    if-ne v7, p2, :cond_2

    add-int/lit8 v0, v3, -0x1

    if-eq v8, v0, :cond_0

    add-int/lit8 v0, v8, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1275
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 1269
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1277
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1280
    .local v5, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v8, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    .line 1285
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "c":C
    :goto_1
    return-object v0

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1037
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    add-int/lit8 v0, v0, 0x1

    .line 1036
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1041
    :cond_1
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 977
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 978
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 979
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 978
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 1002
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1003
    .local v1, "length":I
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 1004
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1005
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1009
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1004
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 1023
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1024
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1023
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1028
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 943
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 944
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    const/4 v1, 0x0

    .line 948
    :goto_1
    return v1

    .line 943
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 948
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 963
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 620
    new-instance v0, Lcom/google/common/base/CharMatcher$NegatedMatcher;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$NegatedMatcher;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 2
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 717
    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v1
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 762
    invoke-static {p0}, Lcom/google/common/base/Platform;->precomputeCharMatcher(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/common/base/CharMatcher;
    .locals 9
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/high16 v6, 0x10000

    .line 789
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 790
    .local v3, "table":Ljava/util/BitSet;
    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 791
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 792
    .local v4, "totalCharacters":I
    mul-int/lit8 v5, v4, 0x2

    if-gt v5, v6, :cond_0

    .line 793
    iget-object v5, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v5

    .line 802
    :goto_0
    return-object v5

    .line 796
    :cond_0
    invoke-virtual {v3, v8, v6}, Ljava/util/BitSet;->flip(II)V

    .line 797
    sub-int v0, v6, v4

    .line 798
    .local v0, "negatedCharacters":I
    const-string/jumbo v2, ".negate()"

    .line 799
    .local v2, "suffix":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "negatedDescription":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;

    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v1}, Lcom/google/common/base/CharMatcher;->precomputedPositive(ILjava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/common/base/CharMatcher$NegatedFastMatcher;-><init>(Ljava/lang/String;Lcom/google/common/base/CharMatcher;)V

    goto :goto_0

    .line 799
    .end local v1    # "negatedDescription":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1054
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1055
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1056
    .local v1, "pos":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1078
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1060
    .restart local v3    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1061
    .local v0, "chars":[C
    const/4 v2, 0x1

    .line 1065
    .local v2, "spread":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1067
    :goto_2
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 1078
    new-instance v3, Ljava/lang/String;

    .end local v3    # "string":Ljava/lang/String;
    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 1070
    .restart local v3    # "string":Ljava/lang/String;
    :cond_1
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1076
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1073
    :cond_2
    sub-int v4, v1, v2

    aget-char v5, v0, v1

    aput-char v5, v0, v4

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1113
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1114
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1115
    .local v2, "pos":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1125
    .end local v3    # "string":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1118
    .restart local v3    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1119
    .local v0, "chars":[C
    aput-char p2, v0, v2

    .line 1120
    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 1121
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1122
    aput-char p2, v0, v1

    .line 1120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1125
    :cond_2
    new-instance v3, Ljava/lang/String;

    .end local v3    # "string":Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 1146
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1147
    .local v4, "replacementLen":I
    if-nez v4, :cond_1

    .line 1148
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1172
    :cond_0
    :goto_0
    return-object v5

    .line 1150
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 1151
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1154
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1155
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1156
    .local v3, "pos":I
    if-eq v3, v7, :cond_0

    .line 1160
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1161
    .local v1, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1163
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1165
    .local v2, "oldpos":I
    :cond_3
    invoke-virtual {v0, v5, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1167
    add-int/lit8 v2, v3, 0x1

    .line 1168
    invoke-virtual {p0, v5, v2}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1169
    if-ne v3, v7, :cond_3

    .line 1171
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1091
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 908
    const v0, 0xffff

    .local v0, "c":I
    :goto_0
    if-ltz v0, :cond_1

    .line 909
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 908
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 913
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 9
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1296
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1300
    .local v8, "len":I
    const/4 v2, 0x0

    .local v2, "first":I
    :goto_0
    if-ge v2, v8, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1301
    :cond_0
    add-int/lit8 v7, v8, -0x1

    .local v7, "last":I
    :goto_1
    if-le v7, v2, :cond_1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1303
    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v3, v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v7, 0x1

    sub-int/2addr v0, v2

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1191
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1195
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "first":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1196
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1200
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .local v1, "last":I
    :goto_1
    if-le v1, v0, :cond_1

    .line 1201
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1206
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1195
    .end local v1    # "last":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1200
    .restart local v1    # "last":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1219
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1220
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "first":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1221
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1225
    :goto_1
    return-object v2

    .line 1220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1238
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1239
    .local v1, "len":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "last":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1240
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1244
    :goto_1
    return-object v2

    .line 1239
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1244
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 772
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
