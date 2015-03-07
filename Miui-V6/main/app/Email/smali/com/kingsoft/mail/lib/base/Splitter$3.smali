.class final Lcom/kingsoft/mail/lib/base/Splitter$3;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/kingsoft/mail/lib/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/lib/base/Splitter;->on(Ljava/util/regex/Pattern;)Lcom/kingsoft/mail/lib/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/Splitter$3;->val$separatorPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;
    .locals 2
    .param p1, "splitter"    # Lcom/kingsoft/mail/lib/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/Splitter$3;->val$separatorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 214
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Lcom/kingsoft/mail/lib/base/Splitter$3$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/kingsoft/mail/lib/base/Splitter$3$1;-><init>(Lcom/kingsoft/mail/lib/base/Splitter$3;Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V

    return-object v1
.end method

.method public bridge synthetic iterator(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lcom/kingsoft/mail/lib/base/Splitter;
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/kingsoft/mail/lib/base/Splitter$3;->iterator(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
