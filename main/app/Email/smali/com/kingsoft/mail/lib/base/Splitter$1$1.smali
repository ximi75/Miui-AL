.class Lcom/kingsoft/mail/lib/base/Splitter$1$1;
.super Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/lib/base/Splitter$1;->iterator(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/lib/base/Splitter$1;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/lib/base/Splitter$1;Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Lcom/kingsoft/mail/lib/base/Splitter;
    .param p3, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/Splitter$1$1;->this$0:Lcom/kingsoft/mail/lib/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Lcom/kingsoft/mail/lib/base/Splitter$SplittingIterator;-><init>(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method separatorEnd(I)I
    .locals 1
    .param p1, "separatorPosition"    # I

    .prologue
    .line 144
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method separatorStart(I)I
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/Splitter$1$1;->this$0:Lcom/kingsoft/mail/lib/base/Splitter$1;

    iget-object v0, v0, Lcom/kingsoft/mail/lib/base/Splitter$1;->val$separatorMatcher:Lcom/kingsoft/mail/lib/base/CharMatcher;

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/kingsoft/mail/lib/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
