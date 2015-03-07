.class Lcom/kingsoft/mail/lib/base/Splitter$5;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingsoft/mail/lib/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingsoft/mail/lib/base/Splitter;

.field final synthetic val$sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/kingsoft/mail/lib/base/Splitter$5;->this$0:Lcom/kingsoft/mail/lib/base/Splitter;

    iput-object p2, p0, Lcom/kingsoft/mail/lib/base/Splitter$5;->val$sequence:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/kingsoft/mail/lib/base/Splitter$5;->this$0:Lcom/kingsoft/mail/lib/base/Splitter;

    # getter for: Lcom/kingsoft/mail/lib/base/Splitter;->strategy:Lcom/kingsoft/mail/lib/base/Splitter$Strategy;
    invoke-static {v0}, Lcom/kingsoft/mail/lib/base/Splitter;->access$000(Lcom/kingsoft/mail/lib/base/Splitter;)Lcom/kingsoft/mail/lib/base/Splitter$Strategy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingsoft/mail/lib/base/Splitter$5;->this$0:Lcom/kingsoft/mail/lib/base/Splitter;

    iget-object v2, p0, Lcom/kingsoft/mail/lib/base/Splitter$5;->val$sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Lcom/kingsoft/mail/lib/base/Splitter$Strategy;->iterator(Lcom/kingsoft/mail/lib/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
