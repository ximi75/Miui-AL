.class Lcom/kingsoft/mail/lib/base/CharMatcher$15;
.super Lcom/kingsoft/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/lib/base/CharMatcher;->precomputedInternal()Lcom/kingsoft/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/lib/base/CharMatcher;

.field final synthetic val$table:Lcom/kingsoft/mail/lib/base/CharMatcher$LookupTable;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/lib/base/CharMatcher;Lcom/kingsoft/mail/lib/base/CharMatcher$LookupTable;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$15;->this$0:Lcom/kingsoft/mail/lib/base/CharMatcher;

    iput-object p2, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$15;->val$table:Lcom/kingsoft/mail/lib/base/CharMatcher$LookupTable;

    invoke-direct {p0}, Lcom/kingsoft/mail/lib/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 662
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 664
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/CharMatcher$15;->val$table:Lcom/kingsoft/mail/lib/base/CharMatcher$LookupTable;

    invoke-virtual {v0, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher$LookupTable;->get(C)Z

    move-result v0

    return v0
.end method

.method public precomputed()Lcom/kingsoft/mail/lib/base/CharMatcher;
    .locals 0

    .prologue
    .line 670
    return-object p0
.end method
