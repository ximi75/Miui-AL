.class final Lcom/kingsoft/mail/lib/base/CharMatcher$13;
.super Lcom/kingsoft/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/lib/base/CharMatcher;->forPredicate(Lcom/kingsoft/mail/lib/base/Predicate;)Lcom/kingsoft/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/kingsoft/mail/lib/base/Predicate;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/lib/base/Predicate;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$13;->val$predicate:Lcom/kingsoft/mail/lib/base/Predicate;

    invoke-direct {p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 2
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$13;->val$predicate:Lcom/kingsoft/mail/lib/base/Predicate;

    invoke-static {p1}, Lcom/kingsoft/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/lib/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 521
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher$13;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 523
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$13;->val$predicate:Lcom/kingsoft/mail/lib/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingsoft/mail/lib/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
