.class final Lcom/google/android/mail/common/base/CharMatcher$13;
.super Lcom/google/android/mail/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/mail/common/base/CharMatcher;->forPredicate(Lcom/google/android/mail/common/base/Predicate;)Lcom/google/android/mail/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/google/android/mail/common/base/Predicate;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/Predicate;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/google/android/mail/common/base/CharMatcher$13;->val$predicate:Lcom/google/android/mail/common/base/Predicate;

    invoke-direct {p0}, Lcom/google/android/mail/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 2
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/mail/common/base/CharMatcher$13;->val$predicate:Lcom/google/android/mail/common/base/Predicate;

    invoke-static {p1}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/mail/common/base/Predicate;->apply(Ljava/lang/Object;)Z

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
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/CharMatcher$13;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/mail/common/base/CharMatcher$13;->val$predicate:Lcom/google/android/mail/common/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/mail/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
