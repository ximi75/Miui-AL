.class Lcom/google/android/mail/common/base/Splitter$5;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/mail/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
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
.field final synthetic this$0:Lcom/google/android/mail/common/base/Splitter;

.field final synthetic val$sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/mail/common/base/Splitter$5;->this$0:Lcom/google/android/mail/common/base/Splitter;

    iput-object p2, p0, Lcom/google/android/mail/common/base/Splitter$5;->val$sequence:Ljava/lang/CharSequence;

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
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$5;->this$0:Lcom/google/android/mail/common/base/Splitter;

    # getter for: Lcom/google/android/mail/common/base/Splitter;->strategy:Lcom/google/android/mail/common/base/Splitter$Strategy;
    invoke-static {v0}, Lcom/google/android/mail/common/base/Splitter;->access$000(Lcom/google/android/mail/common/base/Splitter;)Lcom/google/android/mail/common/base/Splitter$Strategy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mail/common/base/Splitter$5;->this$0:Lcom/google/android/mail/common/base/Splitter;

    iget-object v2, p0, Lcom/google/android/mail/common/base/Splitter$5;->val$sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Lcom/google/android/mail/common/base/Splitter$Strategy;->iterator(Lcom/google/android/mail/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method