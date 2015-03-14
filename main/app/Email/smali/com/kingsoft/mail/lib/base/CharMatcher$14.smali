.class Lcom/kingsoft/mail/lib/base/CharMatcher$14;
.super Lcom/kingsoft/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/lib/base/CharMatcher;->negate()Lcom/kingsoft/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/lib/base/CharMatcher;

.field final synthetic val$original:Lcom/kingsoft/mail/lib/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/lib/base/CharMatcher;Lcom/kingsoft/mail/lib/base/CharMatcher;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$14;->this$0:Lcom/kingsoft/mail/lib/base/CharMatcher;

    iput-object p2, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$14;->val$original:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-direct {p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 543
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 555
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$14;->val$original:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 545
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$14;->val$original:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$14;->val$original:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$14;->val$original:Lcom/kingsoft/mail/lib/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public negate()Lcom/kingsoft/mail/lib/base/CharMatcher;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$14;->val$original:Lcom/kingsoft/mail/lib/base/CharMatcher;

    return-object v0
.end method
