.class abstract Lcom/google/android/mail/common/base/Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 412
    .local p0, "this":Lcom/google/android/mail/common/base/Splitter$AbstractIterator;, "Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mail/common/base/Splitter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/mail/common/base/Splitter$1;

    .prologue
    .line 412
    .local p0, "this":Lcom/google/android/mail/common/base/Splitter$AbstractIterator;, "Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/google/android/mail/common/base/Splitter$AbstractIterator;, "Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/android/mail/common/base/Splitter$AbstractIterator;, "Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    sget-object v3, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/Preconditions;->checkState(Z)V

    .line 431
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$6;->$SwitchMap$com$google$android$mail$common$base$Splitter$AbstractIterator$State:[I

    iget-object v3, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 438
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->tryToComputeNext()Z

    move-result v2

    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    .line 430
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 435
    goto :goto_1

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lcom/google/android/mail/common/base/Splitter$AbstractIterator;, "Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 456
    :cond_0
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 457
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 462
    .local p0, "this":Lcom/google/android/mail/common/base/Splitter$AbstractIterator;, "Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method tryToComputeNext()Z
    .locals 2

    .prologue
    .line 442
    .local p0, "this":Lcom/google/android/mail/common/base/Splitter$AbstractIterator;, "Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 443
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 445
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->READY:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 446
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
